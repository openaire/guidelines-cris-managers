.. _event:


Event
=====
:Description: An event is something that happens at a given place and time. Definition Source: http://wordnetweb.princeton.edu/perl/webwn?s=event
:Examples: `openaire_cerif_xml_example_events.xml <https://github.com/openaire/guidelines-cris-managers/blob/v1.1/samples/openaire_cerif_xml_example_events.xml>`_
:Representation: XML element ``Event``; the rest of this section documents children of this element
:CERIF: the Event entity (`<https://w3id.org/cerif/model#Event>`_)


Internal Identifier
^^^^^^^^^^^^^^^^^^^
:Use: mandatory (1)
:Representation: XML attribute ``id``
:CERIF: the EventIdentifier attribute (`<https://w3id.org/cerif/model#Event.EventIdentifier>`_)


Type
^^^^
:Description: The type of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Type`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Event_Classification (`<https://w3id.org/cerif/model#Event_Classification>`_)


Acronym
^^^^^^^
:Description: Acronym of the event
:Use: optional (0..1)
:Representation: XML element ``Acronym``
:CERIF: the Event.Acronym attribute (`<https://w3id.org/cerif/model#Event.Acronym>`_)



Name
^^^^
:Description: Name of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Name`` as a multilingual string
:CERIF: the Event.Name attribute (`<https://w3id.org/cerif/model#Event.Name>`_)



Place
^^^^^
:Description: Location of the event (the city or town)
:Use: optional (0..1)
:Representation: XML element ``Place``
:CERIF: the Event.CityTown attribute (`<https://w3id.org/cerif/model#Event.CityTown>`_)



Country
^^^^^^^
:Description: Country of the location of the event
:Use: optional (0..1)
:Representation: XML element ``Country``
:CERIF: the Event.CountryCode attribute (`<https://w3id.org/cerif/model#Event.CountryCode>`_)



StartDate
^^^^^^^^^
:Description: The start date of the event
:Use: optional (0..1)
:Representation: XML element ``StartDate``
:CERIF: the Event.StartDate attribute (`<https://w3id.org/cerif/model#Event.StartDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



EndDate
^^^^^^^
:Description: The end date of the event
:Use: optional (0..1)
:Representation: XML element ``EndDate``
:CERIF: the Event.EndDate attribute (`<https://w3id.org/cerif/model#Event.EndDate>`_)
:Format: full date (``YYYY-MM-DD``) with optional time zone indication



Description
^^^^^^^^^^^
:Description: Description of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Description`` as a multilingual string
:CERIF: the Event.Description attribute (`<https://w3id.org/cerif/model#Event.Description>`_)



Subject
^^^^^^^
:Description: The subject category of the event from a classification
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Subject`` containing the classification identifier and having a ``scheme`` attribute to specify the classification scheme identifier
:CERIF: the Event_Classification (`<https://w3id.org/cerif/model#Event_Classification>`_)


Keyword
^^^^^^^
:Description: A single keyword or key expression that characterize the event. Please repeat to serialize separate keywords or key expressions.
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Keyword`` as a multilingual string
:CERIF: the Event.Keywords attribute (`<https://w3id.org/cerif/model#Event.Keywords>`_)



Organizer
^^^^^^^^^
:Description: The organizer of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Organizer`` with embedded XML element ``OrgUnit`` or ``Project``
:CERIF: the OrganisationUnit_Event linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Organizer>`_ semantics; the Project_Event linking entity (`<https://w3id.org/cerif/model#Project_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Organizer>`_ semantics


Sponsor
^^^^^^^
:Description: The sponsor of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Sponsor`` with embedded XML element ``OrgUnit`` or ``Project``
:CERIF: the OrganisationUnit_Event linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Sponsor>`_ semantics; the Project_Event linking entity (`<https://w3id.org/cerif/model#Project_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Sponsor>`_ semantics


Partner
^^^^^^^
:Description: The partner of the event
:Use: optional, possibly multiple (0..*)
:Representation: XML element ``Partner`` with embedded XML element ``OrgUnit`` or ``Project``
:CERIF: the OrganisationUnit_Event linking entity (`<https://w3id.org/cerif/model#OrganisationUnit_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Partner>`_ semantics; the Project_Event linking entity (`<https://w3id.org/cerif/model#Project_Event>`_) with the `<https://w3id.org/cerif/vocab/EventRelationshipKinds#Partner>`_ semantics



