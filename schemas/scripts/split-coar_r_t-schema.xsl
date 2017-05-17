<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:skosxl="http://www.w3.org/2008/05/skos-xl#" xmlns:cf="urn:xmlns:org.eurocris.cerif">
	<!-- This stylesheet takes the output of skos2xsd.xslt and separates it into three different class schemes in three different namespaces -->
	
	<xsl:output method="xml" indent="yes"/>

	<xsl:key name="uri2enum" match="//xs:enumeration" use="@value" />
	
	<xsl:template match="/*">
		<xsl:call-template name="produce-it">
			<xsl:with-param name="type">Publication</xsl:with-param>
			<xsl:with-param name="title">Publication types extracted from the COAR Resource Types concept scheme</xsl:with-param>
			<xsl:with-param name="descr">Types of publications as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'text' and its descendants in the hierarchy except 'patent').</xsl:with-param>
		</xsl:call-template>
		<xsl:call-template name="produce-it">
			<xsl:with-param name="type">Patent</xsl:with-param>
			<xsl:with-param name="title">Patent types extracted from the COAR Resource Types concept scheme</xsl:with-param>
			<xsl:with-param name="descr">Types of patents as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'patent' only).</xsl:with-param>
		</xsl:call-template>
		<xsl:call-template name="produce-it">
			<xsl:with-param name="type">Product</xsl:with-param>
			<xsl:with-param name="title">Product types extracted from the COAR Resource Types concept scheme</xsl:with-param>
			<xsl:with-param name="descr">Types of products as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, all types that do not descend from 'text').</xsl:with-param>
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="produce-it">
		<xsl:param name="type" as="xs:string"/>
		<xsl:param name="title" as="xs:string"/>
		<xsl:param name="descr" as="xs:string"/>
		<xsl:variable name="scheme-uri" select="concat( 'https://www.openaire.eu/cerif-profile/1.1/vocab/COAR_', $type, '_Types' )"/>
		<xsl:result-document href="coar_{lower-case($type)}_types.xsd">
			<xsl:element name="xs:schema">
				<xsl:attribute name="targetNamespace" select="$scheme-uri"/>
				<xsl:namespace name=""><xsl:value-of select="$scheme-uri"/></xsl:namespace>
				<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2001/XMLSchema https://www.w3.org/2012/04/XMLSchema.xsd</xsl:attribute>
				<xsl:namespace name="rdf">http://www.w3.org/1999/02/22-rdf-syntax-ns#</xsl:namespace>
		        <xsl:namespace name="skos">http://www.w3.org/2004/02/skos/core#</xsl:namespace>
		        <xsl:namespace name="skosxl">http://www.w3.org/2008/05/skos-xl#</xsl:namespace>
		        <xsl:namespace name="cf">urn:xmlns:org.eurocris.cerif</xsl:namespace>
				<xsl:namespace name="dc-term">http://purl.org/dc/terms/</xsl:namespace>
				<xsl:namespace name="vocbench">http://art.uniroma2.it/ontologies/vocbench#</xsl:namespace>
				
				<xs:annotation>
					<xs:documentation><xsl:value-of select="$title"/>: <xsl:value-of select="$descr"/></xs:documentation>
					<xs:appinfo>
						<cf:ClassScheme id="{$scheme-uri}">
							<cf:Term xmlns="en"><xsl:value-of select="$title"/></cf:Term>
							<cf:Description xmlns="en"><xsl:value-of select="$descr"/></cf:Description>
						</cf:ClassScheme>
					</xs:appinfo>
				</xs:annotation>
				<xsl:choose>
					<xsl:when test="$type = 'Publication'">
						<xsl:apply-templates mode="publication">
							<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
						</xsl:apply-templates>
					</xsl:when>
					<xsl:when test="$type = 'Patent'">
						<xsl:apply-templates mode="patent">
							<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
						</xsl:apply-templates>
					</xsl:when>
					<xsl:when test="$type = 'Product'">
						<xsl:apply-templates mode="product">
							<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
						</xsl:apply-templates>
					</xsl:when>
				</xsl:choose>

			</xsl:element>
		</xsl:result-document>
	</xsl:template>	

	<xsl:template match="xs:enumeration[ skos:reaches( ., 'http://purl.org/coar/resource_type/c_15cd' ) ]" mode="patent">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:apply-templates select="." mode="copy">
			<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
		</xsl:apply-templates>
	</xsl:template>

	<xsl:template match="xs:enumeration[ skos:reaches( ., 'http://purl.org/coar/resource_type/c_18cf' ) and not( skos:reaches( ., 'http://purl.org/coar/resource_type/c_15cd' ) ) ]" mode="publication">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:apply-templates select="." mode="copy">
			<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
		</xsl:apply-templates>
	</xsl:template>

	<xsl:template match="xs:enumeration[ not( skos:reaches( ., 'http://purl.org/coar/resource_type/c_18cf' ) ) ]" mode="product">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:apply-templates select="." mode="copy">
			<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
		</xsl:apply-templates>
	</xsl:template>

	<xsl:template match="xs:enumeration | xs:restriction/text()" mode="publication patent product">
		<xsl:param name="scheme-uri" as="xs:string"/>
	</xsl:template>
	
	<xsl:template match="xs:appinfo[2] | xs:annotation/text()" mode="#all">
		<xsl:param name="scheme-uri" as="xs:string"/>
	</xsl:template>

	<xsl:template match="xs:annotation[parent::xs:schema]" mode="#all"/>
	
	<xsl:variable name="root" select="/*"/>
	
	<xsl:function name="skos:reaches" as="xs:boolean">
		<xsl:param name="here"/>
		<xsl:param name="uri"/>
		<xsl:choose>
			<xsl:when test="$here/@value = $uri"><xsl:value-of select="true()"/></xsl:when>
			<xsl:when test="$here/xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class"><xsl:value-of select="skos:reaches( key( 'uri2enum', $here/xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class/@id, $root ), $uri )"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="false()"/></xsl:otherwise>
		</xsl:choose>
	</xsl:function>
		
	<!-- standard copy template -->
	<xsl:template match="@*|node()" mode="#all">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:copy copy-namespaces="no">
			<xsl:apply-templates select="@*" mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
			<xsl:apply-templates mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="vocbench:*" xmlns:vocbench="http://art.uniroma2.it/ontologies/vocbench#" mode="#all">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:element name="vocbench:{local-name()}">
			<xsl:apply-templates select="@*" mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
			<xsl:apply-templates mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="cf:Class" mode="#all">
		<xsl:param name="scheme-uri" as="xs:string"/>
		<xsl:copy copy-namespaces="no">
			<xsl:apply-templates select="@*" mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
			<xsl:attribute name="classSchemeId" select="$scheme-uri"/>
			<xsl:apply-templates mode="#current">
				<xsl:with-param name="scheme-uri" select="$scheme-uri"/>
			</xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
	
</xsl:stylesheet>