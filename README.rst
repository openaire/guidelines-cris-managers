OpenAIRE Guidelines for CRIS Managers based on CERIF-XML
========================================================

This repository is about the **OpenAIRE Guidelines for CRIS Managers 1.1**, 

under review until the end of February 2018.

They are an update of version 1.0 published

.. image:: https://zenodo.org/badge/DOI/10.5281/zenodo.17065.svg
   :target: https://doi.org/10.5281/zenodo.17065
   :alt: v.1.0 DOI



Contents
~~~~~~~~

.. image:: https://travis-ci.org/openaire/guidelines-cris-managers.svg?branch=master
   :target: https://travis-ci.org/openaire/guidelines-cris-managers

.. image:: https://readthedocs.org/projects/openaire-guidelines-for-cris-managers/badge/?version=latest
   :target: https://readthedocs.org/projects/openaire-guidelines-for-cris-managers/?badge=latest
   :alt: Documentation Status

XML Schema: `<schemas/openaire-cerif-profile.xsd>`_

Examples: map at `<docs/_illustrations/OpenAIRE-examples-map.png>`_, files at `<samples/>`_


Checking out this project
~~~~~~~~~~~~~~~~~~~~~~~~~

This project adds `Schematron <https://github.com/Schematron/schematron>`_ as a submodule.
Until `<https://github.com/Schematron/schematron/issues/65>`_ is resolved, we recommend the following way of checking out this project:

#. Checkout `<https://github.com/openaire/guidelines-cris-managers/>`_ **without** submodules.
 
#. Checkout the submodules using the following command::
 
  ``git submodule update --init --remote --recursive``

After you made changes to your submodules configuration, do not forget to run::
 
  ``git submodule foreach git submodule sync``


Contributing
~~~~~~~~~~~~

Your feedback, esp. as a CRIS manager or developer of a CRIS platform, is important for us. You can provide us feedback using the following channels:

* by creating an issue in our guidelines github repository (you need to have a github account): https://github.com/openaire/guidelines-cris-managers/issues
* by sending an e-mail: info@openaire.eu
