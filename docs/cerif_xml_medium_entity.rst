.. _medium:


Medium
======
:Representation: XML element ``Medium``; the rest of this section documents children of this element
:CERIF: the Medium entity (`<https://w3id.org/cerif/model#Medium>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1) in top level entity. When embedded in other entities the Internal Identifier must be included only for managed information (i.e. entities that have a concrete record in the local CRIS system). See `Metadata representation in CERIF XML <https://openaire-guidelines-for-cris-managers.readthedocs.io/en/v1.1.1/implementation.html#metadata-representation-in-cerif-xml>`_
:Representation: XML attribute ``id``
:CERIF: the MediumIdentifier attribute (`<https://w3id.org/cerif/model#Medium.MediumIdentifier>`_)


Type
^^^^
:Description: The type of the medium
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Type`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Medium_Classification (`<https://w3id.org/cerif/model#Medium_Classification>`_)


Title
^^^^^
:Description: Name of the medium
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Title`` as a multilingual string
:CERIF: the Medium.Title attribute (`<https://w3id.org/cerif/model#Medium.Title>`_)



URI
^^^
:Description: An URI of this medium
:Use: optional (0..1)
:Representation: XML element ``URI``
:CERIF: the Medium.UniformResourceIdenfier attribute (`<https://w3id.org/cerif/model#Medium.UniformResourceIdenfier>`_)



MimeType
^^^^^^^^
:Description: The MIME type of the medium
:Use: optional (0..1)
:Representation: XML element ``MimeType``
:CERIF: the Medium.MimeType attribute (`<https://w3id.org/cerif/model#Medium.MimeType>`_)



Size
^^^^
:Description: The size (in octets) of the medium
:Use: optional (0..1)
:Representation: XML element ``Size``
:CERIF: the Medium.Size attribute (`<https://w3id.org/cerif/model#Medium.Size>`_)



Identifier
^^^^^^^^^^
:Description: An identifier of this medium
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Identifier`` with a required ``type`` attribute (the URI of the identifier scheme)
:CERIF: the FederatedIdentifier entity (`<https://w3id.org/cerif/model#FederatedIdentifier>`_)



ns4:Access
^^^^^^^^^^
:Description: The open access type
:Use: optional (0..1)
:Representation: XML element ``Access`` from namespace `<http://purl.org/coar/access_right>`_
:CERIF: the Medium_Classification (`<https://w3id.org/cerif/model#Medium_Classification>`_)
:Vocabulary: 

  * **open access** (`<http://purl.org/coar/access_right/c_abf2>`_): Open access refers to a resource that is immediately and permanently online, and free for all on the Web, without financial and technical barriers.The resource is either stored in the repository or referenced to an external journal or trustworthy archive.
  * **embargoed access** (`<http://purl.org/coar/access_right/c_f1cf>`_): Embargoed access refers to a resource that is metadata only access until released for open access on a certain date. Embargoes can be required by publishers and funders policies, or set by the author (e.g such as in the case of theses and dissertations).
  * **restricted access** (`<http://purl.org/coar/access_right/c_16ec>`_): Restricted access refers to a resource that is available in a system but with some type of restriction for full open access. This type of access can occur in a number of different situations. Some examples are described below: The user must log-in to the system in order to access the resource The user must send an email to the author or system administrator to access the resource Access to the resource is restricted to a specific community (e.g. limited to a university community)
  * **metadata only access** (`<http://purl.org/coar/access_right/c_14cb>`_): Metadata only access refers to a resource in which access is limited to metadata only. The resource itself is described by the metadata, but neither is directly available through the system or platform nor can be referenced to an open access copy in an external journal or trustworthy archive.



License
^^^^^^^
:Description: The license of the file. We recommend using URIs from the SPDX License List (https://spdx.org/licenses/), which includes the Creative Commons licenses.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``License`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Medium_Classification (`<https://w3id.org/cerif/model#Medium_Classification>`_)


Dates
^^^^^
:Use: optional (0..1)
:Representation: XML element ``Dates`` with  embedded XML elements ``Accepted`` or ``Available`` or ``Copyrighted`` or ``Collected`` or ``Created`` or ``Issued`` or ``Submitted`` or ``Updated`` or ``Valid`` or ``Withdrawn`` from the shared structure :ref:`DatesStructure__Group<cerif_xml_common__DatesStructure__Group>`




