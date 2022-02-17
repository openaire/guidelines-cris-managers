<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:skosxl="http://www.w3.org/2008/05/skos-xl#" xmlns:cf="urn:xmlns:org.eurocris.cerif"
	xmlns:dc="http://purl.org/dc/terms/" exclude-result-prefixes="skosxl">
	<!-- This stylesheet takes an RDF+XML file as input and outputs a XML Schema with an enumeration and an XML element in it -->

	<xsl:output method="xml" indent="yes" />
	
	<xsl:param name="tagType" select="'Type'" />
	<xsl:param name="startEndDates" select="false()" />
	<xsl:param name="debug" select="false()" />

	<xsl:key name="subject" match="//*[@rdf:about]/*" use="parent::*/@rdf:about" />
	<xsl:key name="object-property" match="//*[@rdf:resource]" use="concat( @rdf:resource, '###', namespace-uri(), local-name() )" />
	<xsl:key name="class" match="//*" use="concat( namespace-uri(), local-name() )" />
	
	<xsl:variable name="root" select="/" />

	<xsl:function name="skos:object-property">
		<xsl:param name="object" />
		<xsl:param name="property" />
		<xsl:sequence select="key( 'object-property', concat( $object, '###', $property ), $root )/parent::*/@rdf:about" />
		<xsl:if test="$property = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'">
			<xsl:sequence select="key( 'class', $object, $root )/@rdf:about" />
		</xsl:if>
	</xsl:function>

	<xsl:template match="/">
		<xsl:variable name="schemes" select="//skos:ConceptScheme" />
		<xsl:message>Found <xsl:value-of select="count($schemes)" /> concept schemes</xsl:message>
		<xsl:for-each select="$schemes">
			<xsl:variable name="conceptScheme" select="@rdf:about" />
			<xsl:message>Scheme <xsl:value-of select="$conceptScheme" /></xsl:message>
			<xs:schema xsi:schemaLocation="http://www.w3.org/2001/XMLSchema https://www.w3.org/2012/04/XMLSchema.xsd" targetNamespace="{$conceptScheme}">
				<xsl:namespace name="" select="$conceptScheme"/>

				<xsl:variable name="titles" select="dc:title"/>
				
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
							<xsl:for-each select="dc:description">
								<xsl:call-template name="cf:MLTag">
									<xsl:with-param name="tag">cf:Description</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
						</cf:ClassScheme>
					</xs:appinfo>
				</xs:annotation>

                <xs:include schemaLocation="../includes/cerif-commons.xsd"/>

				<xs:element name="{$tagType}">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="Enum">
								<xsl:if test="$startEndDates">
                                    <xs:attributeGroup ref="cfStartDateEndDate__AttributeGroup"/>
								</xsl:if>
                                <xs:attributeGroup ref="cfExtension__AttributeGroup"/>
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>

				<xs:simpleType name="Enum">
					<xs:restriction base="xs:string">
						<xsl:for-each select="skos:object-property( $conceptScheme, 'http://www.w3.org/2004/02/skos/core#inScheme' ) ">
							<xsl:variable name="concept" select="." />
							<xs:enumeration value="{$concept}">
								<xs:annotation>
									<xsl:for-each select="key( 'subject', $concept )/self::skos:prefLabel">
										<xsl:call-template name="xs_documentation"/>
									</xsl:for-each>
									<xs:appinfo>
										<cf:Class id="{$concept}" classSchemeId="{$conceptScheme}">
											<xsl:for-each select="key( 'subject', $concept )/self::skos:prefLabel">
												<xsl:call-template name="cf:MLTag">
													<xsl:with-param name="tag">cf:Term</xsl:with-param>
												</xsl:call-template>
											</xsl:for-each>
											<xsl:for-each select="key( 'subject', $concept )/self::skos:definition">
												<xsl:element name="cf:Definition">
													<xsl:copy-of select="@xml:lang" />
													<xsl:apply-templates mode="copy" />
												</xsl:element>
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
				<xsl:when test="@xml:lang != 'en'">
					<xsl:attribute name="trans">h</xsl:attribute>
				</xsl:when>
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