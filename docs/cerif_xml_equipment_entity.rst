.. _equipment:


Equipment
=========
:Description: An equipment is an instrumentality needed for an undertaking or to perform a service: Definition Source: http://wordnetweb.princeton.edu/perl/webwn?s=equipment
:Examples: `openaire_cerif_xml_example_equipments.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_equipments.xml>`_
:Representation: XML element ``Equipment``; the rest of this section documents children of this element
:CERIF: the Equipment entity (`<https://w3id.org/cerif/model#Equipment>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See `Metadata representation in CERIF XML <https://openaire-guidelines-for-cris-managers.readthedocs.io/en/v1.1.1/implementation.html#metadata-representation-in-cerif-xml>`_
:Representation: XML attribute ``id``
:CERIF: the EquipmentIdentifier attribute (`<https://w3id.org/cerif/model#Equipment.EquipmentIdentifier>`_)


Type
^^^^
:Description: The type of the equipment
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Type`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Equipment_Classification (`<https://w3id.org/cerif/model#Equipment_Classification>`_)


Acronym
^^^^^^^
:Description: Acronym of the equipment
:Use: optional (0..1)
:Representation: XML element ``Acronym``
:CERIF: the Equipment.Acronym attribute (`<https://w3id.org/cerif/model#Equipment.Acronym>`_)



Name
^^^^
:Description: Name of the equipment
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Name`` as a multilingual string
:CERIF: the Equipment.Name attribute (`<https://w3id.org/cerif/model#Equipment.Name>`_)



Identifier
^^^^^^^^^^
:Description: An identifier of this equipment
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier`` with a required ``type`` attribute (the URI of the identifier scheme)
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



Description
^^^^^^^^^^^
:Description: Description of the equipment
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Description`` as a multilingual string
:CERIF: the Equipment.Description attribute (`<https://w3id.org/cerif/model#Equipment.Description>`_)



Owner
^^^^^
:Description: The owner of the piece of equipment
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Owner`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Person_Service linking entity (`<https://w3id.org/cerif/model#Person_Service>`_) with the `<https://w3id.org/cerif/vocab/PersonResearchInfrastructureRoles#Owner>`_ semantics; the OrganisationUnit_Service linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_Service>`_) with the `<https://w3id.org/cerif/vocab/OrganisationResearchInfrastructureRoles#Owner>`_ semantics




