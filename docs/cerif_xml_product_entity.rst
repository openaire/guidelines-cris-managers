.. _c:product

Product
=======
:Representation: XML element ``Product``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: 
:CERIF: the *TODO* entity (``cfResProd``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfResProd.cfResProdId``)

Type
^^^^
:Representation: XML element ``Type`` from namespace ``https://www.openaire.eu/cerif-profile/vocab/COAR_Product_Types``
:Description: 
:CERIF: the *TODO* classification (``cfResProd_Class``)
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
:Representation: XML element ``Name``
:Description: 
:CERIF: the *TODO* attribute (``cfResProdName.cfName``)

AlternateName
^^^^^^^^^^^^^
:Representation: XML element ``AlternateName``
:Description: 
:CERIF: the *TODO* attribute (``cfResProdName.cfAltName``)

VersionInfo
^^^^^^^^^^^
:Representation: XML element ``VersionInfo``
:Description: 
:CERIF: the *TODO* attribute (``cfResProdName.cfVersInfo``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: 
:CERIF: the Federated Identifier entity (``cfFedId``)

Description
^^^^^^^^^^^
:Representation: XML element ``Description``
:Description: 
:CERIF: the *TODO* attribute (``cfResProdDescr.cfDescr``)

Keywords
^^^^^^^^
:Representation: XML element ``Keywords``
:Description: 
:CERIF: the *TODO* attribute (``cfResProdKeyw.cfKeyw``)

PartOf
^^^^^^
:Representation: XML element ``PartOf`` with embedded XML element ``Product``
:Description: Link to the Product of which this product is a part (e.g. a file in a dataset that contains it)
:CERIF: the *TODO* linking entity (``cfResProd_ResProd(http://eurocris.org/cerif/vocab/Inter-­ProductRelations#Part):1``)

Parts
^^^^^
:Representation: XML element ``Parts`` with embedded XML elements ``Part``
:Description: Link to the Product of which this product is a part (e.g. a file in a dataset that contains it)
:CERIF: *TODO*

CitedBy
^^^^^^^
:Representation: XML element ``CitedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):2``)

Cites
^^^^^
:Representation: XML element ``Cites`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Citation):1``)

SupplementTo
^^^^^^^^^^^^
:Representation: XML element ``SupplementTo`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):2``)

SupplementedBy
^^^^^^^^^^^^^^
:Representation: XML element ``SupplementedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Supplement):1``)

References
^^^^^^^^^^
:Representation: XML element ``References`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):2``)

ReferencedBy
^^^^^^^^^^^^
:Representation: XML element ``ReferencedBy`` with embedded XML element ``ResearchOutput__SubstitutionGroupHead``
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1 cfResPat_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1 cfResProd_ResPat(http://eurocris.org/cerif/vocab/Inter-Output_Roles#Reference):1``)



