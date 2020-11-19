<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cflink="https://w3id.org/cerif/annotations#"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:my="http://my.xmlns.org" xmlns:cf="urn:xmlns:org.eurocris.cerif">

	<xsl:output method="text" encoding="UTF-8"/>
	
	<xsl:key name="import-by-namespace" match="/xs:schema/xs:import" use="@namespace"/>
	
	<xsl:function name="cf:schema-named-contents">
		<xsl:param name="schema-node"/>
		<xsl:sequence select="( for $i in $schema-node/xs:include return cf:schema-named-contents( document( $i/@schemaLocation )/xs:schema ) ) 
		                      | $schema-node/xs:*[ @name and local-name() != 'xs:annotation' ]"/>
	</xsl:function>
	<xsl:variable name="builtin-type-components">
		<xs:simpleType name="xs:gYear">
			<xs:annotation>
				<xs:documentation>year (``YYYY``) with optional time zone indication</xs:documentation>
			</xs:annotation>
		</xs:simpleType>
		<xs:simpleType name="xs:gYearMonth">
			<xs:annotation>
				<xs:documentation>year and month (``YYYY-MM``) with optional time zone indication</xs:documentation>
			</xs:annotation>
		</xs:simpleType>
		<xs:simpleType name="xs:date">
			<xs:annotation>
				<xs:documentation>full date (``YYYY-MM-DD``) with optional time zone indication</xs:documentation>
			</xs:annotation>
		</xs:simpleType>
		<xs:simpleType name="xs:dateTime">
			<xs:annotation>
				<xs:documentation>date and time (``YYYY-MM-DD'T'hh:mm:ss(.SSS)``) with optional time zone indication</xs:documentation>
			</xs:annotation>
		</xs:simpleType>
	</xsl:variable>
	<xsl:variable name="all-named-schema-components" select="cf:schema-named-contents( /xs:schema ) | $builtin-type-components/*"/>
	<xsl:key name="schema-components-by-name" match="$all-named-schema-components" use="string( @name )" />
	
	<xsl:template match="xs:schema">
		<xsl:message>Schema contents is:</xsl:message>
		<xsl:for-each select="distinct-values( $all-named-schema-components/local-name() )">
			<xsl:variable name="type" select="string(.)"/>
			<xsl:variable name="components" select="$all-named-schema-components[ local-name() = $type ]"/>
			<xsl:message><xsl:text> </xsl:text><xsl:value-of select="count( $components )"/><xsl:text> global </xsl:text><xsl:value-of select="$type"/><xsl:text>s: </xsl:text><xsl:value-of select="$components/@name"/></xsl:message>
		</xsl:for-each>
	
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
				<xsl:text>.. _</xsl:text><xsl:value-of select="lower-case( @name )"/>:<xsl:text>

</xsl:text>
			<xsl:apply-templates mode="make-title" select="@name"/>
			<xsl:call-template name="make-description"/>
			<xsl:variable name="example-uri" select="concat( 'openaire_cerif_xml_example_', lower-case( $elName ), 's.xml' )"/>
			<xsl:if test="doc-available( concat( '../../samples/', $example-uri ) )">
<xsl:text>:Examples: `</xsl:text><xsl:value-of select="$example-uri"/><xsl:text> &lt;</xsl:text><xsl:value-of select="concat( 'https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/', $example-uri )"/><xsl:text>&gt;`_
</xsl:text>
			</xsl:if>
			<xsl:if test="$elName = 'Service'">
<xsl:text>:Examples: `sample Identify response &lt;https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_oaipmh_example_Identify.xml&gt;`_
</xsl:text>
			</xsl:if>
