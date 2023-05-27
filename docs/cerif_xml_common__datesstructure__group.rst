
.. _cerif_xml_common__datesstructure__group:

DatesStructure__Group
^^^^^^^^^^^^^^^^^^^^^
:Description: Dates or date ranges to describe temporal aspects of the product. Semantically follows the dateType construct from the DataCite Metadata Schema 4.4. If an embargo period is to be expressed, its start should be expressed by the ``startDate`` on ``Submitted`` or ``Accepted`` (as appropriate) and end is represented by the ``startDate`` on ``Available``.

Accepted
========
:Description: Use the ``startDate`` attribute for the date the publisher accepted the resource into their system.
:Use: optional (0..1)
:Representation: XML element ``Accepted``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Accepted>`_ semantics



Available
=========
:Description: Use the ``startDate`` and possibly also ``endDate`` attributes for the dates the resource is or was publicly available.
:Use: optional (0..1)
:Representation: XML element ``Available``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Available>`_ semantics



Copyrighted
===========
:Description: Use the ``startDate`` attribute to give the specific, documented date at which the resource receives a copyrighted status, if applicable
:Use: optional (0..1)
:Representation: XML element ``Copyrighted``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Copyrighted>`_ semantics



Collected
=========
:Description: Use the ``startDate`` and ``endDate`` attributes to describe the date range in which the resource content was collected. To indicate precise or particular timeframes in which research was conducted.
:Use: optional (0..1)
:Representation: XML element ``Collected``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Collected>`_ semantics



Created
=======
:Description: Use the ``startDate`` and ``endDate`` attributes to describe the date range in which the resource itself was put together.
:Use: optional (0..1)
:Representation: XML element ``Created``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Created>`_ semantics



Issued
======
:Description: Use the ``startDate`` attribute for the date the resource was published or distributed, e.g. to a data centre.
:Use: optional (0..1)
:Representation: XML element ``Issued``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Issued>`_ semantics



Submitted
=========
:Description: Use the ``startDate`` attribute for the date the creator submits the resource to the publisher. This could be different from Accepted if the publisher then applies a selection process.
:Use: optional (0..1)
:Representation: XML element ``Submitted``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Submitted>`_ semantics



Updated
=======
:Description: Use the ``startDate`` and ``endDate`` attributes to describe the date range of the last update to the resource, when the resource is being added to.
:Use: optional (0..1)
:Representation: XML element ``Updated``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Updated>`_ semantics



Valid
=====
:Description: Use the ``startDate`` and ``endDate`` attributes to indicate the period in which the dataset or resource is accurate.
:Use: optional (0..1)
:Representation: XML element ``Valid``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Valid>`_ semantics



Withdrawn
=========
:Description: Use the ``startDate`` attribute for the date the resource is removed.
:Use: optional (0..1)
:Representation: XML element ``Withdrawn``
:CERIF: the ResultProduct_Classification linking entity (`<https://w3id.org/cerif/model#ResultProduct_Classification>`_) with the `<https://w3id.org/cerif/vocab/DataCiteMetadataSchema_DateType#Withdrawn>`_ semantics


