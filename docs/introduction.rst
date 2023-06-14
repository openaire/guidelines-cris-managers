Introduction
------------

These guidelines describe the CERIF-XML profile for CRIS managers to be compatible with OpenAIRE.

Aim
^^^
The Guidelines provide orientation for CRIS managers to expose their metadata in a way that is compatible with the OpenAIRE infrastructure. 
By implementing the Guidelines, CRIS managers support the inclusion and therefore the reuse of metadata in their systems within the OpenAIRE infrastructure. 
For developers of CRIS platforms, the Guidelines provide guidance to add supportive functionalities for CRIS managers and users. 
Exchange of information between individual CRIS systems and the OpenAIRE infrastructure is an example of point-to-point data exchange between CRIS systems, 
since the OpenAIRE infrastructure is itself a CRIS system.

CERIF-CRIS
^^^^^^^^^^
CERIF (Common European Research Information Format) is a standard data model for research information and a recommendation by the European Union to Member States. 
The care and custody of CERIF was handed over by the European Union to euroCRIS (http://www.eurocris.org), 
a non-for-profit organisation dedicated to the interoperability of Research Information Systems (CRISs). 
In addition to a domain model and a formal data model, CERIF includes a mechanism to construct XML profiles (specialized subsets) for specific information interchange scenarios. 
The OpenAIRE profile of CERIF supports harvesting and importing metadata from CRIS systems. 

Compliance to the FAIR Principles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The compliance of these Guidelines to the `FAIR Principles <https://www.go-fair.org/>`_ has been studied 
and is documented in a separate report that will be made `available on Zenodo <https://doi.org/10.5281/zenodo.6627245>`_.


Acknowledgements
^^^^^^^^^^^^^^^^

**Editors of this version**

- Jan Dvořák |ORCIDlogo| `https://orcid.org/0000-0001-8985-152X <https://orcid.org/0000-0001-8985-152X>`_ (Charles University, Czechia + euroCRIS)
- Andreas Czerniak |ORCIDlogo| `https://orcid.org/0000-0003-3883-4169 <https://orcid.org/0000-0003-3883-4169>`_ (Bielefeld University, Germany + OpenAIRE)
- Dragan Ivanović |ORCIDlogo| `https://orcid.org/0000-0002-9942-5521 <https://orcid.org/0000-0002-9942-5521>`_ (University of Novi Sad, Serbia + euroCRIS)

.. |ORCIDlogo| image:: _static/orcid_128x128.png
   :height: 10pt
   :width: 10pt

**Editors of earlier versions**

- Andrea Bollini |ORCIDlogo| `https://orcid.org/0000-0002-9029-1854 <https://orcid.org/0000-0002-9029-1854>`_ (4Science, Italy + euroCRIS)
- Laurent Rémy |ORCIDlogo| `https://orcid.org/0000-0003-1143-2645 <https://orcid.org/0000-0003-1143-2645>`_ (IS4RI, France + euroCRIS)
- Jochen Schirrwagen |ORCIDlogo| `https://orcid.org/0000-0002-0458-1004 <https://orcid.org/0000-0002-0458-1004>`_ (Bielefeld University, Germany + OpenAIRE)
- Nikos Houssos |ORCIDlogo| `https://orcid.org/0000-0002-5277-285X <https://orcid.org/0000-0002-5277-285X>`_ (National Documentation Centre (EKT), Greece + euroCRIS)
- Brigitte Jörg |ORCIDlogo| `https://orcid.org/0000-0001-7941-8108 <https://orcid.org/0000-0001-7941-8108>`_ (JISC Innovation Support Center, UKOLN, University of Bath, United Kingdom)

Organisation names reflect the persons’ affiliations at the time of their contribution to the Guidelines.

**Contributors**

We wish to acknowledge the following contributors and also those who provided feedback outside the formal editing and reviewing work. 

- Wilko Steinhof (DANS, The Netherlands)
- Oliver Goldschmidt, Hamburg University of Technology, Germany
- Petra Černohlávková, National Library of Technology, Czechia
- Aenne Löhden, Bielefeld University, Germany


Versions
^^^^^^^^

- 1.2.0, June 2023, `doi:10.5281/zenodo.7977123 <https://doi.org/10.5281/zenodo.7977123>`_

- 1.1.1, December 2018, `doi:10.5281/zenodo.2316420 <https://doi.org/10.5281/zenodo.2316420>`_

- 1.1.0, June 2018, `doi:10.5281/zenodo.1298650 <https://doi.org/10.5281/zenodo.1298650>`_

- 1.0, June 2015, `doi:10.5281/zenodo.17065 <https://doi.org/10.5281/zenodo.17065>`_


List of changes in the 1.2.0 version (since 1.1.1)
""""""""""""""""""""""""""""""""""""""""""""""""""

1. The **COAR Resource Types** controlled vocabulary is upgraded to Version 3.1 (`#99 <https://github.com/openaire/guidelines-cris-managers/issues/99>`_)
2. The **COAR Access Types** controlled vocabulary is upgraded to Version 1.0 (`#86 <https://github.com/openaire/guidelines-cris-managers/issues/86>`_)
3. Documentation of using the OAI-PMH identifier was improved. (`#85 <https://github.com/openaire/guidelines-cris-managers/issues/85>`_)
4. More examples were added. (`#83 <https://github.com/openaire/guidelines-cris-managers/issues/83>`_)
5. Published a report on `Compliance of the OpenAIRE Guidelines for CRIS Managers v1.1.1 with the FAIR Principles <https://doi.org/10.5281/zenodo.6627245>`_ (`#98 <https://github.com/openaire/guidelines-cris-managers/issues/98>`_)
6. Adding a generic **Identifier** (`#91 <https://github.com/openaire/guidelines-cris-managers/issues/91>`_)
7. Clarify the use of Patent (`#89 <https://github.com/openaire/guidelines-cris-managers/issues/89>`_ , `#106 <https://github.com/openaire/guidelines-cris-managers/issues/106>`_)
8. Updating outdated links  


List of changes in the 1.1.1 version (since 1.1.0)
""""""""""""""""""""""""""""""""""""""""""""""""""

1. **Digital Author Identifier** (DAI) is added as a person identifier type. (`#49 <https://github.com/openaire/guidelines-cris-managers/issues/49>`_)
2. **Multiple person identifiers** of the same kind are allowed: where ambiguous or uncertain information is available, it should be listed in ``<AlternativeXXX>`` elements (where XXX is the identifier type). (`#48 <https://github.com/openaire/guidelines-cris-managers/issues/48>`_)
3. **Multiple parents of an OrgUnit** are allowed so that e.g. interdisciplinary research centres can be represented faithfully. (`#45 <https://github.com/openaire/guidelines-cris-managers/issues/45>`_)
4. The ``xmlns:cfprocess`` declaration was removed where it was not needed. (`#43 <https://github.com/openaire/guidelines-cris-managers/issues/43>`_)
5. The upstream development of CERIF XML introduced changes in the ``includes/cerif-commons.xsd`` schema component.
6. Cached Schematron schemas are now being taken from a more authoritative source.
7. The documentation was improved regarding the precision of date/datetime fields (`#47 <https://github.com/openaire/guidelines-cris-managers/issues/47>`_), regular expression constraints in the XML Schema (`#50 <https://github.com/openaire/guidelines-cris-managers/issues/50>`_) and the DisplayName feature (`#52 <https://github.com/openaire/guidelines-cris-managers/issues/52>`_).
8. The official location of the XML Schema files is now at https://www.openaire.eu/schema/cris/1.1/ (`#51 <https://github.com/openaire/guidelines-cris-managers/issues/51>`_)


Feedback
^^^^^^^^

We welcome your comments and suggestions. 
Please see https://github.com/openaire/guidelines-cris-managers#contributing