<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``; the rest of this section documents children of this element
</xsl:text>
<xsl:text>:CERIF: the </xsl:text><xsl:value-of select="substring-after( @cflink:entity, 'https://w3id.org/cerif/model#' )"/><xsl:text> entity (`&lt;</xsl:text><xsl:value-of select="@cflink:entity"/><xsl:text>&gt;`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the </xsl:text><xsl:value-of select="substring-after( @cflink:entity, 'https://w3id.org/cerif/model#' )"/><xsl:text>Identifier attribute (`&lt;</xsl:text><xsl:value-of select="concat( @cflink:entity, '.', substring-after( @cflink:entity, 'https://w3id.org/cerif/model#' ), 'Identifier' )"/><xsl:text>&gt;`_)

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
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``</xsl:text><xsl:if test="@type='cfMLangString__Type'"><xsl:text> as a multilingual string</xsl:text></xsl:if><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the </xsl:text><xsl:value-of select="substring-after( @cflink:attribute, 'https://w3id.org/cerif/model#' )"/><xsl:text> attribute (`&lt;</xsl:text><xsl:value-of select="@cflink:attribute"/><xsl:text>&gt;`_)
</xsl:text>
		<xsl:if test="descendant::xs:restriction">
			<xsl:text>:Vocabulary: </xsl:text><xsl:value-of select="normalize-space( xs:simpleType/xs:annotation/xs:documentation )"/><xsl:text>

</xsl:text>
			<xsl:apply-templates select="xs:simpleType/xs:restriction/xs:enumeration">
				<xsl:with-param name="enum-nodes" select="xs:simpleType/xs:restriction/xs:enumeration"/>
				<xsl:with-param name="indent" select="'  '"/>
			</xsl:apply-templates>
		</xsl:if>
		<xsl:call-template name="format2Rst"/>
		<xsl:call-template name="make-footnotes"/>
	</xsl:template>

	<xsl:template match="xs:element[ @ref ]">
		<xsl:param name="entityEl"/>
		<xsl:variable name="qName" select="resolve-QName( @ref, . )"/>
		<xsl:variable name="localName" select="local-name-from-QName( $qName )"/>
		<xsl:variable name="ns" select="namespace-uri-from-QName( $qName )"/>
		<xsl:variable name="sch1" select="document( key( 'import-by-namespace', $ns )/@schemaLocation )/xs:schema"/>
		<xsl:apply-templates mode="make-title" select="@ref"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="$localName"/><xsl:text>`` from namespace `&lt;</xsl:text><xsl:value-of select="$ns"/><xsl:text>&gt;`_
</xsl:text>
		<xsl:text>:CERIF: the </xsl:text><xsl:value-of select="substring-after( $entityEl/@cflink:entity, 'https://w3id.org/cerif/model#' )"/><xsl:text>_Classification (`&lt;</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/><xsl:text>_Classification&gt;`_)
</xsl:text>
		<xsl:text>:Vocabulary: </xsl:text><xsl:value-of select="normalize-space( $sch1/xs:annotation/xs:documentation )"/><xsl:text>

</xsl:text>

		<xsl:apply-templates select="$sch1/xs:simpleType/xs:restriction/xs:enumeration[ not( xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class/@id ) ]">
			<xsl:with-param name="enumNodes" select="$sch1/xs:simpleType/xs:restriction/xs:enumeration"/>
			<xsl:with-param name="indent" select="'  '"/>
		</xsl:apply-templates>
		<xsl:call-template name="make-footnotes"/>
	</xsl:template>

	<xsl:template match="xs:enumeration">
		<xsl:param name="enumNodes" as="element(xs:enumeration)*"/>
		<xsl:param name="indent" as="xs:string"/>
		<xsl:variable name="thisValue" select="@value" as="xs:string"/>
		<xsl:value-of select="$indent"/>
		<xsl:text>* **</xsl:text>
		<xsl:value-of select="normalize-space( xs:annotation/xs:documentation[ancestor-or-self::*/@xml:lang[1]='en'] )"/>
		<xsl:text>** (</xsl:text>
		<xsl:value-of select="cf:formatUrl( $thisValue )"/>
		<xsl:text>): </xsl:text>
		<xsl:value-of select="normalize-space( xs:annotation/xs:appinfo/cf:Class/cf:Definition[ancestor-or-self::*/@xml:lang[1]='en'] )"/>
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

	<xsl:function name="cf:formatUrl">
		<xsl:param name="values" as="xs:string+"/>
		<xsl:for-each select="$values">
			<xsl:if test="position() &gt; 1">
				<xsl:text> </xsl:text>
			</xsl:if>
			<xsl:choose>
				<xsl:when test="starts-with( ., 'http:' ) or starts-with( ., 'https:' ) or starts-with( ., 'urn:' )">
					<xsl:text>`&lt;</xsl:text>
					<xsl:value-of select="."/>
					<xsl:text>&gt;`_</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>``</xsl:text>
					<xsl:value-of select="."/>
					<xsl:text>``</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:function>

	<xsl:template match="xs:group[ @ref ]" mode="#all">
		<xsl:param name="entityEl"/>
		<xsl:for-each select="key( 'schema-components-by-name', string( @ref ) )">
			<xsl:apply-templates select="xs:sequence/*" mode="#current">
 				<xsl:with-param name="entityEl" select="$entityEl"/> 
			</xsl:apply-templates>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="xs:element[ @name and @cflink:link ]">
		<xsl:param name="entityEl"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``</xsl:text>
		<xsl:choose>
			<xsl:when test="@type = 'cfGenericURIClassification__Type'"> containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier</xsl:when>
            <xsl:when test="@type = 'cfGenericStringClassification__Type'"> containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonWithAffiliationsOrOrgUnit__Type'"> with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements, or ``OrgUnit``. A ``DisplayName`` may be specified, too.</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonWithAffiliations__Type'"> with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements. A ``DisplayName`` may be specified, too.</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonOrOrgUnit__Type'"> with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToOrgUnit__Type'"> with embedded XML element ``OrgUnit``. A ``DisplayName`` may be specified, too.</xsl:when>
            <xsl:when test="@type = 'cfString__Type'"/>
            <xsl:when test="not( @type )">
				<xsl:variable name="s1">
					<xsl:apply-templates select="xs:complexType/xs:complexContent/xs:extension/(xs:sequence|xs:choice)/xs:element" mode="name-verbatim"/>
				</xsl:variable>
				<xsl:value-of select="concat( ' with embedded XML element', substring-after( $s1, ' or' ) )"/>
            </xsl:when>
			<xsl:otherwise> *TODO*</xsl:otherwise>
		</xsl:choose>
		<xsl:text>
</xsl:text>
		<xsl:text>:CERIF: </xsl:text>
		<xsl:choose>
			<xsl:when test="@type = 'cfGenericURIClassification__Type'">the <xsl:value-of select="substring-after( $entityEl/@cflink:entity, 'https://w3id.org/cerif/model#' )"/>_Classification (`&lt;<xsl:value-of select="$entityEl/@cflink:entity"/>_Classification&gt;`_)</xsl:when>
            <xsl:when test="@type = 'cfGenericStringClassification__Type'">the <xsl:value-of select="substring-after( $entityEl/@cflink:entity, 'https://w3id.org/cerif/model#' )"/>_Classification (`&lt;<xsl:value-of select="$entityEl/@cflink:entity"/>_Classification&gt;`_)</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="process-link-annotation">
					<xsl:with-param name="link-annotation" select="@cflink:link"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="format2Rst"/>
		<xsl:call-template name="make-footnotes"/>
	</xsl:template>
	
	<xsl:template match="xs:element[ @name != 'Classification' and @name != 'Link' ]" priority="0.1">
		<xsl:param name="entityEl"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``</xsl:text>
        <xsl:if test="descendant::xs:element"><xsl:text> with </xsl:text><xsl:value-of select="@cflink:container"/><xsl:text> embedded XML elements</xsl:text></xsl:if>
		<xsl:apply-templates select="xs:complexType/xs:sequence/xs:element" mode="link"/>
		<xsl:text>
</xsl:text>
		<xsl:call-template name="make-footnotes"/>
		<xsl:apply-templates select="xs:complexType/xs:sequence/xs:element"/>
        <xsl:apply-templates select="xs:complexType/xs:attribute"/>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:identifier ]" priority="0.6">
		<xsl:param name="entityEl"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``</xsl:text>
		<xsl:if test="@type = 'cfGenericIdentifier__Type'">
			<xsl:text> with mandatory ``type`` attribute</xsl:text>
		</xsl:if>
		<xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the FederatedIdentifier entity (`&lt;https://w3id.org/cerif/model#FederatedIdentifier&gt;`_)
