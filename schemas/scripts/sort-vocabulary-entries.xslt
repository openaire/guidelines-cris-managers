<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cf="urn:xmlns:org.eurocris.cerif">
	<!-- This stylesheet takes the XSD enumeration and sorts it on the URIs of the classes.
	  It also sorts the labels: English first, then the other languages ordered by xml:lang  -->
	
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="xs:restriction[parent::xs:simpleType[@name='Enum']]">
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates select="xs:enumeration">
				<xsl:sort select="@value"/>
			</xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="xs:annotation[parent::xs:enumeration]">
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates select="xs:documentation[@xml:lang='en']"/>
			<xsl:apply-templates select="xs:documentation[@xml:lang!='en']">
				<xsl:sort select="@xml:lang"/>
			</xsl:apply-templates>
			<xsl:apply-templates select="xs:appinfo"/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="cf:Class[parent::xs:appinfo]">
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates select="cf:Term[@xml:lang='en']"/>
			<xsl:apply-templates select="cf:Term[@xml:lang!='en']">
				<xsl:sort select="@xml:lang"/>
			</xsl:apply-templates>
			<xsl:apply-templates select="cf:Definition[@xml:lang='en']"/>
			<xsl:apply-templates select="cf:Definition[@xml:lang!='en']">
				<xsl:sort select="@xml:lang"/>
			</xsl:apply-templates>
			<xsl:apply-templates select="*[local-name() != 'Term' and local-name() != 'Definition']"/>
		</xsl:copy>
	</xsl:template>
	
</xsl:stylesheet>