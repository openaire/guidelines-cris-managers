<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">

	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="@rdf:about[.='http://purl.org/coar/resource_type/scheme']">
		<xsl:attribute name="rdf:about">http://purl.org/coar/resource_type</xsl:attribute>
		<xsl:message>Replacing the scheme URI 'http://purl.org/coar/resource_type/scheme' to be 'http://purl.org/coar/resource_type'</xsl:message>
	</xsl:template>

	<xsl:template match="@rdf:resource[.='http://purl.org/coar/resource_type/scheme']">
		<xsl:attribute name="rdf:resource">http://purl.org/coar/resource_type</xsl:attribute>
	</xsl:template>

	<!-- standard copy template -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>	

</xsl:stylesheet>