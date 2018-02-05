Technical Implementation Guidelines
-----------------------------------

Metadata representation in CERIF XML
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CRIS-to-OpenAIRE information interchange uses the OAI-PMH 2.0 protocol
with the CERIF XML defined by these Guidelines as the metadata language.
This CERIF XML uses the namespace `<https://www.openaire.eu/cerif-profile/1.1/>`_. 
Its structure is defined and constrained by the corresponding XML Schema. [#f0]_
Accompanying these Guidelines is a comprehensive set of examples. [#f1]_

Each metadata object is represented as a top-level XML element: ``Publication``, ``Product``, ``Patent``, ``Person``, ``OrgUnit``, ``Project``, ``Funding``, ``Event``, ``Equipment``, ``Service``.
The content model for each of these elements is specified in the previous section; the rest of this subsection gives guidelines to its usage.

CERIF represents titles, names, abstracts and similar text attributes as multi-lingual. 
In CERIF XML the language is expressed using the standard ``xml:lang`` attribute.
Unless stated otherwise this is considered to be the value in the original language.

While syntactically, the CERIF profile XML allows to construct structures of any depth, 
the contents of each metadata record should be kept limited to the nearest objects that are representable by a top-level element. 
These objects should be expressed using as much detail as is practical to identify them. 
This includes links to any higher level structures of which the object is part, e.g. to an institution of which an organisation unit is part.

.. rubric:: Footnotes

.. [#f0] For the period of the review the XML schema is located at `<https://github.com/openaire/guidelines-cris-managers/blob/master/schemas/openaire-cerif-profile.xsd>`_. After the review the schema will be published as a permanent resource in a final location.
.. [#f1] Please see an overview map at `<https://github.com/openaire/guidelines-cris-managers/blob/master/docs/_illustrations/OpenAIRE-examples-map.png>`_; the individual examples as full OAI-PMH 2.0 response messages  `<https://github.com/openaire/guidelines-cris-managers/tree/master/samples>`_

# .. [#f2] CERIF 1.6 XML: http://www.eurocris.org/Index.php?page=CERIF-1.6&t=1

OAI-PMH for Harvesting
^^^^^^^^^^^^^^^^^^^^^^

OpenAIRE uses the OAI-PMH v2.0 protocol for harvesting metadata from CRIS systems.

Metadata Format and Prefix
""""""""""""""""""""""""""

OpenAIRE Guidelines 1.1 compatible CRIS should use the OAI-PMH metadata prefix ``oai_cerif_openaire`` and XML metadata contents from the `<https://www.openaire.eu/cerif-profile/1.1/>`_ namespace.

OpenAIRE OAI-PMH Sets
"""""""""""""""""""""

For harvesting the records relevant to OpenAIRE, the use of specific OAI-PMH sets at the local CRIS system is mandatory. 
The description and required characteristics of the sets are provided in the following table:

+---------------------------------------------------------+-----------------------------------------+
|Description                                              |Required characteristics                 |
+=========================================================+=========================================+
| | The entire graph of CERIF entities in the source      | | **setName:** OpenAIRE_CRIS            |
| | CRIS system of relevance to OpenAIRE.                 | | **setSpec:** openaire_cris            |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for publications.       || **setName:** OpenAIRE_CRIS_publications|
| |                                                       || **setSpec:** openaire_cris_publications|
+---------------------------------------------------------+-----------------------------------------+
|| The list of CERIF XML records for datasets and         || **setName:** OpenAIRE_CRIS_products    |
|| other research products.                               || **setSpec:** openaire_cris_products    |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for patents.            || **setName:** OpenAIRE_CRIS_patents     |
| |                                                       || **setSpec:** openaire_cris_patents     |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for persons.            | | **setName:** OpenAIRE_CRIS_persons    |
| |                                                       | | **setSpec:** openaire_cris_persons    |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for organisations and   | | **setName:** OpenAIRE_CRIS_orgunits   |
| | organisation units.                                   | | **setSpec:** openaire_cris_orgunits   |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for projects.           | | **setName:** OpenAIRE_CRIS_projects   |
| |                                                       | | **setSpec:** openaire_cris_projects   |
+---------------------------------------------------------+-----------------------------------------+
| | The list of CERIF XML records for funding.            | | **setName:** OpenAIRE_CRIS_funding    |
| |                                                       | | **setSpec:** openaire_cris_funding    |
+---------------------------------------------------------+-----------------------------------------+
|| The list of CERIF XML records for events.              || **setName:** OpenAIRE_CRIS_events      |
||                                                        || **setSpec:** openaire_cris_events      |
+---------------------------------------------------------+-----------------------------------------+
|| The list of CERIF XML records for equipment.           || **setName:** OpenAIRE_CRIS_equipments  |
||                                                        || **setSpec:** openaire_cris_equipments  |
+---------------------------------------------------------+-----------------------------------------+
|| The list of CERIF XML records for services.            || **setName:** OpenAIRE_CRIS_services    |
||                                                        || **setSpec:** openaire_cris_services    |
+---------------------------------------------------------+-----------------------------------------+

Referential integrity constraints for all relationships among entities must be satisfied in the CERIF XML data provided by the CRIS system. 

OAI identifiers
"""""""""""""""

The identifiers of objects from the source CRIS shall be represented as OAI identifier of the form ``oai:{service}:{type}/{internal ID}`` 
where ``{service}`` denotes the internet domain name of the institution which uses the CRIS,
``{type}`` stands for the type of the object,
and ``{internal ID}`` denotes an internal identifier of the publication within the CRIS.

The types are expressed in the plural form of the XML element that represents the object i.e., the name of the collection of all such objects.
For example a publication with internal ID of 282349 from a CRIS running on behalf of the University of Exampleton (www.exampleton.ac.uk with a cris running at cris.exampleton.ac.uk) 
will have the OAI identifier ``oai:cris.exampleton.ac.uk:Publications/282349``. 

