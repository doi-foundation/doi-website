+++
title = "DOI® Handbook"
date = "2023-02-20"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "DOI Kernel XML Schema"
type = "handbook"
+++

DOI Kernel XML Schema
---------------------

The elements of the DOI Kernel are described in the DOI Handbook, Chapter 4, Data Model, Section 4.3 [DOI metadata](/the-identifier/resources/handbook/4_data_model#4.3).

DOI Kernel XML Schema, Version 2.3, is maintained by the DOI Foundation, at [http://doi.org/10.1000/276](http://doi.org/10.1000/276).

The allowed value sets (AVS) are in a separate namespace, at [http://doi.org/10.1000/282](http://doi.org/10.1000/282).

The DOI Kernel XML Schema and the allowed value sets were updated 27 November, 2022.

See also [Policy Notes on Deprecated Structure and Values](/the-identifier/resources/handbook/doi_kernel_xml_schema_policy_notes/).

Release Notes
--------------------------

### Changes to DOI Kernel XML Schema, Version 2.3, 27 November, 2022 

- Added IETF BCP 47 namespace for language codes
- Added language as a subelement of partyName
- Added element language
- Added element language of Referent Content
- Added creationDate element
- Added creationPlace element with name, placeIdentifier, countryCode
- Added placeIdentifier complex type with value and type
- Added new datatype dateOrDateTime
- Added complex type language of Content with a language OfContentType
- Added Place complex type
- Added languageOfReferentContentType simpleType
- Added placeType simple type
- Added creationDateType element
- Added element referentPlace with complexType referentPlace and sub-elements name and identifier
- Added complexType placeName with elements value, language and type
- Changed partyIdentifier to have nonUriValue or uri types
- Changed placeIdentifier to have nonUriValue or uri types

### Changes to the AVS as of 27 November, 2022

- Added version attribute at top level of schema (using ISO date as version value)
- Added FundingBody to agentRole list of allowed values
- Added PrincipalTitle to creationNameType list of allowed values
- Added ORCID to partyIdentifierType list of allowed values
- Added ChapterNumber to sequenceIdentifierType list of allowed values
- Added IssueNumber to sequenceIdentifierType list of allowed values
- Added TrackNumber to sequenceIdentifierType list of allowed values
- Added VolumeNumber to sequenceIdentifierType list of allowed values
- Added complex type languageOfContent with a language and a languageOfContentType to referentCreation
- Added creationDateType with values PublicationDate and ReleaseDate
- Changed languageOfContentType to languageOfReferentContentType
- Added PlaceOfPublication and PlaceOfCreation to placeType
- Added placeNameType with values AbbreviatedName, FormerName, Name and PrincipalName
