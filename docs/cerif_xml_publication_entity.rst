.. _publication:


Publication
===========
:Description: A text based scholarly publication or publishing channel that contains results of research. CRISs typically record metadata about scholarly publications from the scope of the CRIS (institutional CRIS for the institution, funder CRIS for the funding it distributed, etc.) in the context of the research projects, infrastructure, funding, organization units and authors/contributors. This entity typically represents the granularity level of a single published item for which attribution information is attached (usually in the form of a list of authors and contributors). This entity is also used to represent publishing channels and sources: journals and book series (incl. continuing conference proceedings series). (Taken from https://doi.org/10.1016/j.procs.2014.06.008)
:Examples: `openaire_cerif_xml_example_publications.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_cerif_xml_example_publications.xml>`_
:Representation: XML element ``Publication``; the rest of this section documents children of this element
:CERIF: the ResultPublication entity (`<https://w3id.org/cerif/model#ResultPublication>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See `Metadata representation in CERIF XML <https://openaire-guidelines-for-cris-managers.readthedocs.io/en/v1.2/implementation.html#metadata-representation-in-cerif-xml>`_
:Representation: XML attribute ``id``
:CERIF: the ResultPublicationIdentifier attribute (`<https://w3id.org/cerif/model#ResultPublication.ResultPublicationIdentifier>`_)


Type
^^^^
:Description: The type of the publication
:Use: mandatory (1)
:Representation: XML element ``Type`` from namespace `<https://www.openaire.eu/cerif-profile/vocab/COAR_Publication_Types>`_
:CERIF: the ResultPublication_Classification (`<https://w3id.org/cerif/model#ResultPublication_Classification>`_)
:Vocabulary: Publication types extracted from the COAR Resource Types concept scheme: Types of publications as extracted from the COAR Resource Types concept scheme (http://vocabularies.coar-repositories.org/documentation/resource_types/, the term 'text' and its descendants in the hierarchy except 'patent').

  * **text** (`<http://purl.org/coar/resource_type/c_18cf>`_): A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text. [Source: http://purl.org/dc/dcmitype/Text]

    * **annotation** (`<http://purl.org/coar/resource_type/c_1162>`_): An annotation in the sense of a legal note is a legally explanatory comment on a decision handed down by a court or arbitral tribunal. [Source: DRIVER info:eu-repo definition]
    * **bibliography** (`<http://purl.org/coar/resource_type/c_86bc>`_): A list of the books and articles that have been used by someone when writing a particular book or article [Source: https://dictionary.cambridge.org/dictionary/english/bibliography]
    * **blog post** (`<http://purl.org/coar/resource_type/c_6947>`_): A piece of writing or other item of content published on a blog. [Source: https://www.lexico.com/definition/blog_post]
    * **book** (`<http://purl.org/coar/resource_type/c_2f33>`_): A non-serial publication that is complete in one volume or a designated finite number of volumes. [Source: Adapted from http://purl.org/eprint/type/Book]

      * **book part** (`<http://purl.org/coar/resource_type/c_3248>`_): A defined chapter or section of a book, usually with a separate title or number. [Source: http://purl.org/spar/fabio/BookChapter]
    * **conference output** (`<http://purl.org/coar/resource_type/c_c94f>`_): All kind of digital resources contributed to a conference, like conference presentation (slides), conference report, conference lecture, abstracts, demonstrations. For conference papers, posters or proceedings the specific sub-concepts should be used. [COAR definition]

      * **conference paper not in proceedings** (`<http://purl.org/coar/resource_type/c_18cp>`_): A paper, typically the realization of a research paper reporting original research findings. Use this label when the paper is not published in a proceeding. [Source: Adapted from http://purl.org/spar/fabio/ConferencePaper]
      * **conference poster not in proceedings** (`<http://purl.org/coar/resource_type/c_18co>`_): A display poster, typically containing text with illustrative figures and/or tables, usually reporting research results or proposing hypotheses, submitted for acceptance to and/or presented at a conference, seminar, symposium, workshop or similar event. Use this label when the poster is not published in a proceeding. [Source: http://purl.org/spar/fabio/ConferencePoster]
      * **conference presentation** (`<http://purl.org/coar/resource_type/R60J-J5BD>`_): A set of slides containing text, tables or figures, designed to communicate ideas or research results, for projection and viewing by an audience at a conference, symposium, seminar, lecture, workshop or other gatherings. [Source: Adapted from http://purl.org/spar/fabio/Presentation]
      * **conference proceedings** (`<http://purl.org/coar/resource_type/c_f744>`_): Conference proceedings is the official record of a conference meeting. It is a collection of documents which corresponds to the presentations given at the conference. It may include additional content. [Source: http://www.ieee.org/documents/confprocdefined.pdf ]

        * **conference paper** (`<http://purl.org/coar/resource_type/c_5794>`_): A paper, published within a conference proceeding, typically the realization of a research paper reporting original research findings. [Source: Adapted from http://purl.org/spar/fabio/ConferencePaper]
        * **conference poster** (`<http://purl.org/coar/resource_type/c_6670>`_): A display poster, published within a conference proceeding, typically containing text with illustrative figures and/or tables, usually reporting research results or proposing hypotheses, submitted for acceptance to and/or presented at a conference, seminar, symposium, workshop or similar event. [Source: Adapted http://purl.org/spar/fabio/ConferencePoster]
    * **lecture** (`<http://purl.org/coar/resource_type/c_8544>`_): Transcription of an oral presentation/talk intended to present information or teach people about a particular subject, for example by a university or college teacher. [Source: Adopted from https://en.wikipedia.org/wiki/Lecture]
    * **letter** (`<http://purl.org/coar/resource_type/c_0857>`_): A brief description of important new research, also known as “communication”. [Source: https://cerif.eurocris.org/vocab/html/OutputTypes.html#Letter]
    * **magazine** (`<http://purl.org/coar/resource_type/c_2cd9>`_): A popular interest periodical usually containing articles on a variety of topics, written by various authors in a nonscholarly style or a trade publication, unlike a consumer publication, covers a specific topic for people who work in that particular field or industry. [Source: Adapted from https://www.thebalance.com/what-is-a-trade-publication-exactly-2316039 and http://www.abc-clio.com/ODLIS/odlis_m.aspx]
    * **manuscript** (`<http://purl.org/coar/resource_type/c_0040>`_): A manuscript is a work of any kind (text, inscription, music score, map, etc.) written entirely by hand. [Source: https://products.abc-clio.com/ODLIS/odlis_m.aspx]
    * **musical notation** (`<http://purl.org/coar/resource_type/c_18cw>`_): Symbols used to write music, as in a music score, and to express mathematical concepts. [Source: Adapted from https://products.abc-clio.com/ODLIS/odlis_n.aspx]
    * **newspaper** (`<http://purl.org/coar/resource_type/c_2fe3>`_): A non-peer reviewed periodical, usually published daily or weekly, consisting primarily of editorials and news items concerning current or recent events and matters of public interest. [Source: http://purl.org/spar/fabio/Newspaper]

      * **newspaper article** (`<http://purl.org/coar/resource_type/c_998f>`_): Work consisting of a news item appearing in a general-interest newspaper or other general news periodical, containing information of current and timely interest in a field. (Adapted from http://www.reference.md/files/D018/mD018431.html )
    * **other periodical** (`<http://purl.org/coar/resource_type/QX5C-AR31>`_): A resource type that is not included in existing terms under the top concept "Text". [COAR definition]
    * **periodical (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_2659>`_): A periodical is a serial publication with its own distinctive title, characterized by a variety of contents and contributors, and issued at regular intervals. (Adapted from ODLIS) [Source: http://www.abc-clio.com/ODLIS/odlis_p.aspx]

      * **journal** (`<http://purl.org/coar/resource_type/c_0640>`_): A journal is a serial publication devoted to disseminating original research and current developments on a subject. (Adapted from ODLIS) [Source: http://dspacecris.eurocris.org/cris/classcerif/classcerif00422]

        * **contribution to journal (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_3e5a>`_): A contribution to a journal denotes a work published in a journal. If applicable sub-terms should be chosen.

          * **editorial** (`<http://purl.org/coar/resource_type/c_b239>`_): A brief essay expressing the opinion or position of the chief editor(s) of a (academic) journal with respect to a current political, social, cultural, or professional issue. [Source: Adapted from ODLIS [Source: http://www.abc-clio.com/ODLIS/odlis_e.aspx ]
          * **journal article** (`<http://purl.org/coar/resource_type/c_6501>`_): An article, typically the realization of a research paper reporting original research findings, published in a journal issue. [Source: http://purl.org/spar/fabio/JournalArticle]

            * **corrigendum** (`<http://purl.org/coar/resource_type/c_7acd>`_): A formal correction to an error introduced by the author into a previously published document. (adapted from https://sparontologies.github.io/fabio/current/fabio.html#d4e2712)
            * **data paper** (`<http://purl.org/coar/resource_type/c_beb9>`_): A data paper is a scholarly publication describing a particular dataset or group of dataset, published in the form of a peer-reviewed article in a scholarly journal. The main purpose of a data paper is to describe data, the circumstances of their collection, and information related to data features, access and potential reuse. Adapted from https://en.wikipedia.org/wiki/Data_paper and http://www.gbif.org/publishing-data/data-papers
            * **research article** (`<http://purl.org/coar/resource_type/c_2df8fbb1>`_): A research article is a primary source, that is, it reports the methods and results of an original study performed by the authors. (adapted from http://apus.libanswers.com/faq/2324)
            * **review article** (`<http://purl.org/coar/resource_type/c_dcae04bc>`_): A review article is a secondary source, that is, it is written about other articles, and does not report original research of its own. [Source: Adapted from http://apus.libanswers.com/faq/2324]
            * **software paper** (`<http://purl.org/coar/resource_type/c_7bab>`_): A software paper should include the rationale for the development of the tool and details of the code used for its construction. [Source: Adapted from https://f1000research.com/for-authors/article-guidelines/software-tool-articles ]
          * **letter to the editor** (`<http://purl.org/coar/resource_type/c_545b>`_): A letter addressed to the editor and comments on or discussed an item previously published by that periodical, or of interest to its readership. [Source: Adapted from http://purl.org/spar/fabio/Letter]
    * **preprint (deprecated)** (`<http://purl.org/coar/resource_type/c_816b>`_): A preprint is a scientific manuscript without peer-review and has not yet been accepted by a journal, typicaly submitted to a public server/ repository by the author. [Source: Adapted from https://asapbio.org/preprint-info/preprint-faq#qaef-637]
    * **report** (`<http://purl.org/coar/resource_type/c_93fc>`_): A report is a separately published record of research findings, research still in progress, policy developments and events, or other technical findings, usually bearing a report number and sometimes a grant number assigned by the funding agency. Also, an official record of the activities of a committee or corporate entity, the proceedings of a government body, or an investigation by an agency, whether published or private, usually archived or submitted to a higher authority, voluntarily or under mandate. In a more general sense, any formal account of facts or information related to a specific event or phenomenon, sometimes given at regular intervals. [Source: http://lu.com/odlis/odlis_R.cfm#report ]

      * **clinical study** (`<http://purl.org/coar/resource_type/c_7877>`_): A work that reports on the results of a research study to evaluate interventions or exposures on biomedical or health-related outcomes. The two main types of clinical studies are interventional studies (clinical trials) and observational studies. While most clinical studies concern humans, this publication type may be used for clinical veterinary articles meeting the requisites for humans. [Source: https://www.ncbi.nlm.nih.gov/mesh/2009830]
      * **data management plan** (`<http://purl.org/coar/resource_type/c_ab20>`_): A formal statement describing how research data will be managed and documented throughout a research project and the terms regarding the subsequent deposit of the data with a data repository for long-term management and preservation. [Source: https://casrai.org/rdm-glossary]
      * **internal report (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_18ww>`_): An internal report is a record of findings collected for internal use. It is not designed to be made public and may include confidential or proprietary information.
      * **memorandum** (`<http://purl.org/coar/resource_type/c_18wz>`_): A formal note distributed internally to one or more persons in a company, agency, organization, or institution, with a header indicating the date it was sent and stating to whom it is addressed (To:), from whom it is sent (From:), and the subject of the text (Re:). Unlike a letter, a memo does not require a full salutation or signature at the end of the text--the sender may simply initial his or her name in the header. [Source: https://products.abc-clio.com/ODLIS/odlis_m.aspx#memorandum]
      * **other type of report (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_18wq>`_): Other types of report may include Business Plans Technical Specifications, data management plans, recommendation reports, white papers, annual reports, auditor's reports, workplace reports, census reports, trip reports, progress reports, investigative reports, budget reports, policy reports, demographic reports, credit reports, appraisal reports, inspection reports, military reports, bound reports, etc. [Source: https://en.wikipedia.org/wiki/Report]
      * **policy report (deprecated)** (`<http://purl.org/coar/resource_type/c_186u>`_): A policy report presents what is known about a particular issue or problem. It assembles facts and evidence to help readers understand complex issues and form a response. It might aim to be neutral, or it might aim to persuade readers in a particular direction. [Source: https://www.uow.edu.au/student/learning-co-op/assessments/policy-report/#]
      * **project deliverable** (`<http://purl.org/coar/resource_type/c_18op>`_): A document containing a project report, intended to be delivered to a customer or funding agency describing the results achieved within a specific project. [Source: http://purl.org/spar/fabio/ProjectReportDocument]
      * **report part (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_ba1f>`_): part of a report
      * **report to funding agency (deprecated since 2021-03-12)** (`<http://purl.org/coar/resource_type/c_18hj>`_): A report to a funding agency is a document written by beneficiaries of project grants. The reporting documents can be e.g. periodic reports about progress of scientific and technical work and final report. For deliverables use ‘Project deliverable’. [Source: http://ec.europa.eu/research/participants/fp7documents/funding-guide/6_projects/reports/reports_en.htm ]
      * **research protocol** (`<http://purl.org/coar/resource_type/YZ1N-ZFT9>`_): The protocol is a detailed plan of the research study including a project summary, project description covering the rationale, objectives, methodology, data management and analysis, ethical considerations, gender issues and references. [Source: Adapted from https://www.who.int/publications/i/item/a-practical-guide-for-health-researchers]
      * **research report** (`<http://purl.org/coar/resource_type/c_18ws>`_): It is publication that reports on the findings of a research project or alternatively scientific observations on or about a subject. [Source: Adapted from https://en.wikipedia.org/wiki/Research_report]
      * **technical report** (`<http://purl.org/coar/resource_type/c_18gh>`_): A document that describes the process, progress, or results of technical or scientific research or the state of a technical or scientific research problem. It might also include recommendations and conclusions of the research. [Source: http://guides.library.cornell.edu/ecommons/types]
    * **research proposal** (`<http://purl.org/coar/resource_type/c_baaf>`_): A research proposal is a document proposing a research project, generally in the sciences or academia, and generally constitutes a request for sponsorship of that research. [Source: https://en.wikipedia.org/wiki/Research_proposal]
    * **review** (`<http://purl.org/coar/resource_type/c_efa0>`_): A review of others' published work. [Source: Adapted from http://purl.org/spar/fabio/Review]

      * **book review** (`<http://purl.org/coar/resource_type/c_ba08>`_): A written review and critical analysis of the content, scope and quality of a book or other monographic work. [Source: http://purl.org/spar/fabio/BookReview]
      * **commentary** (`<http://purl.org/coar/resource_type/D97F-VB57>`_): A commentary is a more in-depth analysis written to draw attention to a work already published. Commentaries are somewhat like “reviews” in that the author presents his or her analysis of a work and why it would be of interest to a specific audience. [Source: https://www.enago.com/academy/perspective-opinion-and-commentary-pieces]
      * **peer review** (`<http://purl.org/coar/resource_type/H9BQ-739P>`_): An evaluation of scientific, academic, or professional work by others working in the same field. [Source: Adopted from https://schema.datacite.org/meta/kernel-4.4/doc/DataCite-MetadataKernel_v4.4.pdf]
    * **technical documentation** (`<http://purl.org/coar/resource_type/c_71bd>`_): Technical documentation refers to any type of documentation that describes handling, functionality and architecture of a technical product or a product under development or use. [Source: https://en.wikipedia.org/wiki/Technical_documentation]
    * **thesis** (`<http://purl.org/coar/resource_type/c_46ec>`_): A book authored by a student containing a formal presentations of research outputs submitted for examination in completion of a course of study at an institution of higher education, to fulfil the requirements for an academic degree. Also know as a dissertation. [Source: http://purl.org/spar/fabio/Thesis]

      * **bachelor thesis** (`<http://purl.org/coar/resource_type/c_7a1f>`_): A thesis reporting a research project undertaken as part of an undergraduate course of education leading to a bachelor's degree. [Source: http://purl.org/spar/fabio/BachelorsThesis]
      * **doctoral thesis** (`<http://purl.org/coar/resource_type/c_db06>`_): A thesis reporting the research undertaken during a period of graduate study leading to a doctoral degree. [Source: http://purl.org/spar/fabio/DoctoralThesis]
      * **master thesis** (`<http://purl.org/coar/resource_type/c_bdcc>`_): A thesis reporting a research project undertaken as part of a graduate course of education leading to a master's degree. [Source: http://purl.org/spar/fabio/MastersThesis]
    * **transcription** (`<http://purl.org/coar/resource_type/6NC7-GK9S>`_): A written record of words spoken in court proceedings or in a speech, interview, broadcast, or sound recording. [Source: Adapted from https://products.abc-clio.com/ODLIS/odlis_t.aspx]
    * **working paper** (`<http://purl.org/coar/resource_type/c_8042>`_): A working or discussion paper circulated publicly or among a group of peers. Certain disciplines, for example economics, issue working papers in series. [Source: http://www.ukoln.ac.uk/repositories/digirep/index/Eprints_Type_Vocabulary_Encoding_Scheme#:~:text=http%3A//purl.org/eprint/type/WorkingPaper]



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




