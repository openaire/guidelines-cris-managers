.. _patent:


Patent
======
:Description: A set of exclusive rights granted by a sovereign state to an inventor or assignee for a limited period of time in exchange for detailed public disclosure of an invention. Source: Wikipedia
:Examples: `openaire_cerif_xml_example_patents.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_cerif_xml_example_patents.xml>`_
:Representation: XML element ``Patent``; the rest of this section documents children of this element
:CERIF: the ResultPatent entity (`<https://w3id.org/cerif/model#ResultPatent>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See :ref:`Metadata representation in CERIF XML`
:Representation: XML attribute ``id``
:CERIF: the ResultPatentIdentifier attribute (`<https://w3id.org/cerif/model#ResultPatent.ResultPatentIdentifier>`_)


Type
^^^^
:Description: The type of the patent (currently just one option)
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Patent_Types>`_
:CERIF: the ResultPatent_Classification (`<https://w3id.org/cerif/model#ResultPatent_Classification>`_)
:Vocabulary: Patent types extracted from the COAR Resource Types concept scheme: Types of patents as extracted from the COAR Resource Types concept scheme (https://vocabularies.coar-repositories.org/resource_types/, the term 'patent' and its descendants in the hierarchy).

  * **patent** (`<http://purl.org/coar/resource_type/c_15cd>`_): A patent or patent application. A set of exclusive rights granted by law to applicants for inventions that are new, non-obvious and commercially applicable. A patent is valid for a limited period (generally 20 years), during which time patent holders can commercially exploit their inventions on an exclusive basis. [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]

    * **PCT application** (`<http://purl.org/coar/resource_type/SB3Y-W4EH>`_): A patent application filed through the WIPO-administered Patent Cooperation Treaty (PCT), also known as an international application. [Source: Adapted from https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
    * **design patent** (`<http://purl.org/coar/resource_type/C53B-JCY5>`_): A patent granted to any person who has invented any new and non-obvious ornamental design for an article of manufacture. The design patent protects only the appearance of an article, but not its structural or functional features. [Source: Adapted from https://www.uspto.gov/patents/basics/types-patent-applications/design-patent-application-guide#def]
    * **plant patent** (`<http://purl.org/coar/resource_type/Z907-YMBB>`_): A patent granted to anyone who has invented or discovered and asexually reproduced any distinct and new variety of plant, including cultivated sports, mutants, hybrids, and newly found seedlings, other than a tuber-propagated plant or a plant found in an uncultivated state. [Source: Adapted from https://www.uspto.gov/patents/basics/types-patent-applications/general-information-about-35-usc-161#heading-1]
    * **plant variety protection** (`<http://purl.org/coar/resource_type/GPQ7-G5VE>`_): Plant variety protection, also called a "plant breeder's right" (PBR), is a form of intellectual property right granted to the breeder of a new plant variety . According to this right, certain acts concerning the exploitation of the protected variety require the prior authorization of the breeder. Plant variety protection is an independent sui generis form of protection, tailored to protect new plant varieties and has certain features in common with other intellectual property rights. [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
    * **software patent** (`<http://purl.org/coar/resource_type/MW8G-3CR8>`_): In order to obtain a patent, a software invention must not fall under other non-patentable subject matter (for example, abstract ideas or mathematical theories) and has to fulfill the other substantive patentability criteria (for example, novelty, inventive step [non-obviousness] and industrial applicability [usefulness]). [Source: https://www.wipo.int/patents/en/faq_patents.html]
    * **utility model** (`<http://purl.org/coar/resource_type/9DKX-KSAF>`_): A special form of patent right granted by a state or jurisdiction to an inventor or the inventor’s assignee for a fixed period of time. The terms and conditions for granting a utility model are slightly different from those for normal patents (including a shorter term of protection and less stringent patentability requirements). The term can also describe what are known in certain countries as “petty patents,” “short-term patents” or “innovation patents.” [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]



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
:Description: Date on which the application was physically received at the Patent Authority. Also named Filing Date
:Use: optional (0..1)
:Representation: XML element ``RegistrationDate``
:CERIF: the ResultPatent_Classification.StartDate linking entity attribute (`<https://w3id.org/cerif/model#ResultPatent_Classification.StartDate>`_) with the `<https://w3id.org/cerif/vocab/PatentStatuses#Filed>`_ semantics
:Format: full date (``YYYY-MM-DD``) with optional time zone indication


ApprovalDate
^^^^^^^^^^^^
:Description: Date on which the application has been granted by the Patent Office
:Use: optional (0..1)
:Representation: XML element ``ApprovalDate``
:CERIF: the ResultPatent_Classification.StartDate linking entity attribute (`<https://w3id.org/cerif/model#ResultPatent_Classification.StartDate>`_) with the `<https://w3id.org/cerif/vocab/PatentStatuses#Granted>`_ semantics
:Format: full date (``YYYY-MM-DD``) with optional time zone indication


PublicationDate
^^^^^^^^^^^^^^^
:Description: Date of making available to the public by printing or similar process of a patent document on which grant has taken place on or before the said date
:Use: optional (0..1)
:Representation: XML element ``PublicationDate``
:CERIF: the ResultPatent_Classification.StartDate linking entity attribute (`<https://w3id.org/cerif/model#ResultPatent_Classification.StartDate>`_) with the `<https://w3id.org/cerif/vocab/PatentStatuses#Published>`_ semantics
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



FileLocations
^^^^^^^^^^^^^
:Description: The files that this Patent has as contents.
:Use: optional (0..1)
:Representation: XML element ``FileLocations`` with embedded XML element ``Medium``
:CERIF: the ResultPatent_Medium linking entity (`<https://w3id.org/cerif/model#ResultPatent_Medium>`_) with the `<https://w3id.org/cerif/vocab/MediaRelations#Contents>`_ semantics




