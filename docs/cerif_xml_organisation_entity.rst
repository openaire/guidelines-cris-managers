.. _orgunit:


OrgUnit
=======
:Description: Organisation Unit: an organisation, a unit therein, a committee or any other group of people that has a collective goal. Organisation Units are not necessarily formalized as legal entities. In the research information domain Organisation Units typically represents: (1) organisations that perform research (universities, research institutes, corporations) and their subdivisions (faculties, schools, departments, research groups) and other associated bodies (boards, advisory bodies); (2) organisations that fund research (funders, their divisions and evaluation panels); (3) scientific associations and networks; (4) publishers, facility operators and other service providers in the research space; (5) authorities, such as patent offices and standardization or supervision bodies; and (6) other bodies: editorial boards, evaluation panels, or committees of all kinds.
:Examples: `openaire_cerif_xml_example_orgunits.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_orgunits.xml>`_
:Representation: XML element ``OrgUnit``; the rest of this section documents children of this element
:CERIF: the OrganisationUnit entity (`<https://w3id.org/cerif/model#OrganisationUnit>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the OrganisationUnitIdentifier attribute (`<https://w3id.org/cerif/model#OrganisationUnit.OrganisationUnitIdentifier>`_)


Type
^^^^
:Description: The type of the organisation unit
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Type`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the OrganisationUnit_Classification (`<https://w3id.org/cerif/model#OrganisationUnit_Classification>`_)


Acronym
^^^^^^^
:Description: The acronym of the organisation unit
:Use: optional (0..1)
:Representation: XML element ``Acronym``
:CERIF: the OrganisationUnit.Acronym attribute (`<https://w3id.org/cerif/model#OrganisationUnit.Acronym>`_)



Name
^^^^
:Description: The name of the organisation unit
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Name`` as a multilingual string
:CERIF: the OrganisationUnit.Name attribute (`<https://w3id.org/cerif/model#OrganisationUnit.Name>`_)



RORID
^^^^^
:Description: The ROR identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``RORID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https:\/\/ror\.org\/0[\da-hj-km-np-tv-zA-HJ-KM-NP-TV-Z]{6}\d{2}`` (as per `<https://ror.org/facts/>`_)



AlternativeRORID
^^^^^^^^^^^^^^^^
:Description: The ROR identifiers in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeRORID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https:\/\/ror\.org\/0[\da-hj-km-np-tv-zA-HJ-KM-NP-TV-Z]{6}\d{2}`` (as per `<https://ror.org/facts/>`_)



GRID
^^^^
:Description: The GRID identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``GRID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``grid\.\d{4,}\.[0-9a-f]{1,2}`` (as per `<https://www.wikidata.org/wiki/Property_talk:P2427>`_)



AlternativeGRID
^^^^^^^^^^^^^^^
:Description: The GRID identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeGRID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``grid\.\d{4,}\.[0-9a-f]{1,2}`` (as per `<https://www.wikidata.org/wiki/Property_talk:P2427>`_)



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



FundRefID
^^^^^^^^^
:Description: The FundRef Registry Identifier in case its value is certain or known to be a preferred one.
:Use: optional (0..1)
:Representation: XML element ``FundRefID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https:\/\/doi.org\/10\.13039\/\d+`` (as per `<https://www.crossref.org/display-guidelines/>`_ `<https://www.wikidata.org/wiki/Q19822542>`_)



AlternativeFundRefID
^^^^^^^^^^^^^^^^^^^^
:Description: The FundRef Registry Identifier in case the value is not certain, e.g. because there is a conflicting statement with a different value. This can also represent deprecated identifiers/profiles that have been merged into a single, current one that is preferred.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``AlternativeFundRefID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``https:\/\/doi.org\/10\.13039\/\d+`` (as per `<https://www.crossref.org/display-guidelines/>`_ `<https://www.wikidata.org/wiki/Q19822542>`_)



Identifier
^^^^^^^^^^
:Description: A generic identifier, to be used only if your identifier does not fit in any of the above specific identifier types.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier``



ElectronicAddress
^^^^^^^^^^^^^^^^^
:Description: An electronic address associated with the organisation unit
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ElectronicAddress``
:CERIF: the ElectronicAddress entity (`<https://w3id.org/cerif/model#ElectronicAddress>`_) and the corresponding link (`<https://w3id.org/cerif/model#OrganisationUnit_ElectronicAddress>`_)



PartOf
^^^^^^
:Description: Link to the larger unit that encompasses this unit. To be used for the immediate parents only. In order to represent the full path up through the hierarchy of an institution, use this construct recursively. In specific cases there may be several such parents at one time in parallel. An example: a interdisciplinary research centre within a university can be subordinated to several faculties.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``PartOf`` with embedded XML element ``OrgUnit``
:CERIF: the OrganisationUnit_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/InterOrganisationalStructure#Part>`_ semantics (direction :1)



