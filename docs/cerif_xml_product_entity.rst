.. _product:


Product
=======
:Description: Any result of research other than Publication or Patent. This includes: (1) research datasets, (2) software, (3) visualisations: still or moving images, including maps and other cartographic material, (4) audio recordings, (5) other objects that can be perceived through human senses.
:Examples: `openaire_cerif_xml_example_products.xml <https://github.com/openaire/guidelines-cris-managers/blob/master/samples/openaire_cerif_xml_example_products.xml>`_
:Representation: XML element ``Product``; the rest of this section documents children of this element
:CERIF: the ResultProduct entity (`<https://w3id.org/cerif/model#ResultProduct>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the ResultProductIdentifier attribute (`<https://w3id.org/cerif/model#ResultProduct.ResultProductIdentifier>`_)


Type
^^^^
:Description: The type of the resulting product (other than publication or patent)
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace ``https://www.openaire.eu/cerif-profile/vocab/COAR_Product_Types``
:CERIF: the ResultProduct_Classification (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_)
:Vocabulary: Product types extracted from the COAR Resource Types concept scheme: Types of products as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, all types that do not descend from 'text').

  * **interactive resource** (`<http://purl.org/coar/resource_type/c_e9a0>`_): A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.

    * **website** (`<http://purl.org/coar/resource_type/c_7ad9>`_): A website, also written as web site or simply site, is a set of related web pages typically served from a single web domain. A website is hosted on at least one web server, accessible via a network such as the Internet or a private local area network through an Internet address known as a uniform resource locator (URL). All publicly accessible websites collectively constitute the World Wide Web.
  * **dataset** (`<http://purl.org/coar/resource_type/c_ddb1>`_): A collection of related facts and data encoded in a defined structure. (adapted from fabio; DataCite)
  * **image** (`<http://purl.org/coar/resource_type/c_c513>`_): A visual representation other than text, including all types of moving image and still image.

    * **moving image** (`<http://purl.org/coar/resource_type/c_8a7e>`_): A moving display, either generated dynamically by a computer program or formed from a series of pre-recorded still images imparting an impression of motion when shown in succession. (adapted from fabio)

      * **video** (`<http://purl.org/coar/resource_type/c_12ce>`_): A recording of visual images, usually in motion and with sound accompaniment.
    * **still image** (`<http://purl.org/coar/resource_type/c_ecc8>`_): A recorded static visual representation. This class of image includes diagrams, drawings, graphs, graphic designs, plans, photographs and prints.
  * **other** (`<http://purl.org/coar/resource_type/c_1843>`_): A rest category which may cover text, interactive, sound, or image-based resources not explicitly addressed in any concept in this vocabulary
  * **software** (`<http://purl.org/coar/resource_type/c_5ce6>`_): A computer program in source code (text) or compiled form.
  * **workflow** (`<http://purl.org/coar/resource_type/c_393c>`_): A recorded sequence of connected steps, which may be automated, specifying a reliably repeatable sequence of operations to be undertaken when conducting a particular job, for example an in silico investigation that extracts and processes information from a number of bioinformatics databases.
  * **cartographic material** (`<http://purl.org/coar/resource_type/c_12cc>`_): Any material representing the whole or part of the earth or any celestial body at any scale. Cartographic materials include two- and three-dimensional maps and plans (including maps of imaginary places); aeronautical, navigational, and celestial charts; atlases; globes; block diagrams; sections; aerial photographs with a cartographic purpose; bird's-eye views (map views), etc.

    * **map** (`<http://purl.org/coar/resource_type/c_12cd>`_): Defined as a representation normally to scale and on a flat medium, of a selection of material or abstract features on, or in relation to, the surface of the earth or of another celestial body.
  * **sound** (`<http://purl.org/coar/resource_type/c_18cc>`_): A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.

    * **musical composition** (`<http://purl.org/coar/resource_type/c_18cd>`_): Musical composition can refer to an original piece of music, the structure of a musical piece, or the process of creating a new piece of music.



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
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



DOI
^^^
:Use: optional (0..1)
:Representation: XML element ``DOI``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



Handle
^^^^^^
:Use: optional (0..1)
:Representation: XML element ``Handle``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



URL
^^^
:Use: optional (0..1)
:Representation: XML element ``URL``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



URN
^^^
:Use: optional (0..1)
:Representation: XML element ``URN``
:CERIF: the FederatedIdentifier entity (``https://w3id.org/cerif/model#FederatedIdentifier``)



Creators
^^^^^^^^
:Description: The creators of this product
:Use: optional (0..1)
:Representation: XML element ``Creators`` with ordered embedded XML elements ``Creator`` that can contain an embedded person with affiliations or organisation unit



Creator
-------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Creator`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements, or ``OrgUnit``
:CERIF: the Person_ResultProduct linking entity (`<https://w3id.org/cerif/model#Person_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Creator>`_ semantics; the OrganisationUnit_ResultProduct linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Creator>`_ semantics


Publishers
^^^^^^^^^^
:Description: The publisher or publishers of this product
:Use: optional (0..1)
:Representation: XML element ``Publishers`` with ordered embedded XML elements ``Publisher`` that can contain an embedded organisation unit or person



Publisher
---------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Publisher`` with embedded XML element ``OrgUnit`` or ``Person``
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
:CERIF: the ResultProduct_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/Inter-ProductRelations#Part>`_ semantics (direction :1)


OriginatesFrom
^^^^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OriginatesFrom`` with embedded XML element ``Project`` or ``Funding``
:CERIF: the Project_ResultProduct linking entity (`<https://w3id.org/cerif/model#Project_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/Project_Output_Roles#Originator>`_ semantics; the ResultProduct_Funding linking entity (`<https://w3id.org/cerif/model#ResultProduct_Funding>`_) with the `<https://w3id.org/cerif/vocab/Funding_Output_Roles#Originator>`_ semantics


GeneratedBy
^^^^^^^^^^^
:Description: The equipment that generated this product
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``GeneratedBy`` with embedded XML element ``Equipment``
:CERIF: the ResultProduct_Equipment linking entity (`<https://w3id.org/cerif/model#ResultProduct_Equipment>`_) with the `<https://w3id.org/cerif/vocab/InfrastructureOutputRelations#Generation>`_ semantics


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
:CERIF: the ResultPublication_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/Inter-OutputRelations#Reference>`_ semantics (direction :1); the ResultProduct_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/Inter-OutputRelations#Reference>`_ semantics (direction :1); the ResultProduct_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultProduct_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/Inter-OutputRelations#Reference>`_ semantics (direction :1)



