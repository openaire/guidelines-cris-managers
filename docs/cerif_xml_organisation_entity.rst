.. _orgunit:


OrgUnit
=======
:Description: Organisation Unit: an organisation, a unit therein, a committee or any other group of people that has a collective goal. Organisation Units are not necessarily formalized as legal entities. In the research information domain Organisation Units typically represents: (1) organisations that perform research (universities, research institutes, corporations) and their subdivisions (faculties, schools, departments, research groups) and other associated bodies (boards, advisory bodies); (2) organisations that fund research (funders, their divisions and evaluation panels); (3) scientific associations and networks; (4) publishers, facility operators and other service providers in the research space; (5) authorities, such as patent offices and standardization or supervision bodies; and (6) other bodies: editorial boards, evaluation panels, or committees of all kinds.
:Examples: `openaire_cerif_xml_example_orgunits.xml <https://github.com/openaire/guidelines-cris-managers/blob/master/samples/openaire_cerif_xml_example_orgunits.xml>`_
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



Identifier
^^^^^^^^^^
:Description: An identifier of the organisation unit
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier`` with mandatory ``type`` attribute
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



ElectronicAddress
^^^^^^^^^^^^^^^^^
:Description: An electronic address associated with the organisation unit
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ElectronicAddress``
:CERIF: the ElectronicAddress entity (`<https://w3id.org/cerif/model#ElectronicAddress>`_) and the corresponding link (`<https://w3id.org/cerif/model#OrganisationUnit_ElectronicAddress>`_)



PartOf
^^^^^^
:Description: Chain up to the larger unit that encompasses this unit
:Use: optional (0..1)
:Representation: XML element ``PartOf`` with embedded XML element ``OrgUnit``
:CERIF: the OrganisationUnit_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/Inter-­OrganisationRelations#Part>`_ semantics (direction :1)



