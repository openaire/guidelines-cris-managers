.. _c:person

Person
======
:Representation: XML element ``Person``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: 
:CERIF: the *TODO* entity (``cfPers``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfPers.cfPersId``)

PersonName
^^^^^^^^^^
:Representation: XML element ``PersonName`` containingoptional ``FamilyNames``, optional ``FirstNames``, optional ``OtherNames`` and optional ``Type``
:Description: The name of the person
:CERIF: the Electronic Address entity (``cfEAddr``) and the corresponding link (``cfPers_EAddr``)

Type
^^^^
:Representation: XML element ``Type`` with embedded XML element
:Description: The type of the person
:CERIF: the *TODO* linking entity (``cfPers_Class``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: 
:CERIF: the Federated Identifier entity (``cfFedId``)

ElectronicAddress
^^^^^^^^^^^^^^^^^
:Representation: XML element ``ElectronicAddress``
:Description: 
:CERIF: the Electronic Address entity (``cfEAddr``) and the corresponding link (``cfPers_EAddr``)



