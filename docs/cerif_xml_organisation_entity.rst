.. _c:orgunit

OrgUnit
=======
:Representation: XML element ``OrgUnit``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: 
:CERIF: the *TODO* entity (``cfOrgUnit``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfOrgUnit.cfOrgUnitId``)

Acronym
^^^^^^^
:Representation: XML element ``Acronym``
:Description: The acronym of the organisational unit
:CERIF: the *TODO* attribute (``cfOrgUnit.cfAcro``)

Name
^^^^
:Representation: XML element ``Name``
:Description: The name of the organisational unit
:CERIF: the *TODO* attribute (``cfOrgUnitName.cfName``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: An identifier of the organisational unit
:CERIF: the Federated Identifier entity (``cfFedId``)

ElectronicAddress
^^^^^^^^^^^^^^^^^
:Representation: XML element ``ElectronicAddress``
:Description: An electronic address associated with the organisational unit
:CERIF: the Electronic Address entity (``cfEAddr``) and the corresponding link (``cfOrgUnit_EAddr``)

PartOf
^^^^^^
:Representation: XML element ``PartOf`` with embedded XML element ``OrgUnit``
:Description: Chain up to the larger unit that encompasses this unit
:CERIF: the *TODO* linking entity (``cfOrgUnit_OrgUnit(http://eurocris.org/cerif/vocab/Inter-­OrganisationRelations#Part):1``)



