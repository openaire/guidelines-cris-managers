Introduction
------------

Aim
^^^
The Guidelines provide orientation for managers of Current Research Information Systems (CRISs) to expose their metadata in a way that is compatible with the OpenAIRE infrastructure as well as the European Open Science Cloud (EOSC). These Guidelines also serve as an example of a standard for information interchange between individual CRISs and other research e-Infrastructures.

By implementing the Guidelines, CRIS managers support the inclusion of metadata from their systems in the OpenAIRE Research Graph and related services.

For developers of CRISs and other research e-Infrastructures, the Guidelines offer orientation on supporting interoperability of research information.

The 1.2.0 release of the Guidelines extends the set of information that can be interchanged, incorporates updated versions of related semantic vocabularies and finetunes several details of the information exposure.

CERIF-CRIS
^^^^^^^^^^
CERIF (Common European Research Information Format) is a standard data model for research information and a recommendation by the European Union to Member States. 
The care and custody of CERIF was handed over by the European Union to euroCRIS (https://eurocris.org), 
a not-for-profit organisation dedicated to fostering cooperation and knowledge-sharing across the research information community 
and promoting interoperability of research information through the CERIF standard.

In addition to a domain model and a formal data model, CERIF includes a mechanism to construct XML profiles (specialized subsets) for specific information interchange scenarios. 
The OpenAIRE profile of CERIF defined in these Guidelines supports harvesting and importing metadata from CRIS systems.

Compliance to the FAIR Principles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The compliance of these Guidelines to the `FAIR Principles <https://www.go-fair.org/>`_ has been studied 
and is documented in a separate report. [#f0]_ 

.. rubric:: Footnotes

.. [#f0] Czerniak, A.; Dvořák, J.; Schirrwagen, J.; Ivanović, D. (2023). *Compliance of the OpenAIRE Guidelines for CRIS Managers v1.1.1 with the FAIR Principles* (1.0). Zenodo. `<https://doi.org/10.5281/zenodo.6627245>`_


Acknowledgements
^^^^^^^^^^^^^^^^

.. |ORCIDlogo| image:: _static/orcid_128x128.png
   :height: 10pt
   :width: 10pt

.. |RORlogo| image:: _static/ror-icon-rbg-32.png
   :height: 12pt
   :width: 16pt

| Organisation names reflect the persons’ affiliations at the time of their contribution to the Guidelines.
| 
| **Editors of this version:**
| Jan Dvořák |ORCIDlogo| `0000-0001-8985-152X <https://orcid.org/0000-0001-8985-152X>`_ 
|  (Charles University, Czechia |RORlogo| `024d6js02 <https://ror.org/024d6js02>`_ + euroCRIS |RORlogo| `04340dw19 <https://ror.org/04340dw19>`_)
| Andreas Czerniak |ORCIDlogo| `0000-0003-3883-4169 <https://orcid.org/0000-0003-3883-4169>`_ 
|  (Bielefeld University, Germany |RORlogo| `02hpadn98 <https://ror.org/02hpadn98>`_ + `OpenAIRE Nexus <https://doi.org/10.3030/101017452>`_)
| Dragan Ivanović |ORCIDlogo| `0000-0002-9942-5521 <https://orcid.org/0000-0002-9942-5521>`_ 
|  (University of Novi Sad, Serbia |RORlogo| `00xa57a59 <https://ror.org/00xa57a59>`_ + euroCRIS |RORlogo| `04340dw19 <https://ror.org/04340dw19>`_)
|
| **Editors of earlier versions:**
| Andrea Bollini |ORCIDlogo| `0000-0002-9029-1854 <https://orcid.org/0000-0002-9029-1854>`_ 
|  (4Science, Italy |RORlogo| `03vb2cr34 <https://ror.org/03vb2cr34>`_ + euroCRIS |RORlogo| `04340dw19 <https://ror.org/04340dw19>`_)
| Laurent Rémy |ORCIDlogo| `0000-0003-1143-2645 <https://orcid.org/0000-0003-1143-2645>`_ 
|  (IS4RI, France + euroCRIS |RORlogo| `04340dw19 <https://ror.org/04340dw19>`_)
| Jochen Schirrwagen |ORCIDlogo| `0000-0002-0458-1004 <https://orcid.org/0000-0002-0458-1004>`_ 
|  (Bielefeld University, Germany |RORlogo| `02hpadn98 <https://ror.org/02hpadn98>`_ + OpenAIRE)
| Nikos Houssos |ORCIDlogo| `0000-0002-5277-285X <https://orcid.org/0000-0002-5277-285X>`_ 
|  (National Documentation Centre (EKT), Greece + euroCRIS |RORlogo| `04340dw19 <https://ror.org/04340dw19>`_)
| Brigitte Jörg |ORCIDlogo| `0000-0001-7941-8108 <https://orcid.org/0000-0001-7941-8108>`_ 
|  (JISC Innovation Support Center, UKOLN, University of Bath, United Kingdom)
|
| **Contributors.**  We wish to acknowledge the following contributors who provided valuable feedback:
| Wilko Steinhof |ORCIDlogo| `0000-0003-1106-8441 <https://orcid.org/0000-0003-1106-8441>`_ 
|  (DANS KNAW, The Netherlands |RORlogo| `008pnp284 <https://ror.org/008pnp284>`_)
| Oliver Goldschmidt |ORCIDlogo| `0000-0002-5468-401X <https://orcid.org/0000-0002-5468-401X>`_ 
|  (Hamburg University of Technology, Germany |RORlogo| `04bs1pb34 <https://ror.org/04bs1pb34>`_)
| Petra Černohlávková |ORCIDlogo| `0000-0001-8683-6156 <https://orcid.org/0000-0001-8683-6156>`_ 
|  (National Library of Technology, Czechia |RORlogo| `028txef36 <https://ror.org/028txef36>`_)
| Aenne Löhden 
|  (Bielefeld University, Germany |RORlogo| `02hpadn98 <https://ror.org/02hpadn98>`_)
| Jordan Piščanc |ORCIDlogo| `0000-0003-3601-8360 <https://orcid.org/0000-0003-3601-8360>`_
|  (University of Trieste, Italy |RORlogo| `02n742c10 <https://ror.org/02n742c10>`_)


Versions
^^^^^^^^

- 1.2.0, June 2023, `doi:10.5281/zenodo.8050936 <https://doi.org/10.5281/zenodo.8050936>`_

- 1.1.1, December 2018, `doi:10.5281/zenodo.2316420 <https://doi.org/10.5281/zenodo.2316420>`_

- 1.1.0, June 2018, `doi:10.5281/zenodo.1298650 <https://doi.org/10.5281/zenodo.1298650>`_

- 1.0, June 2015, `doi:10.5281/zenodo.17065 <https://doi.org/10.5281/zenodo.17065>`_


List of changes in the 1.2.0 version (since 1.1.1)
""""""""""""""""""""""""""""""""""""""""""""""""""

1. The **Medium** CERIF entity is brought into the profile to represent locations of files. It is never used as a top-level entity, so it does not have its own OAI-PMH set. (`#59 <https://github.com/openaire/guidelines-cris-managers/issues/59>`_)
2. The **COAR Resource Types** controlled vocabulary is upgraded to Version 3.1. (`#99 <https://github.com/openaire/guidelines-cris-managers/issues/99>`_ and `#143 <https://github.com/openaire/guidelines-cris-managers/pull/143>`_)
3. The **COAR Access Types** controlled vocabulary is upgraded to Version 1.0. (`#86 <https://github.com/openaire/guidelines-cris-managers/issues/86>`_)
4. Support for generic **Person** **Identifier**:s is added. (`#91 <https://github.com/openaire/guidelines-cris-managers/issues/91>`_)
5. Support for structured **OrgUnit** **Identifiers**:s is added. (`#64 <https://github.com/openaire/guidelines-cris-managers/issues/64>`_)
6. The meaning of date fields in **Patent**:s is clarified. (`#88 <https://github.com/openaire/guidelines-cris-managers/issues/88>`_)
7. Unmanaged entities are allowed without an **Internal Identifier** attribute. (`#56 <https://github.com/openaire/guidelines-cris-managers/issues/56>`_)
8. DataCite Metadata Kernel *Dates* are supported in the **Product** (`#84 <https://github.com/openaire/guidelines-cris-managers/issues/84>`_) and **Medium** (`#150 <https://github.com/openaire/guidelines-cris-managers/pull/150>`_) entities with a common *DatesStructure__Group*.
9. The use of *SPDX License* URIs is recommended. (`#134 <https://github.com/openaire/guidelines-cris-managers/issues/134>`_)
10. Examples were added, documentation has been improved. (`#65 <https://github.com/openaire/guidelines-cris-managers/issues/65>`_, `#83 <https://github.com/openaire/guidelines-cris-managers/issues/83>`_, `#85 <https://github.com/openaire/guidelines-cris-managers/issues/85>`_, `#88 <https://github.com/openaire/guidelines-cris-managers/issues/88>`_, `#97 <https://github.com/openaire/guidelines-cris-managers/issues/97>`_)


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
