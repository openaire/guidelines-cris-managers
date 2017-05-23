.. _c:patent

Patent
======
:Representation: XML element ``Patent``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: 
:CERIF: the *TODO* entity (``cfResPat``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfResPat.cfResPatId``)

Type
^^^^
:Representation: XML element ``Type`` from namespace ``https://www.openaire.eu/cerif-profile/vocab/COAR_Patent_Types``
:Description: 
:CERIF: the *TODO* classification (``cfResPat_Class``)
:Vocabulary: Patent types extracted from the COAR Resource Types concept scheme: Types of patents as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'patent' only).



Title
^^^^^
:Representation: XML element ``Title``
:Description: 
:CERIF: the *TODO* attribute (``cfResPatTitle.cfTitle``)

VersionInfo
^^^^^^^^^^^
:Representation: XML element ``VersionInfo``
:Description: 
:CERIF: the *TODO* attribute (``cfResPatVersInfo.cfVersInfo``)

RegistrationDate
^^^^^^^^^^^^^^^^
:Representation: XML element ``RegistrationDate``
:Description: 
:CERIF: the *TODO* attribute (``cfResPat.cfRegistrDate``)

ApprovalDate
^^^^^^^^^^^^
:Representation: XML element ``ApprovalDate``
:Description: 
:CERIF: the *TODO* attribute (``cfResPat.cfApprovDate``)

CountryCode
^^^^^^^^^^^
:Representation: XML element ``CountryCode``
:Description: 
:CERIF: the *TODO* attribute (``cfResPat.cfCountryCode``)

PatentNumber
^^^^^^^^^^^^
:Representation: XML element ``PatentNumber``
:Description: 
:CERIF: the *TODO* attribute (``cfResPat.cfPatentNum``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: 
:CERIF: the Federated Identifier entity (``cfFedId``)

Abstract
^^^^^^^^
:Representation: XML element ``Abstract``
:Description: 
:CERIF: the *TODO* attribute (``cfResPatAbstr.cfAbstr``)

Keywords
^^^^^^^^
:Representation: XML element ``Keywords``
:Description: 
:CERIF: the *TODO* attribute (``cfResPatKeyw.cfKeyw``)

CitedBy
^^^^^^^
:Representation: XML element ``CitedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2``)

Cites
^^^^^
:Representation: XML element ``Cites`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1``)

SupplementTo
^^^^^^^^^^^^
:Representation: XML element ``SupplementTo`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2``)

SupplementedBy
^^^^^^^^^^^^^^
:Representation: XML element ``SupplementedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1``)

References
^^^^^^^^^^
:Representation: XML element ``References`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2``)

ReferencedBy
^^^^^^^^^^^^
:Representation: XML element ``ReferencedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1``)



