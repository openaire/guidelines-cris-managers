.. _c:publication

Publication
===========
:Representation: XML element ``Publication``
:Examples: openaire_cerif_xml_example_publications.xml *TODO*
:Description: Research or scholarly published output resulting from, or related to, research activities.
:CERIF: the *TODO* entity (``cfResPubl``)

Identifier
^^^^^^^^^^
:Representation: XML Attribute ``id``
:Format: identifier of the publication (see a later section for instructions)
:Use: mandatory
:CERIF: the *TODO* Identifier attribute (``cfResPubl.cfResPublId``)

Type
^^^^
:Representation: XML element ``Type`` from namespace ``http://openaire.eu/cerif/vocab/COAR_Publication_Types``
:Description: 
:CERIF: the *TODO* classification (``cfResPubl_Class``)
:Vocabulary: Publication types extracted from the COAR Resource Types concept scheme

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


Title
^^^^^
:Representation: XML element ``Title``
:Description: The title of the publication
:CERIF: the *TODO* attribute (``cfResPublTitle.cfTitle``)

Subtitle
^^^^^^^^
:Representation: XML element ``Subtitle``
:Description: The subtitle of the publication
:CERIF: the *TODO* attribute (``cfResPublSubtitle.cfSubtitle``)

PublishedIn
^^^^^^^^^^^
:Representation: XML element ``PublishedIn`` with embedded XML element ``PublishingChannel``
:Description: Link to the Publishing Channel where this publication appeared
:CERIF: the *TODO* linking entity (``cfResPubl_PublChannel(http://eurocris.org/cerif/vocab/PublicationChannelLinks#PublishedIn)``)

PartOf
^^^^^^
:Representation: XML element ``PartOf`` with embedded XML element ``Publication``
:Description: Link to the Publication of which this publication is a part (e.g. a book chapter links to the book that contains it)
:CERIF: the *TODO* linking entity (``cfResPubl_ResPubl(http://eurocris.org/cerif/vocab/Inter-­PublicationRelations#Part):1``)

PublicationDate
^^^^^^^^^^^^^^^
:Representation: XML element ``PublicationDate``
:Description: The date the publication appeared
:CERIF: the *TODO* attribute (``cfResPubl.cfResPublDate``)

Number
^^^^^^
:Representation: XML element ``Number``
:Description: The number of the publication (e.g. Article Number)
:CERIF: the *TODO* attribute (``cfResPubl.cfNum``)

Volume
^^^^^^
:Representation: XML element ``Volume``
:Description: The volume of the publishing channel where this publication appeared
:CERIF: the *TODO* attribute (``cfResPubl.cfVol``)

Issue
^^^^^
:Representation: XML element ``Issue``
:Description: The issue of the publishing channel where this publication appeared
:CERIF: the *TODO* attribute (``cfResPubl.cfIssue``)

Edition
^^^^^^^
:Representation: XML element ``Edition``
:Description: The edition of the publication
:CERIF: the *TODO* attribute (``cfResPubl.cfEdition``)

Series
^^^^^^
:Representation: XML element ``Series``
:Description: 
:CERIF: the *TODO* attribute (``cfResPubl.cfSeries``)

StartPage
^^^^^^^^^
:Representation: XML element ``StartPage``
:Description: The page where this publication starts, in case the publishing channel or containing publication has numbered pages
:CERIF: the *TODO* attribute (``cfResPubl.cfStartPage``)

EndPage
^^^^^^^
:Representation: XML element ``EndPage``
:Description: The page where this publication ends, in case the publishing channel or containing publication has numbered pages
:CERIF: the *TODO* attribute (``cfResPubl.cfEndPage``)

TotalPages
^^^^^^^^^^
:Representation: XML element ``TotalPages``
:Description: The number of pages of this publication
:CERIF: the *TODO* attribute (``cfResPubl.cfTotalPages``)

Identifier
^^^^^^^^^^
:Representation: XML element ``Identifier``
:Description: 
:CERIF: the Federated Identifier entity (``cfFedId``)

Authors
^^^^^^^
:Representation: XML element ``Authors`` with embedded XML elements ``Author`` that can contain an embedded person with affiliations or organisation unit structure
:Description: The authors of this publication
:CERIF: *TODO*

Editors
^^^^^^^
:Representation: XML element ``Editors`` with embedded XML elements ``Editor`` that can contain an embedded person with affiliations or organisation unit structure
:Description: The editors of this publication
:CERIF: *TODO*

Publishers
^^^^^^^^^^
:Representation: XML element ``Publishers`` with embedded XML elements ``Publisher`` that can contain an embedded person or organisation unit structure
:Description: The publishers of this publication
:CERIF: *TODO*

Access
^^^^^^
:Representation: XML element ``Access`` from namespace ``http://purl.org/coar/access_right``
:Description: 
:CERIF: the *TODO* classification (``cfResPubl_Class``)
:Vocabulary: 

  * **open access** (`<http://purl.org/coar/access_right/c_abf2>`_): 
  * **embargoed access** (`<http://purl.org/coar/access_right/c_f1cf>`_): 
  * **restricted access** (`<http://purl.org/coar/access_right/c_16ec>`_): 
  * **metadata only access** (`<http://purl.org/coar/access_right/c_14cb>`_): 


License
^^^^^^^
:Representation: XML element ``License`` with embedded XML element
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_Class``)

Subject
^^^^^^^
:Representation: XML element ``Subject`` with embedded XML element
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_Class``)

Keyword
^^^^^^^
:Representation: XML element ``Keyword``
:Description: 
:CERIF: the *TODO* attribute (``cfResPublKeyw.cfKeyw``)

Abstract
^^^^^^^^
:Representation: XML element ``Abstract``
:Description: 
:CERIF: the *TODO* attribute (``cfResPublAbstr.cfAbstr``)

Status
^^^^^^
:Representation: XML element ``Status`` with embedded XML element
:Description: 
:CERIF: the *TODO* linking entity (``cfResPubl_Class``)

Originator
^^^^^^^^^^
:Representation: XML element ``Originator`` with embedded XML element ``Project``
:Description: 
:CERIF: the *TODO* linking entity (``cfProj_ResPubl(http://eurocris.org/cerif/vocab/Project_Output_Roles#Originator)``)



