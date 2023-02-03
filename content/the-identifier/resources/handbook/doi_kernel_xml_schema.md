+++
title = "DOI® Handbook"
date = "2020-07-15"
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

DOI Kernel XML Schema, Version 2.2, is maintained by the IDF, at [http://doi.org/10.1000/276](http://doi.org/10.1000/276).

The allowed value sets (AVS) are in a separate namespace, at [http://doi.org/10.1000/282](http://doi.org/10.1000/282).

The allowed value sets were updated 14 July 2020 with recent changes to ISO 3166 country codes such as the renaming of North Macedonia. The Data Dictionary will be updated to reflect this shortly.

See also [Policy Notes on Deprecated Structure and Values](/the-identifier/resources/handbook/doi_cchema_policy_notes/).

Release Notes, version 2.2
--------------------------

### Changes from version 2.1

These changes all arose from requirements from the EIDR Registration Agency.

### (a) Defunct and "non-standard" territories

A structural change has been made to accommodate Territory Codes which are outside the current iso3166a2:TerritoryCode list but need to be referenced in DOI metadata:

1.  The existing AllowedValueSet/XML type is kept as "iso3166a2:TerritoryCode".
2.  A new AllowedValueSet/XML type "doi:nonIsoTerritoryCode" has been created into which additional codes can be added.
3.  A new AllowedValueSet/XML type "doi:territoryCode" has been created which is a union of (1) and (2). This combined type is used for Territories in the schema.

The following territories have been included in doi:nonIsoTerritoryCode, using both their former ISO 3166-1 and their current ISO3166-3 codes:

Territory | doi:nonIsoTerritoryCode
---|---
German Democratic Republic | DD, DDDE
USSR | SU, SUHH
Yugoslavia | YU, YUCS

### (b) Proprietary creation identifier types

Further values have been added to the creationIdentifierType Allowed Value Set:

Name | Description
---|---
Ad-ID | An Ad-ID, a 12-character identifier used by the advertising industry for identifying advertising assets, described at www.ad-id.org.
AMG | An All Media Guide Identifier, an identifier for entities (artists, music, etc.) in the AMG database now maintained by Rovi.
Baseline | A Baseline Identifier, a 7-digit identifier for audiovisual works.
cIDF | A Content ID Forum Identifier (version 2.0 rev 1.1), specified at http://www.npo-ba.org/cid/cIDfSpecV2R11E.pdf.
Grid | A Global Release Identifier, an 18-character identifier for releases of audio Creations as defined by IFPI.
IVA | An Internet Video Archive Identifier, a 7-digit identifier for trailers, defined by the Internet Video Archive.
MUZE | A MUZE Identifier, an 8-character identifier for music songs in the MUZE database now maintained by Rovi.
SMPTE-UMID | A Unique Material Identifier, a 32-byte identifier for audiovisual Creations as defined in SMPTE 330M-2004.
TRIB | A Tribune Media Services Unique ID, a 14-character identifier for audiovisual works.
TVG | A TV Guide Identifier, a 6-digit identifier for televised audiovisual works.
URI | A Uniform Resource Identifier, an identifier for WebResources as defined in IETF's RFC 3986.
UUID | A Universally Unique Identifier, an identifier identifier with 32 hexadecimal digits described in ITU-T Rec. X.667.
URN | A Uniform Resource Name, an identifier for WebResources as defined in IETF's RFC 2141.

Three attributes have been added to creationIdentifierType to include more information on the identifier type when Proprietary Identifiers are used: the domain in which the identifier is declared, its namespace, and the party responsible for issuing and managing the identifier:

*   an optional attribute "userDefinedType" to be used only if value = "ProprietaryIdentifier", for a name of the creationIdentifierType
*   an optional Attribute "validNamespace" to be used only if value = "ProprietaryIdentifier", for the namespace within which the Identifier is recognized
*   an optional attribute "governingParty" to be used only if value = "ProprietaryIdentifier", for a name or identifier of the party ultimately responsible for issuing the identifiers

For example, a company "ABC" may issue Proprietary Identifiers "ABC PartyID" for parties and "ABC ProductNumber" for products, and each of these may have its own namespace, so these might be declared with Attribute values as follows:

userDefinedType = "ABC PartyID"  
validNamespace = "party.abc.com"  
governingParty = "ABC" or "abc.com"

userDefinedType = "ABC ProductNumber"  
validNamespace = "product.abc.com"  
governingParty = "ABC" or "abc.com"

### (c) Creation types
Further values have been added to the creationType Allowed Value Set:

Name | Description
---|---
Clip | A short excerpt of a longer Audio or AudioVisual Creation, often made for promotional or preview purposes but which may also be made available commercially.
CueSheet | A metadata file identifying Creations (typically music) which are included in a TVProgramme, CD, DVD or other Audio or AudioVisual Creation.
Film | An AudioVisual Creation, normally of at least 40 minutes duration, first played in a movie theatre (in the US) or a cinema (in most of the rest of the world), or released directly to video.
InteractiveResource | A Visual Creation not intended to be viewed in linear fashion (for example, DVD menus, interactive TV overlays, customized players).
Season | A sub-grouping of an Audio or AudioVisual Series.
ShortFilm | A complete AudioVisual Creation (that is, not a Clip or Excerpt), of no more than 40 minutes duration, that was not made for television.
SupplementalResource | A Creation which accompanies another Creation (this includes, for example, all kinds of preface or epilogue in a textual Creation, or trailers or outtakes in an Audiovisual Creation).
TVProgramme | An AudioVisual Creation made for, or first broadcast on, television.
WebResource | A Creation made for, or first published on, the World Wide Web.

### (d) Creation to creation link roles
Further values have been added to the creationToCreationLinkRole Allowed Value Set:

Name | Description
---|---
AlternateContent | A SupplementalResource in an AudioVisual Creation which is synchronized to the original Creation (for example, an alternate audio track or camera angle).
Clip | A short excerpt of a longer Audio or AudioVisual Creation, often made for promotional or preview purposes but which may also be made available commercially.
CueSheet | A Cue Sheet for the linked Creation (that is, a metadata file identifying Creations (typically music) which are included in a TVProgramme, CD, DVD or other Audio or AudioVisual Creation).
Derivation | A Creation made, in whole or part, from the linked Creation. Derivation is the most general term to cover all forms of adaptation, versioning, performing, fixing and abstracting of one Creation from another, and can be used when the specific type of derived relationship is undefined or unclear.
Edit | A recorded Performance of a Film or other AudioVisual Creation. A Creation playing the role of Edit always has the structuralType of "Performance".
Episode | An Episode of a linked Creation (that is, a Part of a Series broadcast as a single complete programme).
Fixation | A persistent Manifestation of the linked Creation. Fixations include all types of digital files or physical carriers on or in which content is fixed by digital or analogue methods.
IsSameAs | A Creation that is the same as the linked Creation.
Performance | A Performance of the linked Creation (for example, a recorded performance of a musical work).
PromotionalResource | A Creation which promotes the use of the linked Creation.
Season | A Season of the linked Series.
SharesPart | A Creation that shares some content with the linked Creation (for example, two books which have common Chapters, or a TV show that contains an excerpt of a Film).
SupplementalResource | A Creation which accompanies the linked Creation (this includes, for example, all kinds of preface or epilogue in a textual Creation, or trailers or outtakes in an Audiovisual Creation).
Undefined | A Creation with a relationship with the linked Creation which is unknown or not covered by the available options.

### (e) Creation identifiers
The "value" element in creationIdentifier has been replaced with two optional elements (at least one of which must be filled) to accommodate both resolvable (URIs) and non-resolvable creation identifier values: "uri" and "nonUriValue". In addition, the "uri" element is repeatable to account for identifiers that can be resolved through several URIs; an optional attribute called "returnType" has been added on the "uri" element; and an attribute "doesContentNegotiation" has been added to flag a URI that does content negotiation:

*   optional element "nonUriValue"
*   an optional and repeatable element "uri" with
	*   an optional attribute "returnType" (this will be supported by an AVS containing MIME (or equivalent) Type values such as HTML or XML)
	*   an optional attribute "doesContentNegotiation" of type="xs:boolean"
*   an element "type" of type="doi:creationIdentifierType"

For example, a DOI may have theseAttributes:

nonUriValue = "[10.5240/4400-1306-02D0-C307-1DA2-E](http://doi.org/10.5240/4400-1306-02D0-C307-1DA2-E)"  
uri = http://doi.org/10.5240/4400-1306-02D0-C307-1DA2-E  
returnType = "XML"

### (f) Sequence identifiers
Sequence Identifiers have been added to linkedCreation, to enable all forms of link sequencing (track numbers, episode numbers etc):

*   two optional elements "referentCreationSequenceIdentifier" and "linkedCreationSequenceIdentifier" in the complex type "linkedCreation"
*   these elements are of type "sequenceIdentifier" with two mandatory elements "value" and "type"
*   the "type" element is of type "sequenceIdentifierType", which has the same structure as the type "creationIdentifierType" (it has the attributes "userDefinedType", "validNamespace", "governingParty") and uses the AVS "sequenceIdentifierType\_AVS"

### (g) New namespace for AVS
The allowed value sets (AVS) have been moved into a separate namespace ("doiavs") so that they are available for use by schemas other than the DOI Kernel schema. As a consequence there is now a separate XSD file for them, which is available at [http://doi.org/10.1000/282](http://doi.org/10.1000/282). However, for compatibility with version 2.1, the AVS can still be accessed by their old name (in the "doi" namespace), as they have been kept as types in the main XSD, e.g.:

```
<xs:simpleType name="character">  
<xs:restriction base="doiavs:character"/>  
</xs:simpleType>
```

Note that these types will be removed in a future version of the XSD.