</xsl:text>
		<xsl:call-template name="format2Rst"/>
		<xsl:call-template name="make-footnotes"/>
        <xsl:apply-templates select="descendant::xs:attribute"/>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:entity='https://w3id.org/cerif/model#ElectronicAddress' ]">
		<xsl:param name="entityEl"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
		<xsl:text>:CERIF: the ElectronicAddress entity (`&lt;https://w3id.org/cerif/model#ElectronicAddress&gt;`_) and the corresponding link (`&lt;</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/>_ElectronicAddress<xsl:text>&gt;`_)
</xsl:text>
		<xsl:call-template name="format2Rst"/>
		<xsl:call-template name="make-footnotes"/>
	</xsl:template>

	<xsl:template match="xs:element[ @name and @cflink:entity='https://w3id.org/cerif/model#PersonName' ]">
		<xsl:param name="entityEl"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
		<xsl:call-template name="make-description"/>
		<xsl:call-template name="document-use"/>
		<xsl:text>:Representation: XML element ``</xsl:text><xsl:value-of select="@name"/><xsl:text>`` containing </xsl:text>
		<xsl:apply-templates select="xs:complexType/xs:complexContent/xs:extension/xs:sequence/xs:element" mode="name-list"/><xsl:text>
</xsl:text>
		<xsl:text>:CERIF: the PersonName entity (`&lt;https://w3id.org/cerif/model#PersonName&gt;`_) and the corresponding link (`&lt;</xsl:text><xsl:value-of select="$entityEl/@cflink:entity"/>_PersonName<xsl:text>&gt;`_)
