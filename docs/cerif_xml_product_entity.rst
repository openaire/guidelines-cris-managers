.. _product:


Product
=======
:Description: Any result of research other than Publication or Patent. This includes: (1) research datasets, (2) software, (3) visualisations: still or moving images, including maps and other cartographic material, (4) audio recordings, (5) other objects that can be perceived through human senses.
:Examples: `openaire_cerif_xml_example_products.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_products.xml>`_
:Representation: XML element ``Product``; the rest of this section documents children of this element
:CERIF: the ResultProduct entity (`<https://w3id.org/cerif/model#ResultProduct>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See `Metadata representation in CERIF XML <https://openaire-guidelines-for-cris-managers.readthedocs.io/en/v1.1.1/implementation.html#metadata-representation-in-cerif-xml>`_
:Representation: XML attribute ``id``
:CERIF: the ResultProductIdentifier attribute (`<https://w3id.org/cerif/model#ResultProduct.ResultProductIdentifier>`_)


Type
^^^^
:Description: The type of the resulting product (other than publication or patent)
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Product_Types>`_
:CERIF: the ResultProduct_Classification (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_)
:Vocabulary: Product types extracted from the COAR Resource Types concept scheme: Types of products as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, all types that do not descend from 'text').

  * **cartographic material** (`<http://purl.org/coar/resource_type/c_12cc>`_): Any material representing the whole or part of the earth or any celestial body at any scale. Cartographic materials include two- and three-dimensional maps and plans (including maps of imaginary places); aeronautical, navigational, and celestial charts; atlases; globes; block diagrams; sections; aerial photographs with a cartographic purpose; bird's-eye views (map views), etc. [Source: http://www.loc.gov/marc/cfmap.html]

    * **map** (`<http://purl.org/coar/resource_type/c_12cd>`_): Defined as a representation normally to scale and on a flat medium, of a selection of material or abstract features on, or in relation to, the surface of the earth or of another celestial body. [Source: https://www.loc.gov/marc/bibliographic/bd007a.html]
  * **dataset** (`<http://purl.org/coar/resource_type/c_ddb1>`_): A collection of related facts and data encoded in a defined structure. [Source: Adapted from http://purl.org/spar/fabio/Dataset]

    * **aggregated data** (`<http://purl.org/coar/resource_type/ACF7-8YT9>`_): Statistics that relate to broad classes, groups, or categories. The data are averaged, totaled, or otherwise derived from individual-level data, and it is no longer possible to distinguish the characteristics of individuals within those classes, groups, or categories. For example, the number and age group of the unemployed in specific geographic regions, or national level statistics on the occurrence of specific offences, originally derived from the statistics of individual police districts. [Source: https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **clinical trial data** (`<http://purl.org/coar/resource_type/c_cb28>`_): Data resulting from a research study in which one or more human subjects are prospectively assigned to one or more interventions (which may include placebo or other control) to evaluate the effects of those interventions on health-related biomedical or behavioral outcomes. [Source: Adapted from https://grants.nih.gov/policy/clinical-trials/definition.htm]
    * **compiled data** (`<http://purl.org/coar/resource_type/FXF3-D3G7>`_): Data collected or assembled from multiple, often heterogeneous sources that have one or more reference points in common, and at least one of the sources was originally produced for other purposes. The data are incorporated in a new entity. For example, providing data on the number of universities in the last 150 years using a variety of available sources (e.g. finance documents, official statistics, university registers), combining survey data with information about geographical areas from official statistics (e.g. population density, doctors per capita, etc.), or using RSS to collect blog posts or tweets, etc. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **encoded data** (`<http://purl.org/coar/resource_type/AM6W-6QAW>`_): Qualitative data (textual, video, audio or still-image) originally produced for other purposes into quantitative data (expressed in unit-by-variable matrices) by using coding techniques in accordance with pre-defined categorization schemes. For example, coded party manifesto data like the "European Parliament Election Study 2009, Manifesto Study" (doi:10.4232/1.10204)". [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **experimental data** (`<http://purl.org/coar/resource_type/63NG-B465>`_): Data resulting from the experimental research method involving the manipulation of some or all of the independent variables included in the hypotheses. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **genomic data** (`<http://purl.org/coar/resource_type/A8F1-NPV9>`_): Genomic data refers to the genome and DNA data of an organism. They are used in bioinformatics for collecting, storing and processing the genomes of living things. Genomic data is a more extensive term than sequencing data. However genomic data mostly come from sequencing techniques. It may include non-sequencing data such as data from microarrays, data from real-time PCR panels and data from pharmacogenomics studies. [Source: Adapted from https://www.techopedia.com/definition/31247/genomic-data]
    * **geospatial data** (`<http://purl.org/coar/resource_type/2H0M-X761>`_): Discrete geospatial data are usually represented using vector data consisting of points, lines and polygons, while continuous geospatial data are usually represented by raster data, consisting of a grid of cells that each has its own value. Any number of applications in a wide range of areas produce geospatial data, such as GIS, Remote Sensing equipment, GPS units, archaeological total stations, manual mapping and computer-aided design (CAD), in a number of formats, including images, vector, text, and tabular data. Vector-based geospatial data include tables listing archaeological sites along with their coordinates, text-based files (e.g., XML) containing coordinates and topology for historic road networks, voting figures for political parties by administrative area. Raster-based geospatial data include satellite images, aerial photographs, scanned maps, and digital maps of elevations, vegetation, land-use, sea surface temperatures, air pollution, soil-types, etc. [Source: https://ddialliance.org/Specification/DDI-CV/GeneralDataFormat_2.0.html]
    * **laboratory notebook** (`<http://purl.org/coar/resource_type/H41Y-FW7B>`_): A laboratory notebook (colloq. lab notebook or lab book) is a primary record of research. Researchers use a lab notebook to document their hypotheses, experiments and initial analysis or interpretation of these experiments. This label is used both for traditional and electronic laboratory notebook. [Source: Adapted from https://en.wikipedia.org/wiki/Lab_notebook]
    * **measurement and test data** (`<http://purl.org/coar/resource_type/DD58-GFSX>`_): Data resulting from assessing specific properties (or characteristics) of beings, things, phenomena, (and/ or processes) by applying pre-established standards and/or specialized instruments or techniques. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **observational data** (`<http://purl.org/coar/resource_type/FF4C-28RK>`_): Data resulting from observational research, which involves collecting observations as they occur (for example, observing behaviors, events, development of condition or disease, etc.), without attempting to manipulate any of the independent variables. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **recorded data** (`<http://purl.org/coar/resource_type/CQMR-7K63>`_): Data registered by mechanical or electronic means, in a form that allows the information to be retrieved and/or reproduced. For example, images or sounds on disc or magnetic tape. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **simulation data** (`<http://purl.org/coar/resource_type/W2XT-7017>`_): Data resulting from modeling or imitative representation of real-world processes, events, or systems, often using computer programs. For example, a program modeling household consumption responses to indirect tax changes; or a dataset on hypothetical patients and their drug exposure, background conditions, and known adverse events. [Source: Adapted from https://ddialliance.org/Specification/DDI-CV/ModeOfCollection_3.0.html]
    * **survey data** (`<http://purl.org/coar/resource_type/NHD0-W6SY>`_): Data resulting from a survey, which is defined as an investigation about the characteristics of a given population by means of collecting data from a sample of that population and estimating their characteristics through the systematic use of statistical methodology. Included are censuses, sample surveys, the collection of data from administrative records and derived statistical activities as well as questionnaires. [Source: Adapted from https://stats.oecd.org/glossary/detail.asp?ID=2620]
  * **design** (`<http://purl.org/coar/resource_type/542X-3S04>`_): Plans, drawing or set of drawings showing how something e.g. building, product is to be made and how it will work and look. [Source: Adapted from https://dictionary.cambridge.org/dictionary/english/design]

    * **industrial design** (`<http://purl.org/coar/resource_type/JBNF-DYAD>`_): Industrial designs are applied to a wide variety of industrial products and handicrafts. They refer to the ornamental or aesthetic aspects of a useful article,including compositions of lines or colors or any three-dimensional forms that give a special appearance to a product or handicraft. [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
    * **layout design** (`<http://purl.org/coar/resource_type/BW7T-YM2G>`_): Layout-design (topography) means the three-dimensional disposition, however expressed, of the interconnections of an integrated circuit, or such a three-dimensional disposition prepared for an integrated circuit intended for manufacture the elements of an integrated circuit (at least one of which is an active element) and of some or all. [Source: https://www.wipo.int/edocs/lexdocs/laws/en/hk/hk028en.pdf]
  * **image** (`<http://purl.org/coar/resource_type/c_c513>`_): A visual representation other than text, including all types of moving image and still image. [Source: Adapted from http://purl.org/dc/dcmitype/Image]

    * **moving image** (`<http://purl.org/coar/resource_type/c_8a7e>`_): A moving display, either generated dynamically by a computer program or formed from a series of pre-recorded still images imparting an impression of motion when shown in succession. [Source: http://purl.org/spar/fabio/MovingImage]

      * **video** (`<http://purl.org/coar/resource_type/c_12ce>`_): A recording of visual images, usually in motion and with sound accompaniment. [Source: http://www.ifla.org/files/assets/cataloguing/isbd/isbd-cons_20110321.pdf ]
    * **still image** (`<http://purl.org/coar/resource_type/c_ecc8>`_): A recorded static visual representation. This class of image includes diagrams, drawings, graphs, graphic designs, plans, photographs and prints. [Source: Adapted from http://purl.org/spar/fabio/StillImage]
  * **interactive resource** (`<http://purl.org/coar/resource_type/c_e9a0>`_): A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments. Source: http://purl.org/dc/dcmitype/InteractiveResource

    * **website** (`<http://purl.org/coar/resource_type/c_7ad9>`_): A collection of related web pages containing text, images, videos and/or other digital assets that are addressed relative to a common Uniform Resource Locator (URL). A web site is hosted on at least one web server, accessible via a network such as the Internet or a private local area network. [Source: http://purl.org/spar/fabio/WebSite]
  * **interview** (`<http://purl.org/coar/resource_type/c_26e4>`_): A discussion between a reporter, host, panel, or audience and a newsmaker, author, or celebrity, recorded (edited or unedited) in print, on film or video, as transcript or as a sound recording. (Adapted from ODLIS)
  * **learning object** (`<http://purl.org/coar/resource_type/c_e059>`_): A digital resource that can be reused to enhance teaching and learning. [Source: https://icas-ca.org/archive/projects/coerc/oer-glossary]
  * **other** (`<http://purl.org/coar/resource_type/c_1843>`_): A resource type that is not included in existing terms. [COAR definition]
  * **patent** (`<http://purl.org/coar/resource_type/c_15cd>`_): A patent or patent application. A set of exclusive rights granted by law to applicants for inventions that are new, non-obvious and commercially applicable. A patent is valid for a limited period (generally 20 years), during which time patent holders can commercially exploit their inventions on an exclusive basis. [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]

    * **PCT application** (`<http://purl.org/coar/resource_type/SB3Y-W4EH>`_): A patent application filed through the WIPO-administered Patent Cooperation Treaty (PCT), also known as an international application. [Source: Adapted from https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
    * **design patent** (`<http://purl.org/coar/resource_type/C53B-JCY5>`_): A patent granted to any person who has invented any new and non-obvious ornamental design for an article of manufacture. The design patent protects only the appearance of an article, but not its structural or functional features. [Source: Adapted from https://www.uspto.gov/patents/basics/types-patent-applications/design-patent-application-guide#def]
    * **plant patent** (`<http://purl.org/coar/resource_type/Z907-YMBB>`_): A patent granted to anyone who has invented or discovered and asexually reproduced any distinct and new variety of plant, including cultivated sports, mutants, hybrids, and newly found seedlings, other than a tuber-propagated plant or a plant found in an uncultivated state. [Source: Adapted from https://www.uspto.gov/patents/basics/types-patent-applications/general-information-about-35-usc-161#heading-1]
    * **plant variety protection** (`<http://purl.org/coar/resource_type/GPQ7-G5VE>`_): Plant variety protection, also called a "plant breeder's right" (PBR), is a form of intellectual property right granted to the breeder of a new plant variety . According to this right, certain acts concerning the exploitation of the protected variety require the prior authorization of the breeder. Plant variety protection is an independent sui generis form of protection, tailored to protect new plant varieties and has certain features in common with other intellectual property rights. [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
    * **software patent** (`<http://purl.org/coar/resource_type/MW8G-3CR8>`_): In order to obtain a patent, a software invention must not fall under other non-patentable subject matter (for example, abstract ideas or mathematical theories) and has to fulfill the other substantive patentability criteria (for example, novelty, inventive step [non-obviousness] and industrial applicability [usefulness]). [Source: https://www.wipo.int/patents/en/faq_patents.html]
    * **utility model** (`<http://purl.org/coar/resource_type/9DKX-KSAF>`_): A special form of patent right granted by a state or jurisdiction to an inventor or the inventor’s assignee for a fixed period of time. The terms and conditions for granting a utility model are slightly different from those for normal patents (including a shorter term of protection and less stringent patentability requirements). The term can also describe what are known in certain countries as “petty patents,” “short-term patents” or “innovation patents.” [Source: https://www.wipo.int/edocs/pubdocs/en/wipo_pub_943_2018.pdf]
  * **research data** (`<http://purl.org/coar/resource_type/EHVM-H119>`_): Data that are used as primary sources to support technical or scientific enquiry, research, scholarship, or artistic activity, and that are used as evidence in the research process and/or are commonly accepted in the research community as necessary to validate research findings and results. [Source: https://casrai.org/term/research-data]
  * **software** (`<http://purl.org/coar/resource_type/c_5ce6>`_): A computer program in source code (text) or compiled form. [Source: http://purl.org/dc/dcmitype/Software]

    * **research software** (`<http://purl.org/coar/resource_type/c_c950>`_): Software that is used to generate, process or analyse results that you intend to appear in a publication (either in a journal, conference paper, monograph, book or thesis). Research software can be anything from a few lines of code written by yourself, to a professionally developed software package. [Source: https://datashare.ed.ac.uk/handle/10283/785]
    * **source code** (`<http://purl.org/coar/resource_type/QH80-2R4E>`_): Source code is any collection of code, with or without comments, written using a human-readable programming language, usually as plain text. [Source: https://en.wikipedia.org/wiki/Source_code]
  * **sound** (`<http://purl.org/coar/resource_type/c_18cc>`_): A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds. [Source: http://dublincore.org/documents/dcmi-terms/#dcmitype-Sound]

    * **musical composition** (`<http://purl.org/coar/resource_type/c_18cd>`_): Musical composition can refer to an original piece of music, the structure of a musical piece, or the process of creating a new piece of music. [Source: https://en.wikipedia.org/wiki/Musical_composition ]
  * **trademark** (`<http://purl.org/coar/resource_type/H6QP-SC1X>`_): A sign used to distinguish the goods or services of one undertaking from those of others. A trademark may consist of words and combinations of words (for instance, names or slogans), logos, figures and images, letters, numbers, sounds, or, in rare instances, smells or moving images, or a combination thereof. [Source: https://www.wipo.int/trademarks/en]
  * **workflow** (`<http://purl.org/coar/resource_type/c_393c>`_): A recorded sequence of connected steps, which may be automated, specifying a reliably repeatable sequence of operations to be undertaken when conducting a particular job, for example an in silico investigation that extracts and processes information from a number of bioinformatics databases. [Source: Adapted from http://purl.org/spar/fabio/Workflow]



Language
^^^^^^^^
:Description: The language or languages of the product, if applicable. Please use the IETF language tags as described in the IETF BCP 47 document.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Language``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<http://publications.europa.eu/resource/authority/language>`_ semantics



Name
^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Name`` as a multilingual string
:CERIF: the ResultProduct.Name attribute (`<https://w3id.org/cerif/model#ResultProduct.Name>`_)



VersionInfo
^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``VersionInfo`` as a multilingual string
:CERIF: the ResultProduct.VersionInfo attribute (`<https://w3id.org/cerif/model#ResultProduct.VersionInfo>`_)



ARK
^^^
:Use: optional (0..1)
:Representation: XML element ``ARK``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



DOI
^^^
:Description: The Digital Object Identifier
:Use: optional (0..1)
:Representation: XML element ``DOI``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``10\.\d{4,}(\.\d+)*/[^\s]+`` (as per `<https://www.crossref.org/blog/dois-and-matching-regular-expressions/>`_)


Handle
^^^^^^
:Use: optional (0..1)
:Representation: XML element ``Handle``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



URL
^^^
:Use: optional (0..1)
:Representation: XML element ``URL``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



URN
^^^
:Use: optional (0..1)
:Representation: XML element ``URN``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



Creators
^^^^^^^^
:Description: The creators of this product
:Use: optional (0..1)
:Representation: XML element ``Creators`` with ordered embedded XML elements ``Creator`` that can contain an embedded person with affiliations or organisation unit



Creator
-------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Creator`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements, or ``OrgUnit``. A ``DisplayName`` may be specified, too.
:CERIF: the Person_ResultProduct linking entity (`<https://w3id.org/cerif/model#Person_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Creator>`_ semantics; the OrganisationUnit_ResultProduct linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Creator>`_ semantics



Publishers
^^^^^^^^^^
:Description: The publisher or publishers of this product
:Use: optional (0..1)
:Representation: XML element ``Publishers`` with ordered embedded XML elements ``Publisher`` that can contain an embedded organisation unit or person



Publisher
---------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Publisher`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the OrganisationUnit_ResultProduct linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Publisher>`_ semantics; the Person_ResultProduct linking entity (`<https://w3id.org/cerif/model#Person_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Publisher>`_ semantics



License
^^^^^^^
:Description: The license of the product
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``License`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultProduct_Classification (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_)


Description
^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Description`` as a multilingual string
:CERIF: the ResultProduct.Description attribute (`<https://w3id.org/cerif/model#ResultProduct.Description>`_)



Subject
^^^^^^^
:Description: The subject of the product from a classification
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subject`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultProduct_Classification (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_)


Keyword
^^^^^^^
:Description: A single keyword or key expression. Please repeat to serialize separate keywords or key expressions.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Keyword`` as a multilingual string
:CERIF: the ResultProduct.Keywords attribute (`<https://w3id.org/cerif/model#ResultProduct.Keywords>`_)



PartOf
^^^^^^
:Description: Link to the research output of which this product is a part (e.g. a data set collection that contains it)
:Use: optional (0..1)
:Representation: XML element ``PartOf`` with embedded XML element ``Publication`` or ``Patent`` or ``Product``
:CERIF: the ResultProduct_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/InterProductRelations#Part>`_ semantics (direction :1)



OriginatesFrom
^^^^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OriginatesFrom`` with embedded XML element ``Project`` or ``Funding``
:CERIF: the Project_ResultProduct linking entity (`<https://w3id.org/cerif/model#Project_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/ProjectOutputRoles#Originator>`_ semantics; the ResultProduct_Funding linking entity (`<https://w3id.org/cerif/model#ResultProduct_Funding>`_) with the `<https://w3id.org/cerif/vocab/OutputFundingRoles#Originator>`_ semantics



GeneratedBy
^^^^^^^^^^^
:Description: The equipment that generated this product
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``GeneratedBy`` with embedded XML element ``Equipment``
:CERIF: the ResultProduct_Equipment linking entity (`<https://w3id.org/cerif/model#ResultProduct_Equipment>`_) with the `<https://w3id.org/cerif/vocab/OutputResearchInfrastructureRelations#Generation>`_ semantics



PresentedAt
^^^^^^^^^^^
:Description: The event where this product was presented
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``PresentedAt`` with embedded XML element ``Event``
:CERIF: the ResultProduct_Event linking entity (`<https://w3id.org/cerif/model#ResultProduct_Event>`_) with the `<https://w3id.org/cerif/vocab/EventOutputRelationships#Presented>`_ semantics



Coverage
^^^^^^^^
:Description: The event that is covered by this product (e.g. a video or audio interview about the event)
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Coverage`` with embedded XML element ``Event``
:CERIF: the ResultProduct_Event linking entity (`<https://w3id.org/cerif/model#ResultProduct_Event>`_) with the `<https://w3id.org/cerif/vocab/EventOutputRelationships#Coverage>`_ semantics



References
^^^^^^^^^^
:Description: Result outputs that are referenced by this product
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``References`` with embedded XML element ``Publication`` or ``Patent`` or ``Product``
:CERIF: the ResultPublication_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultProduct_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultProduct_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1)



ns4:Access
^^^^^^^^^^
:Description: The open access type of the product
:Use: optional (0..1)
:Representation: XML element ``Access`` from namespace `<http://purl.org/coar/access_right>`_
:CERIF: the ResultProduct_Classification (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_)
:Vocabulary: 

  * **open access** (`<http://purl.org/coar/access_right/c_abf2>`_): Open access refers to a resource that is immediately and permanently online, and free for all on the Web, without financial and technical barriers.The resource is either stored in the repository or referenced to an external journal or trustworthy archive.
  * **embargoed access** (`<http://purl.org/coar/access_right/c_f1cf>`_): Embargoed access refers to a resource that is metadata only access until released for open access on a certain date. Embargoes can be required by publishers and funders policies, or set by the author (e.g such as in the case of theses and dissertations).
  * **restricted access** (`<http://purl.org/coar/access_right/c_16ec>`_): Restricted access refers to a resource that is available in a system but with some type of restriction for full open access. This type of access can occur in a number of different situations. Some examples are described below: The user must log-in to the system in order to access the resource The user must send an email to the author or system administrator to access the resource Access to the resource is restricted to a specific community (e.g. limited to a university community)
  * **metadata only access** (`<http://purl.org/coar/access_right/c_14cb>`_): Metadata only access refers to a resource in which access is limited to metadata only. The resource itself is described by the metadata, but neither is directly available through the system or platform nor can be referenced to an open access copy in an external journal or trustworthy archive.




