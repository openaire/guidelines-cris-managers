.. _publication:


Publication
===========
:Description: A text based scholarly publication or publishing channel that contains results of research. CRISs typically record metadata about scholarly publications from the scope of the CRIS (institutional CRIS for the institution, funder CRIS for the funding it distributed, etc.) in the context of the research projects, infrastructure, funding, organization units and authors/contributors. This entity typically represents the granularity level of a single published item for which attribution information is attached (usually in the form of a list of authors and contributors). This entity is also used to represent publishing channels and sources: journals and book series (incl. continuing conference proceedings series). (Taken from https://doi.org/10.1016/j.procs.2014.06.008)
:Examples: `openaire_cerif_xml_example_publications.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_publications.xml>`_
:Representation: XML element ``Publication``; the rest of this section documents children of this element
:CERIF: the ResultPublication entity (`<https://w3id.org/cerif/model#ResultPublication>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the ResultPublicationIdentifier attribute (`<https://w3id.org/cerif/model#ResultPublication.ResultPublicationIdentifier>`_)


Type
^^^^
:Description: The type of the publication
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Publication_Types>`_
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)
:Vocabulary: Publication types extracted from the COAR Resource Types concept scheme: Types of publications as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'text' and its descendants in the hierarchy except 'patent').

  * **text** (`<http://purl.org/coar/resource_type/c_18cf>`_): A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.

    * **annotation** (`<http://purl.org/coar/resource_type/c_1162>`_): An annotation in the sense of a legal note is a legally explanatory comment on a decision handed down by a court or arbitral tribunal.
    * **bibliography** (`<http://purl.org/coar/resource_type/c_86bc>`_): A systematic list or enumeration of written works by a specific author or on a given subject.
    * **book** (`<http://purl.org/coar/resource_type/c_2f33>`_): A non-serial publication that is complete in one volume or a designated finite number of volumes. (adapted from CiTO; EPrint Type vocabulary)

      * **book part** (`<http://purl.org/coar/resource_type/c_3248>`_): A defined chapter or section of a book, usually with a separate title or number.
    * **conference object** (`<http://purl.org/coar/resource_type/c_c94f>`_): All kind of digital resources contributed to a conference, like conference presentation (slides), conference report, conference lecture, abstracts, demonstrations. For conference papers, posters or proceedings the specific concepts should be used..

      * **conference proceedings** (`<http://purl.org/coar/resource_type/c_f744>`_): Conference proceedings is the official record of a conference meeting. It is a collection of documents which corresponds to the presentations given at the conference. It may include additional content.

        * **conference paper** (`<http://purl.org/coar/resource_type/c_5794>`_): A conference paper that is submitted to a conference and presented to the audience. The conference paper is published in proceedings.
        * **conference poster** (`<http://purl.org/coar/resource_type/c_6670>`_): A conference poster that is submitted to a conference and presented there at a poster presentation. The conference poster is published in proceedings.
      * **conference paper not in proceedings** (`<http://purl.org/coar/resource_type/c_18cp>`_): A conference paper that is submitted to a conference and presented to the audience. The conference paper is not published in proceedings.
      * **conference poster not in proceedings** (`<http://purl.org/coar/resource_type/c_18co>`_): A conference poster that is submitted to a conference and presented there at a poster presentation. The conference poster is not published in proceedings.
    * **lecture** (`<http://purl.org/coar/resource_type/c_8544>`_): A transcription of a talk delivered during an academic event.
    * **letter** (`<http://purl.org/coar/resource_type/c_0857>`_): A brief description of important new research, also known as “communication”. (adapted from EuroCRIS)
    * **periodical** (`<http://purl.org/coar/resource_type/c_2659>`_): A periodical is a publication issued on a regular and ongoing basis as a series of issues. (Adapted from fabio)

      * **journal** (`<http://purl.org/coar/resource_type/c_0640>`_): A periodical of (academic) journal articles. (Adapted from bibo)

        * **contribution to journal** (`<http://purl.org/coar/resource_type/c_3e5a>`_): A contribution to a journal denotes a work published in a journal. If applicable sub-terms should be chosen.

          * **journal article** (`<http://purl.org/coar/resource_type/c_6501>`_): An article on a particular topic and published in a journal issue. (adapted from fabio)

            * **review article** (`<http://purl.org/coar/resource_type/c_dcae04bc>`_): A review article is a secondary source, that is, it is written about other articles, and does not report original research of its own. (adapted from http://apus.libanswers.com/faq/2324)
            * **research article** (`<http://purl.org/coar/resource_type/c_2df8fbb1>`_): A research article is a primary source, that is, it reports the methods and results of an original study performed by the authors. (adapted from http://apus.libanswers.com/faq/2324)
          * **editorial** (`<http://purl.org/coar/resource_type/c_b239>`_): A brief essay expressing the opinion or position of the chief editor(s) of a (academic) journal with respect to a current political, social, cultural, or professional issue. Adapted from ODLIS
          * **data paper** (`<http://purl.org/coar/resource_type/c_beb9>`_): A data paper is a scholarly publication describing a particular dataset or group of dataset, published in the form of a peer-reviewed article in a scholarly journal. The main purpose of a data paper is to describe data, the circumstances of their collection, and information related to data features, access and potential reuse. Adapted from https://en.wikipedia.org/wiki/Data_paper and http://www.gbif.org/publishing-data/data-papers
          * **letter to the editor** (`<http://purl.org/coar/resource_type/c_545b>`_): A letter to the editor is a letter sent to a periodical about issues of concern from its readers. (adapted from Wikipedia)
    * **preprint** (`<http://purl.org/coar/resource_type/c_816b>`_): Pre-print describes the first draft of the article - before peer-review, even before any contact with a publisher. This use is common amongst academics for whom the key modification of an article is the peer-review process. Another use of the term pre-print is for the finished article, reviewed and amended, ready and accepted for publication - but separate from the version that is type-set or formatted by the publisher. This use is more common amongst publishers, for whom the final and significant stage of modification to an article is the arrangement of the material for putting to print.
    * **report** (`<http://purl.org/coar/resource_type/c_93fc>`_): A report is a separately published record of research findings, research still in progress, or other technical findings, usually bearing a report number and sometimes a grant number assigned by the funding agency. Also, an official record of the activities of a committee or corporate entity, the proceedings of a government body, or an investigation by an agency, whether published or private, usually archived or submitted to a higher authority, voluntarily or under mandate. In a more general sense, any formal account of facts or information related to a specific event or phenomenon, sometimes given at regular intervals.

      * **report part** (`<http://purl.org/coar/resource_type/c_ba1f>`_): part of a report
      * **internal report** (`<http://purl.org/coar/resource_type/c_18ww>`_): An internal report is a record of findings collected for internal use. It is not designed to be made public and may include confidential or proprietary information.
      * **memorandum** (`<http://purl.org/coar/resource_type/c_18wz>`_): It is a note, document or other communication that helps the memory by recording events or observations on a topic. A memorandum can have only a certain number of formats; it may have a format specific to an office or institution.
      * **other type of report** (`<http://purl.org/coar/resource_type/c_18wq>`_): Other types of report may include Business Plans Technical Specifications, data management plans, recommendation reports, white papers, annual reports, auditor's reports, workplace reports, census reports, trip reports, progress reports, investigative reports, budget reports, policy reports, demographic reports, credit reports, appraisal reports, inspection reports, military reports, bound reports, etc.
      * **policy report** (`<http://purl.org/coar/resource_type/c_186u>`_): A policy report is a type of report that provides an in-depth look at major policy developments and events
      * **project deliverable** (`<http://purl.org/coar/resource_type/c_18op>`_): A project deliverable is an “outcome” as a result of a project that is intended to be delivered to a customer (e.g. funder). Examples of deliverable are report, document, work package or any other building block of an overall project.
      * **report to funding agency** (`<http://purl.org/coar/resource_type/c_18hj>`_): A report to a funding agency is a document written by beneficiaries of project grants. The reporting documents can be e.g. periodic reports about progress of scientific and technical work and final report. For deliverables use ‘Project deliverable’.
      * **research report** (`<http://purl.org/coar/resource_type/c_18ws>`_): Research Reports are reports that typically provide an in-depth study of a particular topic or describe the results of a research project.
      * **technical report** (`<http://purl.org/coar/resource_type/c_18gh>`_): A technical report is a document that records the procedure adopted and results obtained from a scientific or technical activity or investigation.
    * **research proposal** (`<http://purl.org/coar/resource_type/c_baaf>`_): documentation for grant request
    * **review** (`<http://purl.org/coar/resource_type/c_efa0>`_): A review of others' published work.

      * **book review** (`<http://purl.org/coar/resource_type/c_ba08>`_): A written review and critical analysis of the content, scope and quality of a book or other monographic work.
    * **technical documentation** (`<http://purl.org/coar/resource_type/c_71bd>`_): Technical documentation refers to any type of documentation that describes handling, functionality and architecture of a technical product or a product under development or use.
    * **working paper** (`<http://purl.org/coar/resource_type/c_8042>`_): A working paper or preprint is a report on research that is still on-going or which has not yet been accepted for publication.
    * **thesis** (`<http://purl.org/coar/resource_type/c_46ec>`_): A thesis or dissertation is a document submitted in support of candidature for an academic degree or professional qualification presenting the author's research and findings.

      * **bachelor thesis** (`<http://purl.org/coar/resource_type/c_7a1f>`_): A thesis reporting a research project undertaken as part of an undergraduate course of education leading to a bachelor's degree.
      * **doctoral thesis** (`<http://purl.org/coar/resource_type/c_db06>`_): A thesis reporting the research undertaken during a period of graduate study leading to a doctoral degree.
      * **master thesis** (`<http://purl.org/coar/resource_type/c_bdcc>`_): A thesis reporting a research project undertaken as part of a graduate course of education leading to a master's degree.
    * **musical notation** (`<http://purl.org/coar/resource_type/c_18cw>`_): Musical notation is any system used to visually represent aurally perceived music through the use of written symbols, including ancient or modern musical symbols.



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
:Description: The license of the publication
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




