.. _c:project

Project
=======
:Representation: XML element ``Project``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: 
:CERIF: the *TODO* entity (``cfProj``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfProj.cfProjId``)

Type
^^^^
:Representation: XML element ``Type`` with embedded XML element
:Description: The type of the project
:CERIF: the *TODO* linking entity (``cfProj_Class``)

Acronym
^^^^^^^
:Representation: XML element ``Acronym``
:Description: The acronym of the project
:CERIF: the *TODO* attribute (``cfProj.cfAcro``)

Title
^^^^^
:Representation: XML element ``Title``
:Description: The title of the project
:CERIF: the *TODO* attribute (``cfProjTitle.cfTitle``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: An identifier of the project
:CERIF: the Federated Identifier entity (``cfFedId``)

StartDate
^^^^^^^^^
:Representation: XML element ``StartDate``
:Description: The start date of the project
:CERIF: the *TODO* attribute (``cfProj.cfStartDate``)

EndDate
^^^^^^^
:Representation: XML element ``EndDate``
:Description: The end date of the project
:CERIF: the *TODO* attribute (``cfProj.cfEndDate``)

Funders
^^^^^^^
:Representation: XML element ``Funders`` with embedded XML elements ``Funder`` that can contain an embedded person or organisation unit structure
:Description: The funders who provide funding to the project
:CERIF: *TODO*

Consortium
^^^^^^^^^^
:Representation: XML element ``Consortium`` with embedded XML elements ``Member`` that can contain an embedded person or organisation unit structure
:Description: The consortium of the project: the organisations (persons) who are contractually bound to do the work in the project
:CERIF: *TODO*

Team
^^^^
:Representation: XML element ``Team`` with embedded XML elements ``PrincipalInvestigator`` or ``Contact`` or ``Member``
:Description: The project team: the persons who carry out the work in the project, typically as a part of their job at the organisations from the consortium
:CERIF: *TODO*

Subject
^^^^^^^
:Representation: XML element ``Subject`` with embedded XML element
:Description: The subject classification(s) of the project
:CERIF: the *TODO* linking entity (``cfProj_Class``)

Keyword
^^^^^^^
:Representation: XML element ``Keyword``
:Description: The keywords of the project
:CERIF: the *TODO* attribute (``cfProjKeyw.cfKeyw``)

Costs
^^^^^
:Representation: XML element ``Costs`` with embedded XML elements ``Cost``
:Description: The costs of the project and the funding that covers them
:CERIF: *TODO*

Abstract
^^^^^^^^
:Representation: XML element ``Abstract``
:Description: The abstract of the project
:CERIF: the *TODO* attribute (``cfProjAbstr.cfAbstr``)

Status
^^^^^^
:Representation: XML element ``Status`` with embedded XML element
:Description: The status of the project
:CERIF: the *TODO* linking entity (``cfProj_Class``)

Originator
^^^^^^^^^^
:Representation: XML element ``Originator`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: The research outputs this project has contributed to
:CERIF: the *TODO* linking entity (``cfProj_ResPubl(http://eurocris.org/cerif/vocab/Project_Output_Roles#Originator)``)



