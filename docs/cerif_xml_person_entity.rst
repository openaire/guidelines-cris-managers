.. _person:


Person
======
:Description: A human being as an individual. Source: https://en.oxforddictionaries.com/definition/person The kind of involvement of a Person in the research ecosystem is specified in the links with the organisations, the services, etc. This typically includes: (1) researchers (Persons performing research in an Organisation Unit as employees or students); (2) authors and contributors (Persons signing a publication, creators of data sets, software developers, etc.); (3) investigators and project participants (Persons involved in a Project as principal investigators, co investigators, project managers, consultants, etc.); (4) management (directors, rectors, deans, department heads, etc.); (5) support staffs (technicians, responsible for Equipment, librarians and digital asset curators, administrative staff, etc.). One Person typically has many of these relationships.
:Examples: `openaire_cerif_xml_example_persons.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_persons.xml>`_
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
:CERIF: the PersonName entity (`<https://w3id.org/cerif/model#PersonName>`_) and the corresponding link (`<https://w3id.org/cerif/model#Person_PersonName>`_)



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

  * **Masculine** (``m``): 
  * **Feminine** (``f``): 



ORCID
^^^^^
:Description: The ORCID identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``ORCID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https://orcid\.org/0000-000(1-[5-9]|2-[0-9]|3-[0-4])[0-9]{3}-[0-9]{3}[0-9X]`` (as per `<https://support.orcid.org/knowledgebase/articles/116780-structure-of-the-orcid-identifier>`_)



AlternativeORCID
^^^^^^^^^^^^^^^^
:Description: The ORCID identifiers in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeORCID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https://orcid\.org/0000-000(1-[5-9]|2-[0-9]|3-[0-4])[0-9]{3}-[0-9]{3}[0-9X]`` (as per `<https://support.orcid.org/knowledgebase/articles/116780-structure-of-the-orcid-identifier>`_)



ResearcherID
^^^^^^^^^^^^
:Description: The ResearcherID identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``ResearcherID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``[A-Z]-[0-9]{4}-(19|20)[0-9][0-9]`` (as per `<https://www.wikidata.org/wiki/Property:P1053>`_)



AlternativeResearcherID
^^^^^^^^^^^^^^^^^^^^^^^
:Description: The ResearcherID identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeResearcherID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``[A-Z]-[0-9]{4}-(19|20)[0-9][0-9]`` (as per `<https://www.wikidata.org/wiki/Property:P1053>`_)



ScopusAuthorID
^^^^^^^^^^^^^^
:Description: The Scopus Author ID identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``ScopusAuthorID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``[0-9]{10,11}`` (as per `<https://www.wikidata.org/wiki/Property:P1153>`_)



AlternativeScopusAuthorID
^^^^^^^^^^^^^^^^^^^^^^^^^
:Description: The Scopus Author ID identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeScopusAuthorID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``[0-9]{10,11}`` (as per `<https://www.wikidata.org/wiki/Property:P1153>`_)



ISNI
^^^^
:Description: The ISNI identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``ISNI``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``\d{4} \d{4} \d{4} \d{3}[\dX]`` (as per `<https://www.wikidata.org/wiki/Property:P213>`_)



AlternativeISNI
^^^^^^^^^^^^^^^
:Description: The ISNI identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeISNI``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``\d{4} \d{4} \d{4} \d{3}[\dX]`` (as per `<https://www.wikidata.org/wiki/Property:P213>`_)



DAI
^^^
:Description: The Digital Author Identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``DAI``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``info\:eu\-repo/dai/nl/\d{8}[\dxX]`` (as per `<https://wiki.surfnet.nl/display/standards/DAI>`_)



AlternativeDAI
^^^^^^^^^^^^^^
:Description: The Digital Author Identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeDAI``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``info\:eu\-repo/dai/nl/\d{8}[\dxX]`` (as per `<https://wiki.surfnet.nl/display/standards/DAI>`_)



ElectronicAddress
^^^^^^^^^^^^^^^^^
:Description: An electronic address associated with the person
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ElectronicAddress``
:CERIF: the ElectronicAddress entity (`<https://w3id.org/cerif/model#ElectronicAddress>`_) and the corresponding link (`<https://w3id.org/cerif/model#Person_ElectronicAddress>`_)



Affiliation
^^^^^^^^^^^
:Description: The organisation or organisation unit the person is affiliated with
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Affiliation`` with embedded XML element ``OrgUnit``
:CERIF: the Person_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Person_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/PersonOrganisationRoles#Affiliation>`_ semantics



