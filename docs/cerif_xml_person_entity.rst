.. _person:


Person
======
:Description: A human being as an individual. Source: https://en.oxforddictionaries.com/definition/person The kind of involvement of a Person in the research ecosystem is specified in the links with the organisations, the services, etc. This typically includes: (1) researchers (Persons performing research in an Organisation Unit as employees or students); (2) authors and contributors (Persons signing a publication, creators of data sets, software developers, etc.); (3) investigators and project participants (Persons involved in a Project as principal investigators, co investigators, project managers, consultants, etc.); (4) management (directors, rectors, deans, department heads, etc.); (5) support staffs (technicians, responsible for Equipment, librarians and digital asset curators, administrative staff, etc.). One Person typically has many of these relationships.
:Examples: `openaire_cerif_xml_example_persons.xml <https://github.com/openaire/guidelines-cris-managers/blob/master/samples/openaire_cerif_xml_example_persons.xml>`_
:Representation: XML element ``Person``; the rest of this section documents children of this element
:CERIF: the Person entity (`<https://w3id.org/cerif/model#Person>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the PersonIdentifier attribute (`<https://w3id.org/cerif/model#Person.PersonIdentifier>`_)


PersonName
^^^^^^^^^^
:Description: The name of the person
:Use: optional (0..1)
:Representation: XML element ``PersonName`` containing optional ``FamilyNames``, optional ``FirstNames`` and optional ``OtherNames``
:CERIF: the PersonName entity (``https://w3id.org/cerif/model#PersonName``) and the corresponding link (``https://w3id.org/cerif/model#Person_PersonName``)



FamilyNames
-----------
:Use: optional (0..1)
:Representation: XML element ``FamilyNames``
:CERIF: the PersonName.FamilyNames attribute (`<https://w3id.org/cerif/model#PersonName.FamilyNames>`_)



FirstNames
----------
:Use: optional (0..1)
:Representation: XML element ``FirstNames``
:CERIF: the PersonName.FirstNames attribute (`<https://w3id.org/cerif/model#PersonName.FirstNames>`_)



OtherNames
----------
:Use: optional (0..1)
:Representation: XML element ``OtherNames``
:CERIF: the PersonName.OtherNames attribute (`<https://w3id.org/cerif/model#PersonName.OtherNames>`_)



Gender
^^^^^^
:Description: The gender of the person
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Gender`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Person_Classification (`<https://w3id.org/cerif/model#Person_Classification>`_)


ORCID
^^^^^
:Use: optional (0..1)
:Representation: XML element ``ORCID``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



ElectronicAddress
^^^^^^^^^^^^^^^^^
:Description: An electronic address associated with the person
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ElectronicAddress``
:CERIF: the ElectronicAddress entity (``https://w3id.org/cerif/model#ElectronicAddress``) and the corresponding link (``https://w3id.org/cerif/model#Person_ElectronicAddress``)




