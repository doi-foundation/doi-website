+++
title = "Handbook Chapter 1: Glossary"
date = "2017-03-21"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Glossary"
type = "handbook"
+++

Glossary of Terms
-----------------

_The terms and definitions in this glossary marked **\*** are as specified in ISO 26324, where for the purposes of the Standard the terms and definitions shown apply. Terms not so marked are general definitions applicable to the DOI® Handbook._


<a name="actionable "></a>actionable 
: Capable of resolution by a system on the Internet, e.g. in an Internet Web browser, an actionable identifier can be "clicked on" and some action takes place. 

<a name="api"></a>Application Programming Interface (API)
: A technical tool used in managing DOI® names in relation to underlying technologies. A description of functionality in a modular conceptual layer above the technology that provides the functionality; in the case of the [DOI® System](#dois) the API provides specifications for using the [Handle System](http://www.handle.net/) but avoids the need for users to address the Handle System directly and in depth. The API ensures the portability of any code written to address DOI system services and applications.

<a name="allowed_value"></a>allowed value\*
: An item which may be used as a value of an element.

<a name="application_profile"></a>application profile\*
: <a name="A set of DOI names that share some common characteristics."></a>A set of DOI names that share some common characteristics.
: _NOTE:_ A DOI application profile is a grouping mechanism for DOI names; the functional specification of the application profile includes a set of metadata, comprising the [kernel metadata](#kernel_metadata) and additional information applicable to that particular genre of object and functional requirements. Each DOI name is associated with one or more application profiles.

<a name="data_dictionary"></a>data dictionary\*
: A repository for all data elements and allowed values of those elements used in [DOI metadata](#doi_metadata) specifications.

<a name="digital_object"></a>digital object
: A data structure whose principal components are digital material, or data, plus a unique identifier for this material. Note that a DOI name may be an identifier of digital objects, but a [DOI name](#doi_name) is not solely an identifier of digital objects as it may also identify other forms, e.g. physical or abstract entities.

<a name="doi_metadata"></a>DOI metadata
: Metadata associated with a [referent](#referent) within the DOI system, based on a structured data model that supports unambiguous description and services.

<a name="doi_name"></a>DOI name\*
: A string that specifies a unique [object](#object) within the DOI system.
: _NOTE 1:_ Names consist of characters in a sequence specified by the [DOI syntax](#doi_syntax).
: _NOTE 2:_ The terms "identifier" and "number" are sometimes but not always used in the same sense and are to be avoided where ambiguity can arise. The unqualified use of "DOI" alone can also be ambiguous. Therefore "DOI" is always used in conjunction with a specific noun (e.g. [DOI name](#doi_name), DOI system) unless the meaning is sufficiently clear from an earlier mention or the specific context.

<a name="doi_syntax"></a>DOI syntax\*
: Rules for the form and sequence of characters comprising any DOI name, specifically the form and character of a prefix element, separator and suffix element.

<a name="doi_system"></a>DOI system\*
: Social and technical infrastructure for the assignment and administration of DOI names as identifiers in computer-readable form through assignment, resolution, referent description, administration, etc.

<a name="first_class"></a>first-class
: Having an identity of itself, not as some attribute of an object. For example, an address is an attribute of something, whereas the thing that has this attribute is a first class object. A DOI name references an entity as a first-class object, not simply the place where the object is located. It may then resolve to a location.

<a name="global_handle_registry"></a>Global Handle Registry®
: A component of the Handle System (see the [DONA Foundation](http://www.dona.net) web site). Provides the service used to manage the namespace of all handle prefixes. The Global Handle Registry contains information about the local handle service responsible for resolving identifiers created with a given prefix.

<a name="handle_system"></a>Handle System®
: The technology used as the resolution component of the DOI system. The Handle System is a general-purpose distributed information system designed to provide an efficient, extensible, and secured global name service for use on networks such as the Internet (see the [DONA Foundation](http://www.dona.net) web site). The Handle System includes an open set of protocols, a namespace, and a reference implementation of the protocols. The DOI system is one implementation of the Handle System; hence a DOI name is a handle.

<a name="indecs™"></a>indecs™
: Acronym of "interoperability of data in e-commerce systems". A project, set of principles, and tools, resulting in a framework, derived from a multi-participant project conducted 1998-2000. The indecs framework provides the analytical basis for the DOI system's approach to metadata.

<a name="indec_ principles"></a>indecs principles
: Four principles specified by the indecs framework:
: *   _Unique identification:_ every entity needs to be uniquely identified within an identified namespace;
: *   _Functional granularity:_ it should be possible to identify an entity when there is a reason to distinguish it;
: *   _Designated authority:_ the author of metadata must be securely identified;
: *   _Appropriate access:_ everyone requires access to the metadata on which they depend, and privacy and confidentiality for their own metadata from those who are not dependent on it.

<a name="interoperability"></a>interoperability\*
: Ability of independent systems to exchange meaningful information and initiate actions from each other, in order to operate together to mutual benefit.
: _NOTE:_ In particular, interoperability constitutes the ability for loosely-coupled independent systems to be able to collaborate and communicate.

<a name="iso_26324"></a>ISO 26324
: ISO 26324:2012 Information and documentation — Digital object identifier system. The instrument through which the DOI system was adopted as an international standard and IDF named as the ISO 26324 Registration Authority.

<a name="kernel_metadata"></a>kernel metadata
: A compulsory, small standardised set of metadata elements for each DOI name.

<a name="local_handle_service"></a>Local Handle Service
: A component of the Handle System. A local handle service is made up of one or more sites, and a site is made up of one or more handle servers. Handle servers store handles. "Local" implies simply that the particular service may be physically or logically confined to storing some administratively convenient subset of handles, such as all DOI names. Local handle services may also be implemented by a Registration Agency for their DOI names, for convenience.

<a name="metadata"></a>metadata\*
: Specific data associated with a [referent](#referent) within the DOI system based on a structured data model that enables the referent of the [DOI name](#doi_name) to be associated with data of any desired degree of precision and granularity to support identification, description and services.
: _NOTE:_ This can involve one or more intermediate mapping operations. The [resolution](#resolution) might or might not return an instance of the object. Multiple resolution is the simultaneous return as output of several pieces of current information related to the object, in defined data structures.

<a name="native_resolver"></a>native resolver
: A plug-in that extends a software's functionality so that it understands the handle protocol. It will recognize a DOI name in the form doi:10.123/456, and resolve it to a URL or other file type the browser recognizes.

<a name="object"></a>object\*
: Entity within the scope of the DOI system that can be digital, physical or abstract.
: _NOTE 1:_ Digital, physical or abstract forms of an entity can be of relevance in information and documentation (e.g. resources, people or agreements).
: _NOTE 2:_ A particular object identified by a specific [DOI name](#doi_name) is the [referent](#referent) of that DOI name.

<a name="opaque_string"></a>opaque string\*
: Syntax string that has no meaning discernible by simple inspection.
: _NOTE:_ To discover meaning, metadata is required.

<a name="persistence"></a>persistence\*
: Existing, and able to be used in services outside the direct control of the issuing assigner, without a stated time limit.

<a name="primary_url"></a>primary URL
: The default URL value which is provided from a DOI name single resolution; or provided as one value in the case of DOI name multiple resolution and specifically denoted as such in the DOI name record.

<a name="proxy_server"></a>proxy server
: A proxy server is a web server that understands the handle protocol and knows how to talk to the Handle System, thereby acting as a gateway between the Handle System and HTTP, enabling resolution of a DOI name in the URL http:// syntax. Any standard browser encountering a DOI name represented in this form will be able to resolve it without the need to extend the web browsers capability, unlike the use of a [native resolver](#native_resolver). The use of the proxy server and an unextended browser provides the more common user interface to the DOI system today. The core DOI name resolution service is used by the proxy but is not constrained by the proxy. DOI names used through a HTTP proxy server (in the https://doi.org (preferred) or http://dx.doi.org representation as a URL) will continue to be persistent.

<a name="referent"></a>referent\*
: Particular [object](#object) identified by a [DOI name](#doi_name).

<a name="registrant"></a>registrant\*
: Person or organization that has requested and received the registration of a particular [DOI name](#doi_name).

<a name="registrant_code"></a>registrant code\*
: Unique string assigned to a registrant, forming part of the prefix element of the [DOI syntax](#doi_syntax) but having no other implied meaning.

<a name="resolution"></a>resolution\*
: Process of submitting a [DOI name](#doi_name) to a network service and receiving in return one or more pieces of current information related to the identified object such as metadata or a location (URL) of the object or of metadata.

<a name="state_data"></a>state data
: The current values of the data held in the DOI name resolution service in association with a particular DOI name, returned in response to a [resolution](#resolution) request.

<a name="unique_identification"></a>unique identification\*
: Specification by a [DOI name](#doi_name) of one and only one [referent](#referent).