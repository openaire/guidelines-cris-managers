<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:skosxl="http://www.w3.org/2008/05/skos-xl#" xmlns:cf="urn:xmlns:org.eurocris.cerif" xmlns:dc-term="http://purl.org/dc/terms/">
	<!-- This stylesheet takes an RDF+XML file as input and outputs a XML Schema with an enumeration and an XML element in it -->

	<xsl:output method="xml" indent="yes" />
	
	<xsl:param name="tagType" select="'Type'" />
	<xsl:param name="startEndDates" select="false()" />
	<xsl:param name="debug" select="false()" />

	<xsl:key name="subject" match="//rdf:Description/*" use="parent::rdf:Description/@rdf:about" />
	<xsl:key name="object-property" match="//rdf:Description/*" use="concat( @rdf:resource, '###', namespace-uri(), local-name() )" />

	<xsl:variable name="root" select="/" />

	<xsl:function name="skos:object-property">
		<xsl:param name="object" />
		<xsl:param name="property" />
		<xsl:sequence select="key( 'object-property', concat( $object, '###', $property ), $root )/parent::rdf:Description/@rdf:about" />
	</xsl:function>

	<xsl:template match="/">
		<xsl:variable name="schemes" select="skos:object-property( 'http://www.w3.org/2004/02/skos/core#ConceptScheme', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' )" />
		<xsl:message>Found <xsl:value-of select="count($schemes)" /> concept schemes</xsl:message>
		<xsl:for-each select="$schemes">
			<xsl:variable name="conceptScheme" select="." />
			<xsl:message>Scheme <xsl:value-of select="$conceptScheme" /></xsl:message>
			<xs:schema targetNamespace="{$conceptScheme}">
				<xsl:namespace name="" select="$conceptScheme"/>

				<xsl:variable name="titles" select="key( 'subject', $conceptScheme )/self::skos:prefLabel"/>
				
				<xs:annotation>
					<xsl:for-each select="$titles">
						<xsl:call-template name="xs_documentation"/>
					</xsl:for-each>
					<xs:appinfo>
						<cf:ClassScheme id="{$conceptScheme}">
							<xsl:for-each select="$titles">
								<xsl:call-template name="cf:MLTag">
									<xsl:with-param name="tag">cf:Name</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
							<xsl:for-each select="key( 'subject', $conceptScheme )/self::skos:prefLabel">
								<xsl:call-template name="cf:MLTag">
									<xsl:with-param name="tag">cf:Description</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
						</cf:ClassScheme>
					</xs:appinfo>
				</xs:annotation>

				<xs:element name="{$tagType}">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="Enum">
								<xsl:if test="$startEndDates">
									<xs:attribute name="startDate" type="cfGenericDate__SimpleType" use="optional" />
									<xs:attribute name="endDate" type="cfGenericDate__SimpleType" use="optional" />
								</xsl:if>
								<xs:anyAttribute namespace="##other" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>

				<xsl:if test="$startEndDates">
					<xs:simpleType name="cfGenericDate__SimpleType">
						<xs:annotation>
							<xs:documentation>A time instant in any precision supported by the Primitive Data Types of the XML Schema specification.</xs:documentation>
						</xs:annotation>
						<xs:union memberTypes="xs:gYear xs:gYearMonth xs:date xs:dateTime" />
					</xs:simpleType>
				</xsl:if>				
				
				<xs:simpleType name="Enum">
					<xs:restriction base="xs:string">
						<xsl:for-each select="skos:object-property( $conceptScheme, 'http://www.w3.org/2004/02/skos/core#inScheme' ) ">
							<xsl:variable name="concept" select="." />
							<xs:enumeration value="{$concept}">
								<xs:annotation>
									<xsl:for-each select="key( 'subject', $concept )/self::skosxl:prefLabel/@rdf:resource">
										<xsl:variable name="prefLabelUri" select="."/>
										<xsl:for-each select="key( 'subject', $prefLabelUri )/self::skosxl:literalForm">
											<xsl:call-template name="xs_documentation"/>
										</xsl:for-each>
									</xsl:for-each>
									<xs:appinfo>
										<cf:Class id="{$concept}" classSchemeId="{$conceptScheme}">
											<xsl:for-each select="key( 'subject', $concept )/self::skosxl:prefLabel/@rdf:resource">
												<xsl:variable name="prefLabelUri" select="."/>
												<xsl:for-each select="key( 'subject', $prefLabelUri )/self::skosxl:literalForm">
													<xsl:call-template name="cf:MLTag">
														<xsl:with-param name="tag">cf:Term</xsl:with-param>
													</xsl:call-template>
												</xsl:for-each>
											</xsl:for-each>
											<xsl:for-each select="key( 'subject', $concept )/self::skos:definition/@rdf:resource">
												<xsl:variable name="definitionUri" select="."/>
												<xsl:for-each select="key( 'subject', $definitionUri )/self::rdf:value">
													<xsl:element name="cf:Definition">
														<xsl:copy-of select="@xml:lang" />
														<xsl:apply-templates mode="copy" />
													</xsl:element>
												</xsl:for-each>
											</xsl:for-each>
											<xsl:for-each select="key( 'subject', $concept )/self::skos:broader/@rdf:resource">
												<xsl:variable name="broaderUri" select="."/>
												<cf:Broader>
													<cf:Class id="{$broaderUri}"/>
												</cf:Broader>
											</xsl:for-each>
										</cf:Class>
									</xs:appinfo>
									<xsl:if test="$debug">
										<xs:appinfo>
											<rdf:Description rdf:about="{$concept}">
												<xsl:copy-of select="key( 'subject', $concept )" copy-namespaces="no" />
											</rdf:Description>
											<xsl:for-each-group select="key( 'subject', $concept )/@rdf:resource" group-by="string(.)">
												<xsl:variable name="subterm" select="."/>
												<xsl:if test="not( $subterm = $conceptScheme or key( 'subject', $subterm )/self::skos:inScheme/@rdf:resource = $conceptScheme ) and key( 'subject', $subterm )">
													<rdf:Description rdf:about="{$subterm}">
														<xsl:copy-of select="key( 'subject', $subterm )" copy-namespaces="no"/>
													</rdf:Description>
												</xsl:if>
											</xsl:for-each-group>
										</xs:appinfo>
									</xsl:if>
								</xs:annotation>
							</xs:enumeration>
						</xsl:for-each>
					</xs:restriction>
				</xs:simpleType>
			</xs:schema>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="xs_documentation">
		<xsl:element name="xs:documentation">
			<xsl:copy-of select="@xml:lang" />
			<xsl:apply-templates mode="copy" />
		</xsl:element>
	</xsl:template>

	<xsl:template name="cf:MLTag">
		<xsl:param name="tag"/>
		<xsl:element name="{$tag}">
			<xsl:copy-of select="@xml:lang" />
			<xsl:choose>
				<xsl:when test="@xml:lang = 'en'">
					<xsl:attribute name="trans">o</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="trans">h</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates mode="copy" />
		</xsl:element>
	</xsl:template>



	<!-- standard copy template -->
	<xsl:template match="@*|node()" mode="copy">
		<xsl:copy>
			<xsl:apply-templates select="@*" mode="copy" />
			<xsl:apply-templates mode="copy" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>