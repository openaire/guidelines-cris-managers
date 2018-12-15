.. _service:


Service
=======
:Description: CRIS compatible with the OpenAIRE Guidelines for CRIS Managers
:Examples: `sample Identify response <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_oaipmh_example_Identify.xml>`_
:Representation: XML element ``Service``; the rest of this section documents children of this element
:CERIF: the Service entity (`<https://w3id.org/cerif/model#Service>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the ServiceIdentifier attribute (`<https://w3id.org/cerif/model#Service.ServiceIdentifier>`_)


Compatibility
^^^^^^^^^^^^^
:Description: OpenAIRE compatibility of the CRIS
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Compatibility`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/OpenAIRE_Service_Compatibility>`_
:CERIF: the Service_Classification (`<https://w3id.org/cerif/model#Service_Classification>`_)
:Vocabulary: Compatibility of service with the OpenAIRE Guidelines for CRIS Managers

  * **OpenAIRE Guidelines 1.1 compatible CRIS** (`<https://www.openaire.eu/cerif-profile/vocab/OpenAIRE_Service_Compatibility#1.1>`_): CRIS compatible with OpenAIRE Guidelines for CRIS managers version 1.1
  * **OpenAIRE Guidelines 1.0 compatible CRIS** (`<https://www.openaire.eu/cerif-profile/vocab/OpenAIRE_Service_Compatibility#1.0>`_): CRIS compatible with OpenAIRE Guidelines for CRIS managers version 1.0



Acronym
^^^^^^^
:Description: Acronym of the service
:Use: optional (0..1)
:Representation: XML element ``Acronym``
:CERIF: the Service.Acronym attribute (`<https://w3id.org/cerif/model#Service.Acronym>`_)



Name
^^^^
:Description: Name of the service
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Name`` as a multilingual string
:CERIF: the Service.Name attribute (`<https://w3id.org/cerif/model#Service.Name>`_)



Identifier
^^^^^^^^^^
:Description: An identifier of this service
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier`` with mandatory ``type`` attribute
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



Description
^^^^^^^^^^^
:Description: Description of the service
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Description`` as a multilingual string
:CERIF: the Service.Description attribute (`<https://w3id.org/cerif/model#Service.Description>`_)



WebsiteURL
^^^^^^^^^^
:Description: URL of the website of the CRIS
:Use: optional (0..1)
:Representation: XML element ``WebsiteURL``
:CERIF: the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/vocab/IdentifierTypes#URL>`_ semantics; the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/ElectronicAddressTypes#Website>`_ semantics


OAIPMHBaseURL
^^^^^^^^^^^^^
:Description: Base URL for the OAI-PMH protocol endpoint of the CRIS
:Use: optional (0..1)
:Representation: XML element ``OAIPMHBaseURL``
:CERIF: the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/vocab/IdentifierTypes#URL>`_ semantics; the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/ElectronicAddressTypes#OAI-PMH_Base>`_ semantics


SubjectHeadingsURL
^^^^^^^^^^^^^^^^^^
:Description: The URL where the subject classification used by the CRIS can be obtained (using the HTTP GET)
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``SubjectHeadingsURL``
:CERIF: the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/vocab/IdentifierTypes#URL>`_ semantics; the FederatedIdentifier linking entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_) with the `<https://w3id.org/cerif/ElectronicAddressTypes#SubjectHeadings>`_ semantics


Owner
^^^^^
:Description: The owner of the CRIS: The organisation the research of which the CRIS documents
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Owner`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the OrganisationUnit_Service linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_Service>`_) with the `<https://w3id.org/cerif/vocab/OrganisationResearchInfrastructureRoles#Owner>`_ semantics



