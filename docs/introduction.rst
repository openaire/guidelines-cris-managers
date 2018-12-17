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

Acknowledgements
^^^^^^^^^^^^^^^^

We wish to acknowledge the following contributors and also those who provided feedback outside the formal editing and reviewing work. 


**Editors**

- Jan Dvořák |ORCIDlogo| `https://orcid.org/0000-0001-8985-152X <https://orcid.org/0000-0001-8985-152X>`_ (Charles University, Czechia + euroCRIS)
- Andrea Bollini |ORCIDlogo| `https://orcid.org/0000-0002-9029-1854 <https://orcid.org/0000-0002-9029-1854>`_ (4Science, Italy + euroCRIS)
- Laurent Rémy |ORCIDlogo| `https://orcid.org/0000-0003-1143-2645 <https://orcid.org/0000-0003-1143-2645>`_ (IS4RI, France + euroCRIS)
- Jochen Schirrwagen |ORCIDlogo| `https://orcid.org/0000-0002-0458-1004 <https://orcid.org/0000-0002-0458-1004>`_ (Bielefeld University, Germany + OpenAIRE)

.. |ORCIDlogo| image:: _static/orcid_128x128.png
   :height: 10pt
   :width: 10pt


**Contributors**

- Wilko Steinhof, DANS, The Netherlands


Versions
^^^^^^^^

- 1.1.1, December 2018, `doi:10.5281/zenodo.2316420 <https://doi.org/10.5281/zenodo.2316420>`_

- 1.1.0, June 2018, `doi:10.5281/zenodo.1298650 <https://doi.org/10.5281/zenodo.1298650>`_

- 1.0, June 2015, `doi:10.5281/zenodo.17065 <https://doi.org/10.5281/zenodo.17065>`_


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