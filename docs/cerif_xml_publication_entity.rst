.. _c:publicationentity:

Publication
===========

Corresponding CERIF entity: ``cfResPubl``
Representation: XML element ``Publication``
Examples: openaire_cerif_xml_example_publications.xml
Description: The CERIF entity cfResultPublication cfResPubl is used in the context of OpenAIRE to represent research results that are considered text publications. Metadata about scientific journals are also represented using the cfResPubl entity.


Identifier
^^^^^^^^^^

Corresponding CERIF attribute: ``cfResPubl.cfResPublId`` 
Representation: XML Attribute ``id``
Format: identifier of the publication (see a later section for instructions)
Use: mandatory


Type
^^^^

Corresponding CERIF classification: ``cfResPubl_Class`` with class scheme `http://openaire.eu/cerif/vocab/COAR_Publication_Types`
Representation: XML element ``Type`` from namespace ``http://openaire.eu/cerif/vocab/COAR_Publication_Types``
Format: URI
Use: mandatory
Applicable vocabulary: Part of the COAR Resource Types concept scheme: the concept ``text`` and its descendants except for ``patent``

* `text <http://purl.org/coar/resource_type/c_18cf>`
  * `annotation <http://purl.org/coar/resource_type/c_1162>`
  * `bibliography <http://purl.org/coar/resource_type/c_86bc>`
  * ...


Title
^^^^^

Corresponding CERIF multilingual attribute: ``cfResPublTitle.cfTitle``
Representation: XML element ``Title``
Format: multilingual character string
Use: value in at least one language shall be provided, translations in any number of languages can be provided as well


Subtitle
^^^^^^^^

Corresponding CERIF multilingual attribute: ``cfResPublSubtitle.cfSubtitle``
Representation: XML element ``Subtitle``
Format: multilingual character string
Use: optional, translations in any number of languages can be provided as well


Published in Publishing Channel
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Corresponding CERIF link: ``cfResPubl_ResPubl`` with type ``Published in`` from class scheme ``....``
Representation: XML element ``PublishedIn`` with embedded XML element ``PublishingChannel``
Use: mandatory where the publication appeared in a publishing channel (e.g. a journal, book series, conference series)
Scope of information about the publishing channel: the basic data about the publishing channel 


Published as a part of a larger publication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Corresponding CERIF link: ``cfResPubl_ResPubl`` with type ``Part`` from class scheme ``....``
Representation: XML element ``PartOf`` with embedded XML element ``Publication``
Use: mandatory where the publication appeared as a part of a larger publication (e.g. a chapter in a book, a conference paper in the conference proceedings)
Scope of information about the larger publication: the necessary information to construct a bibliographic reference  


Publication Date
^^^^^^^^^^^^^^^^

Corresponding CERIF attribute: `cfResPubl.cfResPublDate`
Representation: XML element `PublicationDate`
Format: yyyy-mm-dd 
Use: optional



**the example ends here**













Federated Identifiers
^^^^^^^^^^^^^^^^^^^^^

(occurences: 0..N)

*cfResPubl.cfFedId.cfFedId* (where the type of identifier is given through *cfResPubl.cfFedId.cfFedId_Class*)

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* **DOI**
* **Handle**
* **PMCID**
* **ISI-Number**
* **SCP-Number**
* **ISSN**
* **ISBN**
* **URL**

as defined in CERIF Semantics "Identifier Types" scheme.

Title
^^^^^

(occurences: 1)

*cfResPubl.cfTitle*

Subtitle
^^^^^^^^

(occurences: 0..1)

*cfResPubl.cfSubTitle*

Description
^^^^^^^^^^^

(occurences: 1)

*cfResPubl.cfAbstr*

Subject
^^^^^^^

(occurences: 0..N)

*cfResPubl.cfKeyw*; *cfResPubl.cfResPubl_Class*

Applicable Vocabularies
"""""""""""""""""""""""

The cfResPubl.Keyw attribute may contain free-text keywords (multiple keywords can be
included in one instance of the *cfResPubl.cfKeyw* field as a semi-colon separated list).
*cfResPubl.cfResPubl_Class* may contain subject classification(s) according to a controlled
vocabulary. No single specific controlled vocabulary is enforced by the guidelines.

Languague
^^^^^^^^^

(occurences: 1)

*cfResPubl.ResPubl_Class*

Applicable Vocabularies
"""""""""""""""""""""""