</xsl:text>
		<xsl:call-template name="format2Rst"/>
		<xsl:call-template name="make-footnotes"/>
		<xsl:apply-templates select="xs:complexType/xs:complexContent/xs:extension/xs:sequence/xs:element"/>
	</xsl:template>

    <xsl:template match="xs:attribute">
        <xsl:variable name="qName" select="resolve-QName( @type, . )"/>
        <xsl:variable name="localName" select="local-name-from-QName( $qName )"/>
        <xsl:variable name="ns" select="namespace-uri-from-QName( $qName )"/>
        <xsl:variable name="sch1" select="document( key( 'import-by-namespace', $ns )/@schemaLocation )/xs:schema"/>
		<xsl:apply-templates mode="make-title" select="@name"/>
        <xsl:call-template name="make-description"/>
        <xsl:call-template name="document-use"/>
        <xsl:text>:Representation: XML attribute ``</xsl:text><xsl:value-of select="@name"/><xsl:text>``
</xsl:text>
        <xsl:choose>
            <xsl:when test="@type = 'xs:boolean'">
                <xsl:text>:Format: </xsl:text>
                <xsl:text>``true`` or ``false`` (data type ``xs:boolean``)


</xsl:text>
            </xsl:when>
            <xsl:when test="@type = 'xs:anyURI'">
                <xsl:text>:Format: </xsl:text>
                <xsl:text>URI (data type ``xs:anyURI``)


</xsl:text>
            </xsl:when>
            <xsl:otherwise>
				<xsl:call-template name="format2Rst"/>
                <xsl:text>:Vocabulary: </xsl:text>
                <xsl:value-of select="normalize-space( $sch1/xs:annotation/xs:documentation )"/><xsl:text>

</xsl:text>
                <xsl:apply-templates select="$sch1/xs:simpleType/xs:restriction/xs:enumeration[ not( xs:annotation/xs:appinfo/cf:Class/cf:Broader/cf:Class/@id ) ]">
                    <xsl:with-param name="enumNodes" select="$sch1/xs:simpleType/xs:restriction/xs:enumeration"/>
                    <xsl:with-param name="indent" select="'  '"/>
                </xsl:apply-templates>
                <xsl:call-template name="make-footnotes"/>
            </xsl:otherwise>
        </xsl:choose>
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
				<xsl:text> that can contain an embedded person with affiliations or organisation unit</xsl:text>
			</xsl:when>
			<xsl:when test="@type = 'cfLinkWithDisplayNameToPersonOrOrgUnit__Type'">
				<xsl:text> that can contain an embedded organisation unit or person</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="xs:element" mode="name-verbatim">
		<xsl:choose>
			<xsl:when test="ends-with( @ref, '__SubstitutionGroupHead' )">
				<xsl:variable name="superclass" select="@ref"/>
				<xsl:apply-templates mode="#current" select="/xs:schema/xs:element[ @substitutionGroup = $superclass ]"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text> or ``</xsl:text>
				<xsl:value-of select="@ref"/>
				<xsl:value-of select=".[not( @ref )]/@name"/>
				<xsl:text>``</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
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
    
	<xsl:template name="process-link-annotation">
		<xsl:param name="link-annotation"/>
		<xsl:param name="prefix" select="''"/>
		<xsl:variable name="r1" select="substring-after( $link-annotation, ' ' )"/>		
		<xsl:variable name="l1" select="normalize-space( substring( $link-annotation, 1, string-length($link-annotation) - string-length( $r1 ) ) )"/>
		<xsl:if test="$l1">
			<xsl:variable name="link-entity" select="substring-before( $l1, '(' )"/>
			<xsl:variable name="semantics" select="substring-before( substring-after( $l1, '(' ), ')' )"/>
			<xsl:variable name="direction" select="substring-after( substring-after( $l1, '(' ), ')' )"/>
			<xsl:value-of select="$prefix"/><xsl:text>the </xsl:text><xsl:value-of select="substring-after( $link-entity, 'https://w3id.org/cerif/model#' )"/><xsl:text> linking entity (`&lt;</xsl:text><xsl:value-of select="$link-entity"/><xsl:text>&gt;`_) with the `&lt;</xsl:text><xsl:value-of select="$semantics"/><xsl:text>&gt;`_ semantics</xsl:text><xsl:if test="$direction"><xsl:text> (direction </xsl:text><xsl:value-of select="$direction"/>)</xsl:if>
			<xsl:call-template name="process-link-annotation">
				<xsl:with-param name="link-annotation" select="$r1"/>
				<xsl:with-param name="prefix" select="'; '"/>
			</xsl:call-template>
		</xsl:if>
    </xsl:template>
	
	<xsl:template name="document-use">
		<xsl:text>:Use: </xsl:text><xsl:choose>
            <xsl:when test="self::xs:attribute and @use='optional'">optional</xsl:when>
            <xsl:when test="self::xs:attribute">required</xsl:when>            
			<xsl:when test="@minOccurs='0' and ( @maxOccurs='1' or not( @maxOccurs ) )">optional (0..1)</xsl:when>
			<xsl:when test="@minOccurs='0' and @maxOccurs='unbounded'">optional, possibly multiple (0..*)</xsl:when>
			<xsl:when test="( @minOccurs='1' or not( @minOccurs ) ) and ( @maxOccurs='1' or not( @maxOccurs ) )">mandatory (1)</xsl:when>
			<xsl:when test="( @minOccurs='1' or not( @minOccurs ) ) and @maxOccurs='unbounded'">mandatory, possibly multiple (1..*)</xsl:when>
			<xsl:otherwise><xsl:value-of select="@minOccurs"/>..<xsl:value-of select="@maxOccurs"/></xsl:otherwise>
		</xsl:choose><xsl:text>
