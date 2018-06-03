<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt2">
   <sch:ns xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
           xmlns:skos="http://www.w3.org/2004/02/skos/core#"
           xmlns:skosxl="http://www.w3.org/2008/05/skos-xl#"
           xmlns:cf="urn:xmlns:org.eurocris.cerif"
           xmlns:dc-term="http://purl.org/dc/terms/"
           xmlns="http://purl.org/coar/access_right"
           prefix="coar-access-right"
           uri="http://purl.org/coar/access_right"/>
   <sch:pattern xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:skos="http://www.w3.org/2004/02/skos/core#"
                xmlns:skosxl="http://www.w3.org/2008/05/skos-xl#"
                xmlns:cf="urn:xmlns:org.eurocris.cerif"
                xmlns:dc-term="http://purl.org/dc/terms/"
                xmlns="http://purl.org/coar/access_right">
                  <sch:title>Occurrence of "startDate" and "endDate" with the COAR Access Rights vocabulary</sch:title>
                  <sch:rule context="coar-access-right:Access">
                     <sch:report test="@startDate">No "startDate" shall be specified for an access item</sch:report>
                     <sch:assert test="@endDate or not ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )">An "endDate" may only be specified for an embargoed access item</sch:assert>
                     <sch:assert test="not( @endDate ) or ( string(.) = 'http://purl.org/coar/access_right/c_f1cf' )">No "endDate" may be specified for an item with other than embargoed access</sch:assert>
                  </sch:rule>
               </sch:pattern>
   <sch:diagnostics/>
</sch:schema>
