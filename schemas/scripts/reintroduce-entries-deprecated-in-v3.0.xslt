<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:ns0="http://purl.org/coar/resource_type/schema#">

	<xsl:template match="skos:prefLabel[@xml:lang='en'][../skos:editorialNote[@xml:lang='en']='Deprecated']">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
			<xsl:text> (deprecated</xsl:text>
			<xsl:if test="../ns0:expires">
				<xsl:text> since </xsl:text>
				<xsl:value-of select="../ns0:expires"/>
			</xsl:if>
			<xsl:text>)</xsl:text>
		</xsl:copy>
	</xsl:template>

	<!-- standard copy template -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>	

</xsl:stylesheet>