</xsl:text>
	</xsl:template>
	
	<xsl:template match="attribute::*" mode="make-title">
		<xsl:variable name="element-depth">
			<xsl:choose>
                <xsl:when test="/xs:schema/xs:element and parent::xs:attribute"><xsl:value-of select="count( ancestor::xs:element ) + 1"/></xsl:when>
                <xsl:when test="/xs:schema/xs:element"><xsl:value-of select="count( ancestor::xs:element )"/></xsl:when>
                <xsl:when test="parent::xs:attribute"><xsl:value-of select="count( ancestor::xs:element ) + 2"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="count( ancestor::xs:element ) + 1"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="underline-char">
			<xsl:choose>
				<xsl:when test="$element-depth = 1">=</xsl:when>
				<xsl:when test="$element-depth = 2">^</xsl:when>
				<xsl:when test="$element-depth = 3">-</xsl:when>
                <xsl:when test="$element-depth = 4">~</xsl:when>
			</xsl:choose>
		</xsl:variable>
		<xsl:text>
</xsl:text>
		<xsl:value-of select="string( . )"/><xsl:text>
</xsl:text>
		<xsl:value-of select="my:repeat( $underline-char, string-length( . ) )"/><xsl:text>
</xsl:text>
	</xsl:template>
	
	<xsl:template name="format2Rst">
		<xsl:variable name="x">
			<xsl:apply-templates select="( if ( @type ) then key( 'schema-components-by-name', string(@type) ) else ( xs:complexType | xs:simpleType ) )" mode="format"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="count($x/*) &gt; 1">
				<xsl:text>:Format: any of:

</xsl:text>
				<xsl:for-each select="$x/*">
					<xsl:text>  * </xsl:text>
					<xsl:value-of select="."/>
					<xsl:text>
</xsl:text>
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="count($x/*) = 1">
				<xsl:text>:Format: </xsl:text>
				<xsl:value-of select="$x/*"/>
				<xsl:text>