Use ISO 639-1 (two letter codes), as recommended by CERIF.

Publication Types
^^^^^^^^^^^^^^^^^

(occurences: 1)

*cfResPubl.cfResPubl_Class*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* **Book**
* **Book Review**
* **Book Chapter Abstract**
* **Book Chapter Review**
* **Inbook**
* **Anthology**
* **Monograph**
* **Referencebook**
* **Textbook**
* **Encyclopedia**
* **Manual**
* **Otherbook**
* **Journal**
* **Journal Article**
* **Journal Article Abstract**
* **Journal Article Review**
* **Conference Proceedings**
* **Conference Proceedings Article**
* **Conference Abstract**
* **Conference Poster**
* **Letter**
* **Letter to Editor**
* **PhD Thesis**
* **Doctoral Thesis**
* **Supervised Student Publications**
* **Report**
* **Short Communication**
* **Poster**
* **Presentation**
* **Newsclipping**
* **Commentary**
* **Annotation**
* **Transliteration**
* **Translation**
* **Authored Book**
* **Edited Book**
* **Chapter in Book**
* **Scholarly Edition**
* **Conference Contribution**
* **Working Paper**
* **Research Report for external body**
* **Confidential Report (for external body)**
* **Encyclopedia Entry**
* **Magazine Article**
* **Dictionary Entry**
* **Online Resource**
* **Standard and Policy**

  as defined in CERIF Semantics “Output Types” scheme.

OA Types
^^^^^^^^

(occurences: 1)

  *cfResPubl.ResPubl_Class*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* ``info:eu-repo/semantics/closedAccess``
* ``info:eu-repo/semantics/embargoedAccess``
* ``info:eu-repo/semantics/restrictedAccess``
* ``info:eu-repo/semantics/openAccess``

as defined in the info:eu-repo Access Terms vocabulary 
(http://purl.org/REP/standards/info-eu-repo#info-eu-repo-AccessRights).
If the material is licensed under a Creative Commons license then links
should be provided to applicable Creative Commons licenses, e.g.:

* http://creativecommons.org/licenses/zero/1.0/
* http://creativecommons.org/licenses/by/3.0/

In the case of embargoedAccess, the endDate of the classification specifies the embargo end date for the publication.
 
Relationship(s) with
--------------------

Person
^^^^^^

(occurences: 0..N)

*cfResPubl.cfPers_ResPubl*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* **Author**
* **Editor**

as defined in CERIF Semantics  “Person Output Contributions” scheme.

Organisation
^^^^^^^^^^^^

(occurences: 0..N)

*cfResPubl.cfOrgUnit_ResPubl*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* **Author Institution**
* **Editor Institution**
* **Publisher Institution**

as defined in CERIF Semantics  “Organisation Output Roles” scheme.

Project 
^^^^^^^

(occurences: 0..N)

*cfResPubl.cfProj_ResPubl*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary:

* **Originator**

as defined in CERIF Semantics  “Project Output Roles” scheme. I.e. Publication has originator Project.

Product (Dataset)
^^^^^^^^^^^^^^^^^

(occurences: 0..N)

*cfResPubl.cResPubl_ResProd*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary: 

* **Reference**

as defined in CERIF Semantics “Inter-Output Relations” scheme.

Publication
^^^^^^^^^^^

(occurences: 0..1)

.. hint:: 
   one publication (document) can appear in at most one source (journal/book), if it did in two, it wouldn't be the same publication record

*cfResPubl.cfResPubl_ResPubl*

Applicable Vocabularies
"""""""""""""""""""""""

The range of allowed values is limited to the following controlled vocabulary: 

* **Part**

as defined in CERIF Semantics “Inter-Publication Relations” scheme.

.. note::

   Articles can be related with the journal they appear in using the *cfResPubl_ResPubl* link entity with the “Part” classification term (*eda28bc1-34c5-11e1-b86c-0800200c9a66*) with a clear direction from the article *cfResPublId1* to the host journal *cfResPublId2*.



