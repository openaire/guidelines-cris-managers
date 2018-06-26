<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:oacf="https://www.openaire.eu/cerif-profile/1.1/"
                xmlns:coar-access-right="http://purl.org/coar/access_right"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>

   <!--PHASES-->


   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>

   <!--XSD TYPES FOR XSLT2-->


   <!--KEYS AND FUNCTIONS-->


   <!--DEFAULT RULES-->


   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>

   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>

   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>

   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" title="" schemaVersion="">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="https://www.openaire.eu/cerif-profile/1.1/" prefix="oacf"/>
         <svrl:ns-prefix-in-attribute-values uri="http://purl.org/coar/access_right" prefix="coar-access-right"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="name">Occurrence of "uri" implies an OAMandate is mandated</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M2"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="name">Occurrence of "startDate" and "endDate" with the COAR Access Rights vocabulary</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M3"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="name">"startDate" precedes the corresponding "endDate"</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M4"/>
      </svrl:schematron-output>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->


   <!--PATTERN Occurrence of "uri" implies an OAMandate is mandated-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Occurrence of "uri" implies an OAMandate is mandated</svrl:text>

	  <!--RULE -->
   <xsl:template match="oacf:OAMandate" priority="1000" mode="M2">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="oacf:OAMandate"/>

		    <!--REPORT -->
      <xsl:if test="@uri and not ( @mandated = 'true' )">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@uri and not ( @mandated = 'true' )">
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>If the URI of an Open Access policy is given, "mandated" must be set true</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M2"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M2"/>
   <xsl:template match="@*|node()" priority="-2" mode="M2">
      <xsl:apply-templates select="*" mode="M2"/>
   </xsl:template>

   <!--PATTERN Occurrence of "startDate" and "endDate" with the COAR Access Rights vocabulary-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Occurrence of "startDate" and "endDate" with the COAR Access Rights vocabulary</svrl:text>

	  <!--RULE -->
   <xsl:template match="coar-access-right:Access" priority="1000" mode="M3">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="coar-access-right:Access"/>

		    <!--REPORT -->
      <xsl:if test="@startDate">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@startDate">
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>No "startDate" shall be specified for an access item</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@endDate or not ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@endDate or not ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )">
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>An "endDate" may only be specified for an embargoed access item</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not( @endDate ) or ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not( @endDate ) or ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )">
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>No "endDate" may be specified for an item with other than embargoed access</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M3"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M3"/>
   <xsl:template match="@*|node()" priority="-2" mode="M3">
      <xsl:apply-templates select="*" mode="M3"/>
   </xsl:template>

   <!--PATTERN "startDate" precedes the corresponding "endDate"-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">"startDate" precedes the corresponding "endDate"</svrl:text>

	  <!--RULE -->
   <xsl:template match="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 4 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"
                 priority="1002"
                 mode="M4">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 4 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"/>

		    <!--REPORT -->
      <xsl:if test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( concat( @endDate, '-01-01' ) cast as xs:date ) + xs:yearMonthDuration( 'P1Y' ) )">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( concat( @endDate, '-01-01' ) cast as xs:date ) + xs:yearMonthDuration( 'P1Y' ) )">
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>The "startDate" (<xsl:text/>
               <xsl:value-of select="@startDate"/>
               <xsl:text/>) must not be later than the end of the corresponding "endDate" (<xsl:text/>
               <xsl:value-of select="@endDate"/>
               <xsl:text/>) period</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M4"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 7 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"
                 priority="1001"
                 mode="M4">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 7 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"/>

		    <!--REPORT -->
      <xsl:if test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( concat( @endDate, '-01' ) cast as xs:date ) + xs:yearMonthDuration( 'P1M' ) )">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( concat( @endDate, '-01' ) cast as xs:date ) + xs:yearMonthDuration( 'P1M' ) )">
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>The "startDate" (<xsl:text/>
               <xsl:value-of select="@startDate"/>
               <xsl:text/>) must not be later than the end of the corresponding "endDate" (<xsl:text/>
               <xsl:value-of select="@endDate"/>
               <xsl:text/>) period</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M4"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 10 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"
                 priority="1000"
                 mode="M4">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="*[@startDate][@endDate][ string-length( @startDate ) le 10 and not( contains( @startDate, 'Z' ) or contains( @startDate, ':' ) ) ][ string-length( @endDate ) = 10 and not( contains( @endDate, 'Z' ) or contains( @endDate, ':' ) ) ]"/>

		    <!--REPORT -->
      <xsl:if test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( @endDate cast as xs:date ) + xs:dayTimeDuration( 'P1D' ) )">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="( substring( concat( @startDate, '-01-01' ), 1, 10 ) cast as xs:date ) gt ( ( @endDate cast as xs:date ) + xs:dayTimeDuration( 'P1D' ) )">
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>The "startDate" (<xsl:text/>
               <xsl:value-of select="@startDate"/>
               <xsl:text/>) must not be later than the end of the corresponding "endDate" (<xsl:text/>
               <xsl:value-of select="@endDate"/>
               <xsl:text/>) period</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M4"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M4"/>
   <xsl:template match="@*|node()" priority="-2" mode="M4">
      <xsl:apply-templates select="*" mode="M4"/>
   </xsl:template>
</xsl:stylesheet>