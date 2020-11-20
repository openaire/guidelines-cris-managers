.. _patent:


Patent
======
:Description: A set of exclusive rights granted by a sovereign state to an inventor or assignee for a limited period of time in exchange for detailed public disclosure of an invention. Source: Wikipedia
:Examples: `openaire_cerif_xml_example_patents.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_patents.xml>`_
:Representation: XML element ``Patent``; the rest of this section documents children of this element
:CERIF: the ResultPatent entity (`<https://w3id.org/cerif/model#ResultPatent>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the ResultPatentIdentifier attribute (`<https://w3id.org/cerif/model#ResultPatent.ResultPatentIdentifier>`_)


Type
^^^^
:Description: The type of the patent (currently just one option)
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Patent_Types>`_
:CERIF: the ResultPatent_Classification (`<https://w3id.org/cerif/model#ResultPatent_Classification>`_)
:Vocabulary: Patent types extracted from the COAR Resource Types concept scheme: Types of patents as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'patent' only).

  * **patent** (`<http://purl.org/coar/resource_type/c_15cd>`_): A patent or patent application.



Title
^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Title`` as a multilingual string
:CERIF: the ResultPatent.Title attribute (`<https://w3id.org/cerif/model#ResultPatent.Title>`_)



VersionInfo
^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``VersionInfo`` as a multilingual string
:CERIF: the ResultPatent.VersionInfo attribute (`<https://w3id.org/cerif/model#ResultPatent.VersionInfo>`_)



RegistrationDate
^^^^^^^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``RegistrationDate``
:CERIF: the ResultPatent.RegistrationDate attribute (`<https://w3id.org/cerif/model#ResultPatent.RegistrationDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



ApprovalDate
^^^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``ApprovalDate``
:CERIF: the ResultPatent.ApprovalDate attribute (`<https://w3id.org/cerif/model#ResultPatent.ApprovalDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



CountryCode
^^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``CountryCode``
:CERIF: the ResultPatent.CountryCode attribute (`<https://w3id.org/cerif/model#ResultPatent.CountryCode>`_)



Issuer
^^^^^^
:Description: The issuer of the patent: the patent office
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Issuer`` with embedded XML element ``OrgUnit``. A ``DisplayName`` may be specified, too.
:CERIF: the OrganisationUnit_ResultPatent linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#PatentIssuer>`_ semantics


PatentNumber
^^^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``PatentNumber``
:CERIF: the ResultPatent.PatentNumber attribute (`<https://w3id.org/cerif/model#ResultPatent.PatentNumber>`_)



URL
^^^
:Use: optional (0..1)
:Representation: XML element ``URL``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



Inventors
^^^^^^^^^
:Description: The inventors of this patent
:Use: optional (0..1)
:Representation: XML element ``Inventors`` with ordered embedded XML elements ``Inventor``



Inventor
--------
:Description: The inventor: The actual devisor of an invention that is the subject of a patent.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Inventor`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements. A ``DisplayName`` may be specified, too.
:CERIF: the Person_ResultPatent linking entity (`<https://w3id.org/cerif/model#Person_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Inventor>`_ semantics


Holders
^^^^^^^
:Description: The holders of this patent
:Use: optional (0..1)
:Representation: XML element ``Holders`` with ordered embedded XML elements ``Holder`` that can contain an embedded organisation unit or person



Holder
------
:Description: The patent rights holder, also known as the patentee or assignee
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Holder`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Person_ResultPatent linking entity (`<https://w3id.org/cerif/model#Person_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#PatentHolder>`_ semantics; the OrganisationUnit_ResultPatent linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#PatentHolder>`_ semantics


Abstract
^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Abstract`` as a multilingual string
:CERIF: the ResultPatent.Abstract attribute (`<https://w3id.org/cerif/model#ResultPatent.Abstract>`_)



Subject
^^^^^^^
:Description: The subject of the patent from a classification
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subject`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultPatent_Classification (`<https://w3id.org/cerif/model#ResultPatent_Classification>`_)


Keyword
^^^^^^^
:Description: A single keyword or key expression. Please repeat to serialize separate keywords or key expressions.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Keyword`` as a multilingual string
:CERIF: the ResultPatent.Keywords attribute (`<https://w3id.org/cerif/model#ResultPatent.Keywords>`_)



OriginatesFrom
^^^^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OriginatesFrom`` with embedded XML element ``Project`` or ``Funding``
:CERIF: the Project_ResultPatent linking entity (`<https://w3id.org/cerif/model#Project_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/ProjectOutputRoles#Originator>`_ semantics; the ResultPatent_Funding linking entity (`<https://w3id.org/cerif/model#ResultPatent_Funding>`_) with the `<https://w3id.org/cerif/vocab/OutputFundingRoles#Originator>`_ semantics


Predecessor
^^^^^^^^^^^
:Description: Patents that precede (i.e., have priority over) this patent
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Predecessor`` with embedded XML element ``Patent``
:CERIF: the ResultPatent_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultPatent_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterPatentRelations#Predecessor>`_ semantics (direction :1)


References
^^^^^^^^^^
:Description: Result outputs that are referenced by this patent
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``References`` with embedded XML element ``Publication`` or ``Patent`` or ``Product``
:CERIF: the ResultPublication_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultProduct_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultPatent_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultPatent_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1)



