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
:Description: The gender of the person. Leave out in case the gender is unknown or not communicated.
:Use: optional (0..1)
:Representation: XML element ``Gender``
:CERIF: the Person.Gender attribute (`<https://w3id.org/cerif/model#Person.Gender>`_)
:Vocabulary: Genders (sociocultural, not linguistic)

  * **Masculine** (``m``): Man
  * **Feminine** (``f``): Woman



ORCID
^^^^^
:Description: The ORCID identifier
:Use: optional (0..1)
:Representation: XML element ``ORCID``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)
:Format: regular expression ``https://orcid\.org/0000-000(1-[5-9]|2-[0-9]|3-[0-4])[0-9]{3}-[0-9]{3}[0-9X]``



ResearcherID
^^^^^^^^^^^^
:Description: The ResearcherID identifier
:Use: optional (0..1)
:Representation: XML element ``ResearcherID``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)
:Format: regular expression ``[A-Z]-[0-9]{4}-(19|20)[0-9][0-9]``



ScopusAuthorID
^^^^^^^^^^^^^^
:Description: The Scopus Author ID identifier
:Use: optional (0..1)
:Representation: XML element ``ScopusAuthorID``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)
:Format: regular expression ``[0-9]{10,11}``



ISNI
^^^^
:Description: The ISNI identifier
:Use: optional (0..1)
:Representation: XML element ``ISNI``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)
:Format: regular expression ``[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{3}[0-9X]``



ElectronicAddress
^^^^^^^^^^^^^^^^^
:Description: An electronic address associated with the person
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ElectronicAddress``
:CERIF: the ElectronicAddress entity (``https://w3id.org/cerif/model#ElectronicAddress``) and the corresponding link (``https://w3id.org/cerif/model#Person_ElectronicAddress``)



Affiliation
^^^^^^^^^^^
:Description: The organisation or organisation unit the person is affiliated with
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Affiliation`` with embedded XML element ``OrgUnit``
:CERIF: the Person_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Person_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/PersonOrganisationRoles#Affiliation>`_ semantics



