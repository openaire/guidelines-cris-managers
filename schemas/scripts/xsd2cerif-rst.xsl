<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cflink="http://eurocris.org/cerif/annotations#" xmlns:cfprocess="http://eurocris.org/cerif/preprocessing#" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:my="http://my.xmlns.org" xmlns:cf="urn:xmlns:org.eurocris.cerif">

	<xsl:output method="text" encoding="UTF-8"/>
	
	<xsl:template match="xs:schema">
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Publication'"/>
			<xsl:with-param name="filename" select="'cerif_xml_publication_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Product'"/>
			<xsl:with-param name="filename" select="'cerif_xml_product_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Patent'"/>
			<xsl:with-param name="filename" select="'cerif_xml_patent_entity.rst'"/>
		</xsl:call-template>

		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Person'"/>
			<xsl:with-param name="filename" select="'cerif_xml_person_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'OrgUnit'"/>
			<xsl:with-param name="filename" select="'cerif_xml_organisation_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Project'"/>
			<xsl:with-param name="filename" select="'cerif_xml_project_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Funding'"/>
			<xsl:with-param name="filename" select="'cerif_xml_funding_entity.rst'"/>
		</xsl:call-template>

		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Service'"/>
			<xsl:with-param name="filename" select="'cerif_xml_service_entity.rst'"/>
		</xsl:call-template>
		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Equipment'"/>
			<xsl:with-param name="filename" select="'cerif_xml_equipment_entity.rst'"/>
		</xsl:call-template>

		<xsl:call-template name="document-entity">
			<xsl:with-param name="elName" select="'Event'"/>
			<xsl:with-param name="filename" select="'cerif_xml_event_entity.rst'"/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="document-entity">
		<xsl:param name="elName"/>
		<xsl:param name="filename"/>
		<xsl:result-document href="docs/{$filename}">
			<xsl:for-each select="/xs:schema/xs:element[ @name = $elName ]">
				<xsl:text>.. _c:</xsl:text><xsl:value-of select="lower-case( @name )"/><xsl:text>

</xsl:text>
				<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
				<xsl:value-of select="my:repeat( '=', string-length(@name) )"/><xsl:text>
</xsl:text>
<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
<xsl:text>:Examples: openaire_cerif_xml_example_publications.xml *TODO*
</xsl:text>
<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
<xsl:text>:CERIF: the </xsl:text>*TODO*<xsl:text> entity (``</xsl:text><xsl:value-of select="@cflink:entity"/><xsl:text>``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the </xsl:text>*TODO*<xsl:text> Identifier attribute (``</xsl:text><xsl:value-of select="concat( @cflink:entity, '.', @cflink:entity, 'Id' )"/><xsl:text>``)

</xsl:text>

				<xsl:apply-templates select="xs:complexType/xs:complexContent/xs:extension/xs:sequence/*">
					<xsl:with-param name="entityEl" select="."/>
				</xsl:apply-templates>
				<xsl:text>

</xsl:text>
			</xsl:for-each>
		</xsl:result-document>
	</xsl:template>
	
	<xsl:template match="xs:element[ @name and @cflink:attribute ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the </xsl:text>*TODO*<xsl:text> attribute (``</xsl:text><xsl:value-of select="@cflink:attribute"/><xsl:text>``)

</xsl:text>
	</xsl:template>

	<xsl:key name="import-by-namespace" match="/xs:schema/xs:import" use="@namespace"/>

	<xsl:template match="xs:element[ @ref ]">
		<xsl:param name="entityEl"/>
		<xsl:variable name="qName" select="resolve-QName( @ref, . )"/>
		<xsl:variable name="localName" select="local-name-from-QName( $qName )"/>
		<xsl:variable name="ns" select="namespace-uri-from-QName( $qName )"/>
		<xsl:variable name="sch1" select="document( key( 'import-by-namespace', $ns )/@schemaLocation )/xs:schema"/>
		<xsl:value-of select="@ref"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@ref) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="$localName"/><xsl:text>`` from namespace ``</xsl:text><xsl:value-of select="$ns"/><xsl:text>``
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:apply-templates select="xs:annotation/xs:documentation"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the </xsl:text>*TODO*<xsl:text> classification (``</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/><xsl:text>_Class``)
</xsl:text>
		<xsl:text>:Vocabulary: </xsl:text><xsl:value-of select="normalize-space( $sch1/xs:annotation/xs:documentation )"/><xsl:text>

</xsl:text>

		<xsl:apply-templates select="$sch1/xs:simpleType/xs:restriction/xs:enumeration[ not( xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class/@id ) ]">
			<xsl:with-param name="enumNodes" select="$sch1/xs:simpleType/xs:restriction/xs:enumeration"/>
			<xsl:with-param name="indent" select="'  '"/>
		</xsl:apply-templates>
		<xsl:text>

