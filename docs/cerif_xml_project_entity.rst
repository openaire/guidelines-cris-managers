.. _project:


Project
=======
:Description: A temporary endeavor undertaken to create a unique product, service or result. Source: the Project Management Institute, https://www.pmi.org/about/learn-about-pmi/what-is-project-management In the research information domain, one typically tracks: (1) research projects, where the result is an addition to the body of knowledge of the mankind, (2) technology development projects, where the result is a particular technology or product, (3) innovation projects, where the result is an improvement of a product or process, and (4) projects that create or enhance infrastructure for research, technology development or innovation. Depending on the scope one can also track finer levels of granularity: stages, work packages, sometimes even down to individual tasks. All such activities are also modelled using the Project entity and linked using the recursive link relationship. The Project entity only captures details of the project scope and plan. Information about the resources needed to execute the project such as the funding (i.e., the grants received), the people and organisations involved, the supporting infrastructures, the outputs produced, etc. is contained in separate entities (the Funding entity, the Person entity, the OrgUnit entity, the infrastructure entities, the result entities respectively) and is linked to the Project.
:Examples: `openaire_cerif_xml_example_projects.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_projects.xml>`_
:Representation: XML element ``Project``; the rest of this section documents children of this element
:CERIF: the Project entity (`<https://w3id.org/cerif/model#Project>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the ProjectIdentifier attribute (`<https://w3id.org/cerif/model#Project.ProjectIdentifier>`_)


Type
^^^^
:Description: The type of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Type`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Project_Classification (`<https://w3id.org/cerif/model#Project_Classification>`_)


Acronym
^^^^^^^
:Description: The acronym of the project
:Use: optional (0..1)
:Representation: XML element ``Acronym``
:CERIF: the Project.Acronym attribute (`<https://w3id.org/cerif/model#Project.Acronym>`_)



Title
^^^^^
:Description: The title of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Title`` as a multilingual string
:CERIF: the Project.Title attribute (`<https://w3id.org/cerif/model#Project.Title>`_)



Identifier
^^^^^^^^^^
:Description: An identifier of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier`` with mandatory ``type`` attribute
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



StartDate
^^^^^^^^^
:Description: The start date of the project
:Use: optional (0..1)
:Representation: XML element ``StartDate``
:CERIF: the Project.StartDate attribute (`<https://w3id.org/cerif/model#Project.StartDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



EndDate
^^^^^^^
:Description: The end date of the project
:Use: optional (0..1)
:Representation: XML element ``EndDate``
:CERIF: the Project.EndDate attribute (`<https://w3id.org/cerif/model#Project.EndDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



Consortium
^^^^^^^^^^
:Description: The consortium of the project: the organisations (persons) who are contractually bound to do the work in the project
:Use: optional (0..1)
:Representation: XML element ``Consortium`` with unordered embedded XML elements ``Coordinator`` that can contain an embedded organisation unit or person or ``Partner`` that can contain an embedded organisation unit or person or ``Contractor`` that can contain an embedded organisation unit or person or ``InkindContributor`` that can contain an embedded organisation unit or person or ``Member`` that can contain an embedded organisation unit or person



Coordinator
-----------
:Description: Project coordinator
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Coordinator`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#Coordinator>`_ semantics; the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#Coordinator>`_ semantics


Partner
-------
:Description: Project partner
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Partner`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#Partner>`_ semantics; the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#Partner>`_ semantics


Contractor
----------
:Description: Project contractor
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Contractor`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#Contractor>`_ semantics; the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#Contractor>`_ semantics


InkindContributor
-----------------
:Description: Project in kind contributor
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``InkindContributor`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#InkindContributor>`_ semantics; the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#InkindContributor>`_ semantics


Member
------
:Description: A member of the project consortium
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Member`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#ConsortiumMember>`_ semantics; the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#ConsortiumMember>`_ semantics


Team
^^^^
:Description: The project team: the persons who carry out the work in the project, typically as a part of their job at the organisations from the consortium
:Use: optional (0..1)
:Representation: XML element ``Team`` with unordered embedded XML elements ``PrincipalInvestigator`` or ``Contact`` or ``Member``



PrincipalInvestigator
---------------------
:Description: The principal investigator: the person responsible for the whole project, the head of the project team
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``PrincipalInvestigator`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements. A ``DisplayName`` may be specified, too.
:CERIF: the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#PrincipalInvestigator>`_ semantics


Contact
-------
:Description: A person to contact in matters connected with her/his organisations' participation in the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Contact`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements. A ``DisplayName`` may be specified, too.
:CERIF: the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#OrganisationContact>`_ semantics


Member
------
:Description: A member of the project team
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Member`` with embedded XML element ``Person`` optionally followed by one or several ``Affiliation`` elements. A ``DisplayName`` may be specified, too.
:CERIF: the Project_Person linking entity (`<https://w3id.org/cerif/model#Project_Person>`_) with the `<https://w3id.org/cerif/vocab/PersonProjectEngagements#TeamMember>`_ semantics


Funded
^^^^^^
:Description: Information about funding of this project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Funded`` with unordered embedded XML elements ``By`` that can contain an embedded organisation unit or person or ``As``



By
--
:Description: The funder of the project
:Use: optional (0..1)
:Representation: XML element ``By`` with embedded XML element ``OrgUnit`` or ``Person``. A ``DisplayName`` may be specified, too.
:CERIF: the Project_OrganisationUnit linking entity (`<https://w3id.org/cerif/model#Project_OrganisationUnit>`_) with the `<https://w3id.org/cerif/vocab/OrganisationProjectEngagements#Funder>`_ semantics


As
--
:Description: The specific funding device (grant, award, contract) for the project
:Use: optional (0..1)
:Representation: XML element ``As`` with embedded XML element ``Funding``
:CERIF: the Project_Funding linking entity (`<https://w3id.org/cerif/model#Project_Funding>`_) with the `<https://w3id.org/cerif/vocab/ProjectFundingRelations#Support>`_ semantics


Subject
^^^^^^^
:Description: The subject classification(s) of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subject`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Project_Classification (`<https://w3id.org/cerif/model#Project_Classification>`_)


Keyword
^^^^^^^
:Description: A single keyword or key expression that characterize the project. Please repeat to serialize separate keywords or key expressions.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Keyword`` as a multilingual string
:CERIF: the Project.Keywords attribute (`<https://w3id.org/cerif/model#Project.Keywords>`_)



Abstract
^^^^^^^^
:Description: The abstract of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Abstract``
:CERIF: the Project.Abstract attribute (`<https://w3id.org/cerif/model#Project.Abstract>`_)



Status
^^^^^^
:Description: The status of the project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Status`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Project_Classification (`<https://w3id.org/cerif/model#Project_Classification>`_)


Uses
^^^^
:Description: The equipment this project uses
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Uses`` with embedded XML element ``Equipment``
:CERIF: the Project_Equipment linking entity (`<https://w3id.org/cerif/model#Project_Equipment>`_) with the `<https://w3id.org/cerif/vocab/ProjectResearchInfrastructureRelations#User>`_ semantics


OAMandate
^^^^^^^^^
:Description: Information about the Open Access mandate that applies to this project
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``OAMandate``



mandated
--------
:Description: The flag if Open Access is mandated in the project
:Use: required
:Representation: XML attribute ``mandated``
:Format: ``true`` or ``false`` (data type ``xs:boolean``)



uri
---
:Description: The Open Access policy that applies to the project
:Use: optional
:Representation: XML attribute ``uri``
:Format: URI (data type ``xs:anyURI``)




