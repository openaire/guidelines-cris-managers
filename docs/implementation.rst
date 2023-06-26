Technical Implementation Guidelines
-----------------------------------

Metadata representation in CERIF XML
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CRIS-to-OpenAIRE information interchange uses the OAI-PMH 2.0 protocol
with the CERIF XML defined by these Guidelines as the metadata language.
This CERIF XML uses the namespace `<https://www.openaire.eu/cerif-profile/1.2/>`_. 
Its structure is defined and constrained by the corresponding XML Schema. [#f0]_
Accompanying these Guidelines is a comprehensive set of examples. [#f1]_

Each metadata object is represented as a top-level XML element: ``Publication``, ``Product``, ``Patent``, ``Person``, ``OrgUnit``, ``Project``, ``Funding``, ``Event``, ``Equipment``.
The content model for each of these elements is specified in the previous section; the rest of this subsection gives guidelines to its usage.

CERIF represents titles, names, abstracts and similar text attributes as multi-lingual. 
In CERIF XML the language is expressed using the standard ``xml:lang`` attribute.
Unless stated otherwise this is considered to be the value in the original language.

While syntactically, the CERIF profile XML allows to construct structures of any depth, 
the contents of each metadata record should be kept limited to the nearest objects that are representable by a top-level element. 
These neighboring objects should be expressed using as much detail as is practical to identify them. 
This includes links to any higher level structures of which the object is part, e.g. to an institution of which an organisation unit is part.
More specifically, the Person record eventually embedded in the ``Author`` element of a ``Publication`` should not include any affiliation information (but also Editors and similar scenario in other entities). Instead, the ``Affiliation`` element inside the ``Author`` tag should keep all the ``OrgUnit`` up to the root organisation including for intermediate level only the name and identifiers.

However, the neighboring object XML shall never contain more information or different information from what is expressed in the main record for that object 
i.e., where the object is retrieved as a top-level object. This is a stronger form of a requirement of functional dependency.

**Display names.**
In some cases it is important to represent the name of a person or organisation as it appeared in a document (e.g. in the list of authors of a journal article): 
it can differ from the current official name.
The OpenAIRE CERIF profile XML Schema allows to place such a name in a ``DisplayName`` XML element on some links.
Where admissible, it shall occur before the ``Person`` or ``OrgUnit`` XML element.

In the extreme case where just the display name of a person or an organisation is known, 
the ``DisplayName`` with an empty ``Person`` or ``OrgUnit`` XML element can be used.

Also intermediate cases are supported such as the case where the CRIS system doesn't maintains an authority for external people but has additional information about it such as an ORCID. In such case an embedded ``Person`` without an Internal Identifier is allowed with the known information about the person.

However, it is recommended that CRIS managers keep managed authority lists everywhere where these are feasible.

**Embedded entities**
In some cases the CRIS doesn't maintain authority over entities that are only of secondary interest for the institution and thus are not managed. 
This is often the case for publication channels that are represented in CERIF as a ``Publication``, but could apply also to parts of other entities such as the ``Event``, ``Person``, ``Funding`` and others.
In these cases, in analogy with the Display names section above, the use of an embedded entity without an internal identifier is allowed.

.. rubric:: Footnotes

.. [#f0] The XML schema is located at `<https://www.openaire.eu/schema/cris/1.2/openaire-cerif-profile.xsd>`_.
.. [#f1] Please see an overview map at `<https://github.com/openaire/guidelines-cris-managers/blob/v1.2/docs/_illustrations/OpenAIRE-examples-map.png>`_; the individual examples as full OAI-PMH 2.0 response messages  `<https://github.com/openaire/guidelines-cris-managers/tree/v1.2/samples>`_

OAI-PMH for Harvesting
^^^^^^^^^^^^^^^^^^^^^^

OpenAIRE uses the OAI-PMH 2.0 protocol [#f2]_ for harvesting metadata from CRIS systems.

.. rubric:: Footnotes

.. [#f2] Lagoze, C.; Van de Sompel, H.; Nelson, M.; Warner, S.: *The Open Archives Initiative Protocol for Metadata Harvesting*. Open Archives Initiative, 2002-06-14. `<https://www.openarchives.org/OAI/openarchivesprotocol.html>`_

Metadata Format and Prefix
""""""""""""""""""""""""""

The OAI-PMH 2.0 metadata prefixes starting with ``oai_cerif_openaire`` are reserved for these Guidelines, 
including this release and any previous or future ones.

OpenAIRE Guidelines 1.2 compatible CRIS shall 
use an OAI-PMH metadata prefix starting with ``oai_cerif_openaire`` and 
XML metadata contents from the `<https://www.openaire.eu/cerif-profile/1.2/>`_ namespace.

OpenAIRE Guidelines 1.1 compatible CRIS shall 
use an OAI-PMH metadata prefix starting with ``oai_cerif_openaire`` and 
XML metadata contents from the `<https://www.openaire.eu/cerif-profile/1.1/>`_ namespace.

These Guidelines do not restrict other metadata formats, they only need to use a metadata prefix not with starting ``oai_cerif_openaire``.
The metadata prefixes supported by any OAI-PMH 2.0 endpoint shall be unique.

A sample response to a ListMetadataFormats OAI-PMH request is available in `openaire_oaipmh_example_ListMetadataFormats.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_oaipmh_example_ListMetadataFormats.xml>`_.

OpenAIRE OAI-PMH Sets
"""""""""""""""""""""

For harvesting the records relevant to OpenAIRE, the use of specific OAI-PMH sets at the local CRIS system is mandatory.
All of the following OAI-PMH sets shall be recognized by the CRIS, even if not all of them are populated.

**OpenAIRE_CRIS_publications** (setSpec: ``openaire_cris_publications``): The list of CERIF XML records for publications and publishing channels.

**OpenAIRE_CRIS_products** (setSpec: ``openaire_cris_products``): The list of CERIF XML records for datasets and other research products.

**OpenAIRE_CRIS_patents** (setSpec: ``openaire_cris_patents``): The list of CERIF XML records for patents.

**OpenAIRE_CRIS_persons** (setSpec: ``openaire_cris_persons``): The list of CERIF XML records for persons.

**OpenAIRE_CRIS_orgunits** (setSpec: ``openaire_cris_orgunits``): The list of CERIF XML records for organisations and organisation units.

**OpenAIRE_CRIS_projects** (setSpec: ``openaire_cris_projects``): The list of CERIF XML records for projects.

**OpenAIRE_CRIS_funding** (setSpec: ``openaire_cris_funding``): The list of CERIF XML records for funding.

**OpenAIRE_CRIS_events** (setSpec: ``openaire_cris_events``): The list of CERIF XML records for events.

**OpenAIRE_CRIS_equipments** (setSpec: ``openaire_cris_equipments``): The list of CERIF XML records for equipment.

A sample response to a ListSets OAI-PMH request is available in `openaire_oaipmh_example_ListSets.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_oaipmh_example_ListSets.xml>`_.

Referential integrity constraints for all relationships among entities that have an internal identifiers (Id attribute) must be satisfied in the CERIF XML data provided by the CRIS system.

Note that there is no set for services. Exactly one Service record, namely the one representing the CRIS, shall be given in the response to an OAI-PMH Identify request.
For an example please see `openaire_oaipmh_example_Identify.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.2/samples/openaire_oaipmh_example_Identify.xml>`_.


OAI identifiers
"""""""""""""""

The identifiers of objects from the source CRIS shall be represented as OAI identifier of the form ``oai:{service}:{internal ID}`` 
where ``{service}`` denotes the internet domain name of the CRIS,
and ``{internal ID}`` denotes an internal identifier of the object that MUST be unique within the CRIS across all the entity types. 
This is usually the case when UUIDs are used, but it can also be achieved by adding the entity type as a prefix to serially generated id numbers (when other distinction is not available and there is a possibility of conflicts), as illustrated in the accompanying examples (e.g. Publications/893204).

The types are expressed by the plural form of the XML element that represents the object i.e., the name of the collection of all such objects.

The internal identifiers are also used in the ``id`` attributes in the CERIF XML mark-up.
If several candidate internal identifiers are available, the most persistent one should be preferred.
In many cases a UUID – if it is assigned – is more likely to be persistent than integer IDs.

For example a publication with internal ID of 560d48b6-42c3-4ef9-81d6-32c949fb2cdb (a UUID) from a CRIS running 
on behalf of the University of Exampleton (www.exampleton.ac.uk with a cris running at cris.exampleton.ac.uk) 
could have the OAI identifier ``oai:cris.exampleton.ac.uk:560d48b6-42c3-4ef9-81d6-32c949fb2cdb``

If the CRIS system provides also PID such as an handle, for instance 123456789/1, the OAI identifier could be ``oai:cris.exampleton.ac.uk:123456789/1``
Finally, in the case the CRIS system has only numeric ID not unique across the whole system, the OAI identifier could be ``oai:cris.exampleton.ac.uk:Publications/1``  

Compatibility of aggregators
""""""""""""""""""""""""""""

Aggregating CRISs (e.g. at the regional or national levels) can also become compliant to these Guidelines.
These CRISs should provide additional provenance information about its records.
The relevant `section of the institutional and thematic Repository Guidelines <https://openaire-guidelines-for-literature-repository-managers.readthedocs.io/en/latest/use_of_oai_pmh.html#compatibility-of-aggregators>`_ should be followed.