</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="xs:simpleType[ starts-with( @name, 'xs:' ) ]" mode="format">
		<xsl:element name="date">
			<xsl:value-of select="xs:annotation/xs:documentation"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="xs:union" mode="format">
		<xsl:variable name="currentNode" select="."/>
		<xsl:for-each select="tokenize( @memberTypes )">
			<xsl:variable name="typeName" select="string(.)"/>
			<xsl:for-each select="$currentNode">
				<xsl:apply-templates select="key( 'schema-components-by-name', $typeName )" mode="#current"/>
			</xsl:for-each>
		</xsl:for-each>
		<xsl:apply-templates mode="#current"/>
	</xsl:template>

	<xsl:template match="xs:extension" mode="format">
		<xsl:apply-templates select="key( 'schema-components-by-name', string(@base) )" mode="#current"/>
		<xsl:apply-templates mode="#current"/>
	</xsl:template>

	<xsl:template match="xs:restriction" mode="format">
		<xsl:apply-templates select="key( 'schema-components-by-name', string(@base) )" mode="#current"/>
		<xsl:apply-templates mode="#current"/>
	</xsl:template>

	<xsl:template match="text()" mode="format"/>

	<xsl:template match="xs:pattern" mode="format">
		<xsl:element name="regexp">
			<xsl:text>regular expression ``</xsl:text>
			<xsl:value-of select="@value"/>
			<xsl:text>``</xsl:text>
			<xsl:choose>
				<xsl:when test="../xs:length">
					<xsl:text> and length of exactly </xsl:text>
					<xsl:value-of select="../xs:length/@value"/>
					<xsl:text> characters</xsl:text>
				</xsl:when>
				<xsl:when test="../xs:minLength and ../xs:maxLength">
					<xsl:text> and length between </xsl:text>
					<xsl:value-of select="../xs:minLength/@value"/>
					<xsl:text> and </xsl:text>
					<xsl:value-of select="../xs:maxLength/@value"/>
					<xsl:text> characters</xsl:text>
				</xsl:when>
				<xsl:when test="../xs:maxLength">
					<xsl:text> and maximum length of </xsl:text>
					<xsl:value-of select="../xs:maxLength/@value"/>
					<xsl:text> characters</xsl:text>
				</xsl:when>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="xs:annotation/xs:documentation/@source">
					<xsl:text> (as per </xsl:text>
					<xsl:value-of select="cf:formatUrl( xs:annotation/xs:documentation/@source )"/>
					<xsl:text>)</xsl:text>
				</xsl:when>
				<xsl:when test="string-length( xs:annotation/xs:documentation ) &gt; 0">
					<xsl:text> (</xsl:text>
					<xsl:value-of select="xs:annotation/xs:documentation"/>
					<xsl:text>)</xsl:text>
				</xsl:when>
				<xsl:when test="../../xs:annotation/xs:documentation/@source">
					<xsl:text> (as per </xsl:text>
					<xsl:value-of select="cf:formatUrl( ../../xs:annotation/xs:documentation/@source )"/>
					<xsl:text>)</xsl:text>
				</xsl:when>
				<xsl:when test="string-length( ../../xs:annotation/xs:documentation ) &gt; 0">
					<xsl:text> (</xsl:text>
					<xsl:value-of select="../../xs:annotation/xs:documentation"/>
					<xsl:text>)</xsl:text>
				</xsl:when>
			</xsl:choose>
		</xsl:element>
	</xsl:template>

	<xsl:template name="make-description">
		<xsl:variable name="t" select="normalize-space( xs:annotation/xs:documentation )"/>
		<xsl:if test="$t">
			<xsl:text>:Description: </xsl:text>
			<xsl:call-template name="reference-description-footnotes">
				<xsl:with-param name="t" select="$t"/>
			</xsl:call-template>
			<xsl:text>
</xsl:text>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="reference-description-footnotes">
		<xsl:param name="t"/>
		<xsl:analyze-string regex="\[\[([^\]]*)\]\]" select="$t">
			<xsl:matching-substring> [#]_ </xsl:matching-substring>
			<xsl:non-matching-substring>
				<xsl:value-of select="." />
			</xsl:non-matching-substring>
		</xsl:analyze-string>
	</xsl:template>
	
	<xsl:template name="make-footnotes">
		<xsl:variable name="t" select="normalize-space( xs:annotation/xs:documentation )"/>
		<xsl:if test="$t">
			<xsl:call-template name="process-description-footnotes">
				<xsl:with-param name="t" select="$t"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:text>

</xsl:text>
	</xsl:template>
	
	<xsl:template name="process-description-footnotes">
		<xsl:param name="t"/>
		<xsl:analyze-string regex="\[\[([^\]]*)\]\]" select="$t">
			<xsl:matching-substring><xsl:text>

.. [#] </xsl:text>
				<xsl:value-of select="regex-group(1)"/>
			</xsl:matching-substring>
			<xsl:non-matching-substring>
			</xsl:non-matching-substring>
		</xsl:analyze-string>
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