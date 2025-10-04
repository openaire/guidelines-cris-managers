.. _publication:


Publication
===========
:Description: A text based scholarly publication or publishing channel that contains results of research. CRISs typically record metadata about scholarly publications from the scope of the CRIS (institutional CRIS for the institution, funder CRIS for the funding it distributed, etc.) in the context of the research projects, infrastructure, funding, organization units and authors/contributors. This entity typically represents the granularity level of a single published item for which attribution information is attached (usually in the form of a list of authors and contributors). This entity is also used to represent publishing channels and sources: journals and book series (incl. continuing conference proceedings series). (Taken from https://doi.org/10.1016/j.procs.2014.06.008)
:Examples: `openaire_cerif_xml_example_publications.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_cerif_xml_example_publications.xml>`_
:Representation: XML element ``Publication``; the rest of this section documents children of this element
:CERIF: the ResultPublication entity (`<https://w3id.org/cerif/model#ResultPublication>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See :ref:`Metadata representation in CERIF XML`
:Representation: XML attribute ``id``
:CERIF: the ResultPublicationIdentifier attribute (`<https://w3id.org/cerif/model#ResultPublication.ResultPublicationIdentifier>`_)


Type
^^^^
:Description: The type of the publication
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Publication_Types>`_
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)
:Vocabulary: Publication types extracted from the COAR Resource Types concept scheme (https://vocabularies.coar-repositories.org/resource_types/). 
  The term *text* and its descendants (except *patent*) are relevant. 
  Some terms are marked as deprecated and may be removed in future guideline releases.

**Examples (COAR Types):**

text (``<http://purl.org/coar/resource_type/c_18cf>``_)
  A resource consisting primarily of words for reading.  
  Examples: books, letters, dissertations, poems, newspapers, articles, mailing list archives.  
  [Source: http://purl.org/dc/dcmitype/Text]

annotation (``<http://purl.org/coar/resource_type/c_1162>``_)
  A legally explanatory comment on a decision handed down by a court or tribunal.  
  [Source: DRIVER info:eu-repo definition]

bibliography (``<http://purl.org/coar/resource_type/c_86bc>``_)
  A list of the books and articles used when writing a book or article.  
  [Source: Cambridge Dictionary]

blog post (``<http://purl.org/coar/resource_type/c_6947>``_)
  A piece of writing or content published on a blog.  
  [Source: Lexico]

book (``<http://purl.org/coar/resource_type/c_2f33>``_)
  A non-serial publication complete in one or several volumes.  
  [Source: Adapted from http://purl.org/eprint/type/Book]

book part (``<http://purl.org/coar/resource_type/c_3248>``_)
  A defined chapter or section of a book, usually with a separate title or number.  
  [Source: http://purl.org/spar/fabio/BookChapter]

conference output (``<http://purl.org/coar/resource_type/c_c94f>``_)
  Digital resources contributed to a conference (presentations, reports, lectures, abstracts, demos).  
  [COAR definition]

conference paper not in proceedings (``<http://purl.org/coar/resource_type/c_18cp>``_)
  A research paper not published in proceedings.  
  [Source: Adapted from http://purl.org/spar/fabio/ConferencePaper]

conference poster not in proceedings (``<http://purl.org/coar/resource_type/c_18co>``_)
  A poster not published in proceedings, often presenting hypotheses or early results.  
  [Source: Adapted from http://purl.org/spar/fabio/ConferencePoster]

conference presentation (``<http://purl.org/coar/resource_type/R60J-J5BD>``_)
  A set of slides communicating research results at a conference.  
  [Source: http://purl.org/spar/fabio/Presentation]

conference proceedings (``<http://purl.org/coar/resource_type/c_f744>``_)
  The official record of a conference meeting.  
  [Source: IEEE]

conference paper (``<http://purl.org/coar/resource_type/c_5794>``_)
  A research paper published within a conference proceeding.  
  [Source: http://purl.org/spar/fabio/ConferencePaper]

conference poster (``<http://purl.org/coar/resource_type/c_6670>``_)
  A display poster published within a conference proceeding.  
  [Source: http://purl.org/spar/fabio/ConferencePoster]

lecture (``<http://purl.org/coar/resource_type/c_8544>``_)
  Transcription of an oral presentation or talk.  
  [Source: Wikipedia]

letter (``<http://purl.org/coar/resource_type/c_0857>``_)
  A brief description of important new research, also known as “communication”.  
  [Source: CERIF]

magazine (``<http://purl.org/coar/resource_type/c_2cd9>``_)
  A popular interest periodical or trade publication.  
  [Source: Adapted from The Balance / ODLIS]

manuscript (``<http://purl.org/coar/resource_type/c_0040>``_)
  A work of any kind written entirely by hand.  
  [Source: ODLIS]

musical notation (``<http://purl.org/coar/resource_type/c_18cw>``_)
  Symbols used to write music or express mathematical concepts.  
  [Source: ODLIS]

newspaper (``<http://purl.org/coar/resource_type/c_2fe3>``_)
  A non-peer-reviewed periodical published daily or weekly.  
  [Source: http://purl.org/spar/fabio/Newspaper]

newspaper article (``<http://purl.org/coar/resource_type/c_998f>``_)
  A news item appearing in a general-interest newspaper.  
  [Source: reference.md]

other periodical (``<http://purl.org/coar/resource_type/QX5C-AR31>``_)
  A periodical not included in the top concept “Text”.  
  [COAR definition]

journal (``<http://purl.org/coar/resource_type/c_0640>``_)
  A serial publication devoted to original research.  
  [Source: ODLIS]

editorial (``<http://purl.org/coar/resource_type/c_b239>``_)
  An essay expressing the opinion of the editor(s).  
  [Source: ODLIS]

journal article (``<http://purl.org/coar/resource_type/c_6501>``_)
  A research article published in a journal.  
  [Source: http://purl.org/spar/fabio/JournalArticle]

corrigendum (``<http://purl.org/coar/resource_type/c_7acd>``_)
  A correction to a previously published document.  
  [Source: FaBiO]

data paper (``<http://purl.org/coar/resource_type/c_beb9>``_)
  A peer-reviewed article describing a dataset.  
  [Source: Wikipedia]

research article (``<http://purl.org/coar/resource_type/c_2df8fbb1>``_)
  A primary source reporting original research.  
  [Source: Apus Library]

review article (``<http://purl.org/coar/resource_type/c_dcae04bc>``_)
  A secondary source summarizing other research.  
  [Source: Apus Library]

software paper (``<http://purl.org/coar/resource_type/c_7bab>``_)
  An article describing a software tool.  
  [Source: F1000Research]

letter to the editor (``<http://purl.org/coar/resource_type/c_545b>``_)
  A letter commenting on previously published work.  
  [Source: FaBiO]

preprint (``<http://purl.org/coar/resource_type/c_816b>``_)
  A manuscript without peer review.  
  [Source: ASAPbio]

report (``<http://purl.org/coar/resource_type/c_93fc>``_)
  A published record of research findings or technical results.  
  [Source: ODLIS]

clinical study (``<http://purl.org/coar/resource_type/c_7877>``_)
  Reports results of biomedical or health-related studies.  
  [Source: PubMed]

data management plan (``<http://purl.org/coar/resource_type/c_ab20>``_)
  A statement describing how data will be managed.  
  [Source: CASRAI]

internal report (``<http://purl.org/coar/resource_type/c_18ww>``_)
  Findings collected for internal use only.  

memorandum (``<http://purl.org/coar/resource_type/c_18wz>``_)
  A formal note distributed internally.  
  [Source: ODLIS]

other type of report (``<http://purl.org/coar/resource_type/c_18wq>``_)
  Other workplace or technical reports.  

policy report (``<http://purl.org/coar/resource_type/c_186u>``_)
  Presents facts/evidence on a specific issue.  

project deliverable (``<http://purl.org/coar/resource_type/c_18op>``_)
  A document containing a project report.  
  [Source: FaBiO]

research protocol (``<http://purl.org/coar/resource_type/YZ1N-ZFT9>``_)
  A detailed plan of a research study.  
  [Source: WHO]

research report (``<http://purl.org/coar/resource_type/c_18ws>``_)
  A publication reporting on research findings.  
  [Source: Wikipedia]

technical report (``<http://purl.org/coar/resource_type/c_18gh>``_)
  A document describing scientific or technical research.  
  [Source: Cornell]

research proposal (``<http://purl.org/coar/resource_type/c_baaf>``_)
  A proposal for a research project.  
  [Source: Wikipedia]

review (``<http://purl.org/coar/resource_type/c_efa0>``_)
  A review of others’ published work.  

book review (``<http://purl.org/coar/resource_type/c_ba08>``_)
  A critical analysis of a book.  
  [Source: FaBiO]

commentary (``<http://purl.org/coar/resource_type/D97F-VB57>``_)
  An in-depth analysis drawing attention to a work.  
  [Source: Enago]

peer review (``<http://purl.org/coar/resource_type/H9BQ-739P>``_)
  Evaluation of academic or professional work by peers.  

technical documentation (``<http://purl.org/coar/resource_type/c_71bd>``_)
  Documentation describing technical products.  
  [Source: Wikipedia]

thesis (``<http://purl.org/coar/resource_type/c_46ec>``_)
  A formal research output submitted for an academic degree.  
  [Source: FaBiO]

bachelor thesis (``<http://purl.org/coar/resource_type/c_7a1f>``_)
  A thesis for a bachelor’s degree.  

doctoral thesis (``<http://purl.org/coar/resource_type/c_db06>``_)
  A thesis for a doctoral degree.  

master thesis (``<http://purl.org/coar/resource_type/c_bdcc>``_)
  A thesis for a master’s degree.  

transcription (``<http://purl.org/coar/resource_type/6NC7-GK9S>``_)
  A written record of words spoken.  
  [Source: ODLIS]

working paper (``<http://purl.org/coar/resource_type/c_8042>``_)
  A working or discussion paper circulated among peers.  
  [Source: UKOLN]



Language
^^^^^^^^
:Description: The language of the publication. Please use the IETF language tags as described in the IETF BCP 47 document.
:Use: optional (0..1)
:Representation: XML element ``Language``
:CERIF: the ResultPublication_Classification linking entity (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_) with the `<http://publications.europa.eu/resource/authority/language>`_ semantics



Title
^^^^^
:Description: The title of the publication
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Title`` as a multilingual string
:CERIF: the ResultPublication.Title attribute (`<https://w3id.org/cerif/model#ResultPublication.Title>`_)



Subtitle
^^^^^^^^
:Description: The subtitle of the publication
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subtitle`` as a multilingual string
:CERIF: the ResultPublication.Subtitle attribute (`<https://w3id.org/cerif/model#ResultPublication.Subtitle>`_)



NameAbbreviation
^^^^^^^^^^^^^^^^
:Description: The abbreviation of the title of the publication. E.g. the acronym of a journal.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``NameAbbreviation`` as a multilingual string
:CERIF: the ResultPublication.NameAbbreviation attribute (`<https://w3id.org/cerif/model#ResultPublication.NameAbbreviation>`_)



PublishedIn
^^^^^^^^^^^
:Description: The source (another Publication) where this publication appeared. E.g. a journal article lists here the journal where it appeared. To be used for a publishing channel.
:Use: optional (0..1)
:Representation: XML element ``PublishedIn`` with embedded XML element ``Publication``
:CERIF: the ResultPublication_ResultPublication linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/InterPublicationRelations#Publication>`_ semantics (direction :1)



PartOf
^^^^^^
:Description: The Publication of which this publication is a part. E.g. a book chapter lists here the book that contains it. To be used for a containing publication.
:Use: optional (0..1)
:Representation: XML element ``PartOf`` with embedded XML element ``Publication``
:CERIF: the ResultPublication_ResultPublication linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/InterPublicationRelations#Part>`_ semantics (direction :1)



PublicationDate
^^^^^^^^^^^^^^^
:Description: The date the publication appeared
:Use: optional (0..1)
:Representation: XML element ``PublicationDate``
:CERIF: the ResultPublication.ResultPublicationDate attribute (`<https://w3id.org/cerif/model#ResultPublication.ResultPublicationDate>`_)
:Format: any of:

  * year (``YYYY``) with optional time zone indication
  * year and month (``YYYY-MM``) with optional time zone indication
  * full date (``YYYY-MM-DD``) with optional time zone indication
  * date and time (``YYYY-MM-DD'T'hh:mm:ss(.SSS)``) with optional time zone indication


Number
^^^^^^
:Description: The number of the publication (e.g. Article Number)
:Use: optional (0..1)
:Representation: XML element ``Number``
:CERIF: the ResultPublication.Number attribute (`<https://w3id.org/cerif/model#ResultPublication.Number>`_)



Volume
^^^^^^
:Description: The volume of the publishing channel where this publication appeared
:Use: optional (0..1)
:Representation: XML element ``Volume``
:CERIF: the ResultPublication.Volume attribute (`<https://w3id.org/cerif/model#ResultPublication.Volume>`_)



Issue
^^^^^
:Description: The issue of the publishing channel where this publication appeared
:Use: optional (0..1)
:Representation: XML element ``Issue``
:CERIF: the ResultPublication.Issue attribute (`<https://w3id.org/cerif/model#ResultPublication.Issue>`_)



Edition
^^^^^^^
:Description: The edition of the publication
:Use: optional (0..1)
:Representation: XML element ``Edition``
:CERIF: the ResultPublication.Edition attribute (`<https://w3id.org/cerif/model#ResultPublication.Edition>`_)



StartPage
^^^^^^^^^
:Description: The page where this publication starts, in case the publishing channel or containing publication has numbered pages
:Use: optional (0..1)
:Representation: XML element ``StartPage``
:CERIF: the ResultPublication.StartPage attribute (`<https://w3id.org/cerif/model#ResultPublication.StartPage>`_)



EndPage
^^^^^^^
:Description: The page where this publication ends, in case the publishing channel or containing publication has numbered pages
:Use: optional (0..1)
:Representation: XML element ``EndPage``
:CERIF: the ResultPublication.EndPage attribute (`<https://w3id.org/cerif/model#ResultPublication.EndPage>`_)



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



PMCID
^^^^^
:Use: optional (0..1)
:Representation: XML element ``PMCID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



ISI-Number
^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``ISI-Number``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



SCP-Number
^^^^^^^^^^
:Use: optional (0..1)
:Representation: XML element ``SCP-Number``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



ISSN
^^^^
:Description: The International Standard Serial Number
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ISSN``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``\d{4}-?\d{3}[\dX]`` and length between 8 and 9 characters (as per `<https://data.crossref.org/reports/help/schema_doc/4.4.1/schema_4_4_1.html#issn_t>`_)


medium
------
:Use: optional
:Representation: XML attribute ``medium``
:Vocabulary: ISSN Media List

  * **Print** (`<http://issn.org/vocabularies/Medium#Print>`_): Print (paper)
  * **Online** (`<http://issn.org/vocabularies/Medium#Online>`_): Online (online publication)
  * **Digital carrier** (`<http://issn.org/vocabularies/Medium#DigitalCarrier>`_): Digital carrier (CD-ROM, USB keys)
  * **Other** (`<http://issn.org/vocabularies/Medium#Other>`_): Other (Loose-leaf publications, braille, etc.)



ISBN
^^^^
:Description: The International Standard Book Number
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``ISBN``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: any of:

  * regular expression ``978-\d+-\d+-\d+-\d`` and length of exactly 17 characters (ISBN-13, human readable form)
  * regular expression ``978 \d+ \d+ \d+ \d`` and length of exactly 17 characters (ISBN-13, human readable form)
  * regular expression ``979-[1-9]\d*-\d+-\d+-\d`` and length of exactly 17 characters (ISBN-13, human readable form)
  * regular expression ``979 [1-9]\d* \d+ \d+ \d`` and length of exactly 17 characters (ISBN-13, human readable form)
  * regular expression ``978\d{10}`` and length of exactly 13 characters (ISBN-13, concise form)
  * regular expression ``979[1-9]\d{9}`` and length of exactly 13 characters (ISBN-13, concise form)
  * regular expression ``\d+-\d+-\d+-[\dX]`` and length of exactly 13 characters (ISBN-10, human readable form)
  * regular expression ``\d+ \d+ \d+ [\dX]`` and length of exactly 13 characters (ISBN-10, human readable form)
  * regular expression ``\d{9}[\dX]`` and length of exactly 10 characters (ISBN-10, concise form)


medium
------
:Use: optional
:Representation: XML attribute ``medium``
:Vocabulary: ISSN Media List

  * **Print** (`<http://issn.org/vocabularies/Medium#Print>`_): Print (paper)
  * **Online** (`<http://issn.org/vocabularies/Medium#Online>`_): Online (online publication)
  * **Digital carrier** (`<http://issn.org/vocabularies/Medium#DigitalCarrier>`_): Digital carrier (CD-ROM, USB keys)
  * **Other** (`<http://issn.org/vocabularies/Medium#Other>`_): Other (Loose-leaf publications, braille, etc.)



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



ZDB-ID
^^^^^^
:Use: optional (0..1)
:Representation: XML element ``ZDB-ID``
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)
:Format: regular expression ``\d{1,7}-[Xx\d]`` (as per `<https://www.wikidata.org/wiki/Property:P1042>`_)


Authors
^^^^^^^
:Description: The authors of this publication
:Use: optional (0..1)
:Representation: XML element ``Authors`` with ordered embedded XML elements ``Author`` that can contain an embedded person with affiliations or organisation unit



Author
------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Author`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements, or ``OrgUnit``. A ``DisplayName`` may be specified, too.
:CERIF: the Person_ResultPublication linking entity (`<https://w3id.org/cerif/model#Person_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Author>`_ semantics; the OrganisationUnit_ResultPublication linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Author>`_ semantics



Editors
^^^^^^^
:Description: The editors of this publication
:Use: optional (0..1)
:Representation: XML element ``Editors`` with ordered embedded XML elements ``Editor`` that can contain an embedded person with affiliations or organisation unit



Editor
------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Editor`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements, or ``OrgUnit``. A ``DisplayName`` may be specified, too.
:CERIF: the Person_ResultPublication linking entity (`<https://w3id.org/cerif/model#Person_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Editor>`_ semantics; the OrganisationUnit_ResultPublication linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Editor>`_ semantics



Publishers
^^^^^^^^^^
:Description: The publishers of this publication
:Use: optional (0..1)
:Representation: XML element ``Publishers`` with ordered embedded XML elements ``Publisher`` that can contain an embedded organisation unit or person



Publisher
---------
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Publisher`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the OrganisationUnit_ResultPublication linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/OrganisationOutputContributions#Publisher>`_ semantics; the Person_ResultPublication linking entity (`<https://w3id.org/cerif/model#Person_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/PersonOutputContributions#Publisher>`_ semantics



License
^^^^^^^
:Description: The license of the publication. We recommend using URIs from the SPDX License List (https://spdx.org/licenses/), which includes the Creative Commons licenses.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``License`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)


Subject
^^^^^^^
:Description: The subject of the publication from a classification
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subject`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)


Keyword
^^^^^^^
:Description: A single keyword or key expression. Please repeat to serialize separate keywords or key expressions.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Keyword`` as a multilingual string
:CERIF: the ResultPublication.Keywords attribute (`<https://w3id.org/cerif/model#ResultPublication.Keywords>`_)



Abstract
^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Abstract`` as a multilingual string
:CERIF: the ResultPublication.Abstract attribute (`<https://w3id.org/cerif/model#ResultPublication.Abstract>`_)



Status
^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Status`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)


OriginatesFrom
^^^^^^^^^^^^^^
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OriginatesFrom`` with embedded XML element ``Project`` or ``Funding``
:CERIF: the Project_ResultPublication linking entity (`<https://w3id.org/cerif/model#Project_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/ProjectOutputRoles#Originator>`_ semantics; the ResultPublication_Funding linking entity (`<https://w3id.org/cerif/model#ResultPublication_Funding>`_) with the `<https://w3id.org/cerif/vocab/OutputFundingRoles#Originator>`_ semantics



PresentedAt
^^^^^^^^^^^
:Description: The event where this publication was presented.  [#]_ 
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``PresentedAt`` with embedded XML element ``Event``
:CERIF: the ResultPublication_Event linking entity (`<https://w3id.org/cerif/model#ResultPublication_Event>`_) with the `<https://w3id.org/cerif/vocab/EventOutputRelationships#Presented>`_ semantics


.. [#] Note: Video recordings of conference presentations are stored as alternative representations of the primary object: the conference paper. It would be unneccessarily complex to represent them as separate, linked Products.


OutputFrom
^^^^^^^^^^
:Description: This publication contains the proceedings from the linked event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OutputFrom`` with embedded XML element ``Event``
:CERIF: the ResultPublication_Event linking entity (`<https://w3id.org/cerif/model#ResultPublication_Event>`_) with the `<https://w3id.org/cerif/vocab/EventOutputRelationships#Output>`_ semantics



Coverage
^^^^^^^^
:Description: The event that is covered by this publication (e.g. a report about the event)
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Coverage`` with embedded XML element ``Event``
:CERIF: the ResultPublication_Event linking entity (`<https://w3id.org/cerif/model#ResultPublication_Event>`_) with the `<https://w3id.org/cerif/vocab/EventOutputRelationships#Coverage>`_ semantics



References
^^^^^^^^^^
:Description: Result outputs that are referenced by this publication
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``References`` with embedded XML element ``Publication`` or ``Patent`` or ``Product``
:CERIF: the ResultPublication_ResultPublication linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultPublication>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultPublication_ResultProduct linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultProduct>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1); the ResultPublication_ResultPatent linking entity (`<https://w3id.org/cerif/model#ResultPublication_ResultPatent>`_) with the `<https://w3id.org/cerif/vocab/InterOutputRelations#Reference>`_ semantics (direction :1)



ns4:Access
^^^^^^^^^^
:Description: The open access type of the publication
:Use: optional (0..1)
:Representation: XML element ``Access`` from namespace `<http://purl.org/coar/access_right>`_
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)
:Vocabulary: 

  * **open access** (`<http://purl.org/coar/access_right/c_abf2>`_): Open access refers to a resource that is immediately and permanently online, and free for all on the Web, without financial and technical barriers.The resource is either stored in the repository or referenced to an external journal or trustworthy archive.
  * **embargoed access** (`<http://purl.org/coar/access_right/c_f1cf>`_): Embargoed access refers to a resource that is metadata only access until released for open access on a certain date. Embargoes can be required by publishers and funders policies, or set by the author (e.g such as in the case of theses and dissertations).
  * **restricted access** (`<http://purl.org/coar/access_right/c_16ec>`_): Restricted access refers to a resource that is available in a system but with some type of restriction for full open access. This type of access can occur in a number of different situations. Some examples are described below: The user must log-in to the system in order to access the resource The user must send an email to the author or system administrator to access the resource Access to the resource is restricted to a specific community (e.g. limited to a university community)
  * **metadata only access** (`<http://purl.org/coar/access_right/c_14cb>`_): Metadata only access refers to a resource in which access is limited to metadata only. The resource itself is described by the metadata, but neither is directly available through the system or platform nor can be referenced to an open access copy in an external journal or trustworthy archive.



FileLocations
^^^^^^^^^^^^^
:Description: The files that this Publication has as contents.
:Use: optional (0..1)
:Representation: XML element ``FileLocations`` with embedded XML element ``Medium``
:CERIF: the ResultPublication_Medium linking entity (`<https://w3id.org/cerif/model#ResultPublication_Medium>`_) with the `<https://w3id.org/cerif/vocab/MediaRelations#Contents>`_ semantics