</xsl:text>
	</xsl:template>

	<xsl:template match="xs:enumeration">
		<xsl:param name="enumNodes"/>
		<xsl:param name="indent"/>
		<xsl:variable name="thisValue" select="@value"/>
		<xsl:value-of select="$indent"/>
		<xsl:text>* **</xsl:text>
		<xsl:value-of select="normalize-space( xs:annotation/xs:documentation[@xml:lang='en'] )"/>
		<xsl:text>** (`&lt;</xsl:text>
		<xsl:value-of select="$thisValue"/>
		<xsl:text>&gt;`_): </xsl:text>
		<xsl:value-of select="normalize-space( xs:annotation/xs:appinfo/cf:Class/cf:Definition[@xml:lang='en'] )"/>
		<xsl:text>
</xsl:text>
		<xsl:variable name="children" select="$enumNodes[ xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class/@id = $thisValue ]"/>
		<xsl:if test="$children">
		<xsl:text>
</xsl:text>
		</xsl:if>
		<xsl:apply-templates select="$children">
			<xsl:with-param name="enumNodes" select="$enumNodes"/>
			<xsl:with-param name="indent" select="concat( $indent, '  ' )"/>
		</xsl:apply-templates>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:link ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>`` with embedded XML element</xsl:text>
		<xsl:apply-templates select="xs:complexType/xs:complexContent/xs:extension/(xs:sequence|xs:choice)/xs:element" mode="name-verbatim"/>
		<xsl:text>
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the </xsl:text>*TODO*<xsl:text> linking entity (``</xsl:text><xsl:value-of select="@cflink:link"/><xsl:text>``)

</xsl:text>
	</xsl:template>

	<xsl:template match="xs:element[ @name and ( @cflink:container or @cflink:unorderedContainer ) ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>`` with embedded XML elements</xsl:text>
		<xsl:apply-templates select="xs:complexType/xs:sequence/xs:element" mode="link"/>
		<xsl:text>
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: </xsl:text>*TODO*<xsl:text>

</xsl:text>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:identifier ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the Federated Identifier entity (``cfFedId``)

</xsl:text>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:entity='cfEAddr' ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the Electronic Address entity (``cfEAddr``) and the corresponding link (``</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/>_EAddr<xsl:text>``)

</xsl:text>
	</xsl:template>

	<xsl:template match="xs:element[ @name='PersonName' and @type='cfPersName__Type' ]">
		<xsl:param name="entityEl"/>
		<xsl:value-of select="@name"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( '^', string-length(@name) )"/><xsl:text>
</xsl:text>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>`` containing</xsl:text>
		<xsl:apply-templates select="$entityEl/../xs:complexType[@name='cfPersName__Type']/xs:complexContent/xs:extension/xs:sequence/xs:element" mode="name-list"/><xsl:text>
</xsl:text>
		<xsl:text>:Description: </xsl:text><xsl:value-of select="normalize-space( xs:annotation/xs:documentation )"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the Electronic Address entity (``cfEAddr``) and the corresponding link (``</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/>_EAddr<xsl:text>``)

</xsl:text>
	</xsl:template>


	<xsl:template match="xs:element" mode="link">
		<xsl:if test="preceding-sibling::xs:element">
			<xsl:text> or</xsl:text>
		</xsl:if>
		<xsl:text> ``</xsl:text>
		<xsl:value-of select="@ref"/>
		<xsl:value-of select=".[not( @ref )]/@name"/>
		<xsl:text>``</xsl:text>
		<xsl:choose>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonWithAffiliationsOrOrgUnit__Type'">
				<xsl:text> that can contain an embedded person with affiliations or organisation unit structure</xsl:text>
			</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonOrOrgUnit__Type'">
				<xsl:text> that can contain an embedded person or organisation unit structure</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="xs:element" mode="name-verbatim">
		<xsl:if test="preceding-sibling::xs:element">
			<xsl:text> or</xsl:text>
		</xsl:if>
		<xsl:text> ``</xsl:text>
		<xsl:value-of select="@ref"/>
		<xsl:value-of select=".[not( @ref )]/@name"/>
		<xsl:text>``</xsl:text>
	</xsl:template>

	<xsl:template match="xs:element" mode="name-list">
		<xsl:if test="preceding-sibling::xs:element and following-sibling::xs:element">
			<xsl:text>, </xsl:text>
		</xsl:if>
		<xsl:if test="preceding-sibling::xs:element and not( following-sibling::xs:element )">
			<xsl:text> and </xsl:text>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="not(@minOccurs) or @minOccurs=1">mandatory</xsl:when>
			<xsl:when test="@minOccurs=0">optional</xsl:when>
		</xsl:choose>
		<xsl:text> ``</xsl:text>
		<xsl:value-of select="@ref"/>
		<xsl:value-of select=".[not( @ref )]/@name"/>
		<xsl:text>``</xsl:text>
	</xsl:template>

	<xsl:function name="my:repeat">
		<xsl:param name="str"/>
		<xsl:param name="cnt"/>
		<xsl:if test="$cnt &gt; 0">
			<xsl:value-of select="$str"/>
			<xsl:value-of select="my:repeat( $str, $cnt - 1 )"/>
		</xsl:if>
	</xsl:function>

</xsl:stylesheet>