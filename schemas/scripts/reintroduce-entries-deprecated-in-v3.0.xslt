<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:ns0="http://purl.org/coar/resource_type/schema#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">

	<xsl:template match="skos:prefLabel[@xml:lang='en'][../skos:editorialNote[@xml:lang='en']='Deprecated' or ../ns0:expires]">
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates />
			<xsl:text> (deprecated</xsl:text>
			<xsl:if test="../ns0:expires">
				<xsl:text> since </xsl:text>
				<xsl:value-of select="../ns0:expires" />
			</xsl:if>
			<xsl:text>)</xsl:text>
			<xsl:message> - deprecating "<xsl:value-of select="."/>"</xsl:message>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="skos:Concept[skos:editorialNote[@xml:lang='en']='Deprecated']">
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates select="*[not(self::skos:broader[starts-with(@rdf:resource,'http://purl.org/coar/resource_type')])]" />
			<xsl:choose>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_186u'"><!-- policy report -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_93fc" /><!-- report -->
				</xsl:when>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_18ww'"><!-- internal report -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_93fc" /><!-- report -->
				</xsl:when>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_ba1f'"><!-- report part -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_93fc" /><!-- report -->
				</xsl:when>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_18hj'"><!-- report to funding agency -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_93fc" /><!-- report -->
				</xsl:when>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_18wq'"><!-- other type of report -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_93fc" /><!-- report -->
				</xsl:when>
				<xsl:when test="@rdf:about='http://purl.org/coar/resource_type/c_816b'"><!-- preprint -->
					<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_18cf" /><!-- manuscript -->
				</xsl:when>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="skos:Concept[@rdf:about='http://purl.org/coar/resource_type/c_26e4']"/><!-- "interview" (was introduced in 2.0 and deprecated in 3.0) -->

	<xsl:template match="skos:Concept[@rdf:about='http://purl.org/coar/resource_type/EHVM-H119']"/><!-- "research data" (was introduced after 2.0 was released and deprecated before 3.0 was released) -->

	<xsl:template match="skos:Concept[@rdf:about='http://purl.org/coar/resource_type/c_3e5a']"><!-- "contribution to journal" -->
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates select="*[not(self::skos:broader[starts-with(@rdf:resource,'http://purl.org/coar/resource_type')])]" />
			<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_0640" /><!-- journal -->
			<xsl:message> - making "<xsl:value-of select="skos:prefLabel[@xml:lang='en']"/>" child of "journal"</xsl:message>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="skos:Concept[skos:broader[@rdf:resource='http://purl.org/coar/resource_type/c_0640']]"><!-- children of "journal" -->
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates select="*[not(self::skos:broader[starts-with(@rdf:resource,'http://purl.org/coar/resource_type')])]" />
			<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_3e5a" /><!-- "contribution to journal" -->
			<xsl:message> - making "<xsl:value-of select="skos:prefLabel[@xml:lang='en']"/>" child of "contribution to journal"</xsl:message>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="skos:Concept[@rdf:about='http://purl.org/coar/resource_type/c_2659']"><!-- "periodical" -->
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates select="*[not(self::skos:broader[starts-with(@rdf:resource,'http://purl.org/coar/resource_type')])]" />
			<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_18cf" /><!-- text -->
			<xsl:message> - making "<xsl:value-of select="skos:prefLabel[@xml:lang='en']"/>" child of "text"</xsl:message>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="skos:Concept[@rdf:about='http://purl.org/coar/resource_type/c_0640']"><!-- "journal" -->
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates select="*[not(self::skos:broader[starts-with(@rdf:resource,'http://purl.org/coar/resource_type')])]" />
			<skos:broader rdf:resource="http://purl.org/coar/resource_type/c_2659" /><!-- "periodical" -->
			<xsl:message> - making "<xsl:value-of select="skos:prefLabel[@xml:lang='en']"/>" child of "periodical"</xsl:message>
		</xsl:copy>
	</xsl:template>

	<!-- standard copy template -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>