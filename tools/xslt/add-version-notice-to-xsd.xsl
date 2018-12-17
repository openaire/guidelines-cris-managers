<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

	<xsl:param name="version" as="xs:string"/>
	<xsl:param name="doi" as="xs:string"/>

	<xsl:output method="xml" encoding="UTF-8" exclude-result-prefixes="xsl" indent="no"/>

	<xsl:template match="/*">
			<xsl:text>
</xsl:text>
			<xsl:comment>
	From release <xsl:value-of select="$version"/> of the OpenAIRE Guidelines for CRIS Managers<xsl:if test="$doi != '-'">, see <xsl:value-of select="concat( 'https://doi.org/', $doi )"/></xsl:if><xsl:text>
</xsl:text></xsl:comment>
		<xsl:text>
</xsl:text>
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="/comment()">
		<xsl:text>
</xsl:text>
		<xsl:copy-of select="."/>
	</xsl:template>

	<!-- standard copy template -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>