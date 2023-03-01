+++
title = "Handbook Chapter 4: Data Model"
date = "2017-03-21"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Data Model"
type = "handbook"
+++

4 Data Model
------------

_This chapter explains the basis for the second main technical component of the DOI® system, the DOI® data model, and its ability to ensure interoperability of DOI name metadata assigned through existing metadata schemes. The chapter gives an overview of the system, and then separate sections discuss the aims of the DOI data model policy — interoperability and good administration — and the three tools of the Metadata System — kernel metadata, the data dictionary and schemas for metadata interchange. Readers are advised to consult the [Glossary of Terms](/the-identifier/resources/handbook/glossary) in conjunction with this chapter._

**[4.1](#4.1)** Overview of the DOI® data model  
**[4.2](#4.2)** Aims of DOI data model policy  
      **[4.2.1](#4.2.1)** Interoperability  
      **[4.2.2](#4.2.2)** Administrative capability  
**[4.3](#4.3)** DOI metadata  
      **[4.3.1](#4.3.1)** DOI® metadata Kernel  
      **[4.3.2](#4.3.2)** Use of the DOI Kernel  
      **[4.3.3](#4.3.3)** Procedure for management of DOI metadata schemas  
            **[4.3.3.1](#4.3.3.1)** Adding values to the Kernel controlled vocabularies  
            **[4.3.3.2](#4.3.3.2)** Update procedure  
      **[4.3.4](#4.3.4)** DOI Data Dictionary  
      **[4.3.5](#4.3.5)** Vocabulary Mapping Framework  
      **[4.3.6](#4.3.6)** Metadata integration:goals of the IDF  
**[4.4](#4.4)** Metadata requirements, ISO 26324  
**[4.5](#4.5)** Underlying ontology  

### 4.1 Overview of the DOI® data model {#4.1}

Without metadata, an identifier is of very little value. Metadata, which may be defined in this context as information about an identified Referent, provides human beings or machines with the data they need to enable them to make use of that identified Referent. Metadata may include names, identifiers, descriptions, types, classifications, locations, times, measurements, relationships and any other kind of information related to a Referent.

There are two ways in which every IDF Registration Agency is bound to deal with metadata. An RA will gather input metadata from Referent providers (typically, descriptions of the Referents and associated rights and policies); and an RA will need to provide some level of output or _service metadata_ to support DOI system services. Input metadata will provide some, but not necessarily all, of the service metadata. In some cases, a _metadata declaration_ will itself be a complete DOI system service (for example, "provide an ONIX Product message for this Referent"). These two flows of metadata declarations are illustrated in figure 1.

{{< figure src="/images/handbook/4.1_Figure1.png" title="Figure 1: Flows of metadata in and out of an RA">}}
  
DOI system policy places no restrictions on the form and content of an RA's input and service metadata declarations, except insofar as input metadata must support the minimum requirements implicit in the _DOI Kernel_ (see below). RAs may specify their own metadata schemes and messages, or use any existing schemes in whole or part for their input and service metadata declarations.

DOI data model policy is concerned with the internal management and exchange of metadata between RAs within the "RA network", and is designed to achieve two aims:

1.  To promote _interoperability_ within the network of DOI system users,
2.  To ensure minimum standards of quality of _administration_ of DOI names by Registration Agencies, and facilitate the administration of the DOI system as a whole.

The DOI data model has three tools to support its metadata policy:

1.  The DOI® **Kernel Metadata Declaration**
2.  DOI® **Referent Metadata Declaration** schemas for data interchange between RAs
3.  The **Data Dictionary** ("DD")

The responsibilities of RAs can be summarized in these three statements:

1.  An RA must be capable of producing a Kernel Metadata Declaration for each DOI name issued.
2.  Metadata exchanged between RAs supporting DOI system services should be exchanged using an agreed DOI Referent Metadata Declaration ("RMD") for the Referent or Service type.
3.  Proprietary terms (data elements and values) used by RAs in Kernel and Referent Metadata Declarations should be registered in the IDF's data dictionary ("DD").

These responsibilities are not mandatory for all DOI names: exceptions are discussed in terms of the requirement for interoperability described in the next section.

### 4.2 Aims of DOI data model policy {#4.2}

#### 4.2.1 Interoperability {#4.2.1}

The first aim of DOI data model policy is to promote interoperability within the network of DOI name users. It does this by providing ways of achieving "semantic compatibility" between different RAs described in this chapter.

Standardization of any kind is driven by a need for interoperability. If an RA is issuing DOI names for Referents for use within a private domain where that RA is able to command all aspects of metadata gathering and output, then it has no need for standardization or conformance with DOI data model obligations. The RA will lay out its schemas and declarations, and its providers and users will, hopefully, conform to them. Such a situation is described as _restricted use of the DOI system_, and applies typically where an organization becomes an RA for the specific purpose of issuing DOI names for use only within its own private organization.

However, such isolation is unusual. Normally, when a DOI name is issued to a Referent, one fundamental assumption may be made about interoperability: _the RA or the Referent provider may wish (now or in the future) that the DOI name should be available for use in services provided by other RAs_. For example, where several RAs are issuing DOI names to journal articles from different publishers, it is likely that some RAs and publishers will want their DOI names to be included in journal-related services supported by other RAs.

In a similar way, many RAs will want DOI names issued by other RAs to be available for inclusion in services they themselves are providing. Such interoperability is one of the principal benefits of the DOI system.

As the RA network grows, such requirements are emerging, and where specific opportunities do not yet exist they are anticipated. In such circumstances neither the RA nor the Referent provider wishes to issue a second DOI name for the Referent, nor to provide and capture the input metadata all over again from its source.

In addition, some DOI system services may not, in future, be the direct responsibility of RAs. Any service provider making use of DOI names issued by different RAs under different Application Profiles will be faced with the question of metadata interoperability.

Any DOI name which is _intended for interoperability_ — that is, which has the possibility of use in services outside of the direct control of the issuing RA — is subject to DOI data model policy. The aim of metadata interoperability can therefore be expressed in these two objectives:

1.  To ensure that metadata held by different RAs is _not fundamentally inconsistent_, and
2.  To ensure that an _efficient and extensible means of interchange_ exists for transporting metadata between RAs (and in future other service providers).

The first objective is dealt with by the DOI Kernel, and the second by the interchange provisions of the RMD and DD.

#### 4.2.2 Administrative capability {#4.2.2}

The second aim of DOI data model policy is "to ensure minimum standards of quality of administration of DOI names by Registration Agencies, and facilitate the _administration_ of the DOI system as a whole". This aim may also be seen as supporting the first aim of interoperability, but it specifically addresses the need to ensure that a prospective RA is competent to issue DOI names responsibly and that ambiguous DOI names do not enter the network.

The policy provides a simple test of an RA's competence: the ability to make a DOI Kernel Declaration, which requires that the RA has an internal system which can support the unambiguous allocation of a DOI name, and is fundamentally sound enough to support interoperability within the network. In addition, data model policy requires that RAs maintain a record of the date of allocation of a DOI name, and the identity of the registrant on whose behalf the DOI name was allocated.

The DOI data model policy also exists to support the future development of mechanisms for facilitating the administration of the DOI system as a whole. This might be done, for example, through the use of terms registered in the Data Dictionary as types, to classify DOI names, services or application profiles.

### 4.3 DOI metadata {#4.3.1}

An identifier such as a DOI is of no value without some related metadata describing what it is that is being identified. The DOI's approach to metadata has two aspects:first, the DOI standard mandates a particular minimum set of metadata (the "Kernel" metadata) to describe the referent of a DOI name, supported by an XML Schema; secondly, to promote interoperability and assist RA's in the creation of their own schemas the IDF provides a Data Dictionary or ontology of all terms used in the Kernel, and other terms registered by Registration Agencies, and supports a mapping tool called the Vocabulary Mapping Framework. These resources are described in this section.

#### 4.3.1 DOI metadata Kernel {#4.3.1}

The "DOI Kernel" is a minimum metadata set with two aims: **recognition** and **interoperability**.

"Recognition" in this context means that the Kernel metadata should be sufficient to show clearly what _kind_ of thing which is the DOI referent (by various classifications), and allow a user to identify with reasonable accuracy the _particular_ thing (by various names, identifiers and relationships). These two are complementary, for it is possible to know that something is (for example) a movie or a DVD without knowing that it is "Casablanca", and vice versa. Recognition is required for the discovery of referents, and also to provide information to a user when a referent is discovered, whether by intent or accident. The user of metadata may be a person or a machine. The structure of the Kernel is often but not always sufficient to provide a unique description of a referent ("disambiguation"), and further specialized metadata elements may be required in some cases. A unique description can in fact always be achieved by adding additional descriptive text to a referentName, but this is not a satisfactory way if the additional text is being used in place of a formal classification, measurement, identifier, time or other structured contextual metadata, as it undermines the second goal of interoperability.

"Interoperability" in this context means that Kernel metadata from different DOI Registration Agencies may be combined or queried by the same software without requiring semantic mapping or transformation. Interoperability is achieved when data elements or their values are common to diverse metadata schemas. The Kernel provides this directly by mandating a common set of core elements and classifications, but this of course supports only limited interoperability.

The assignment of a DOI name requires that the registrant provide metadata describing the object to which the DOI name is being assigned. At minimum, this metadata shall consist of a DOI Kernel Metadata Declaration (also known as the DOI Kernel). A specification of data elements (with sub-elements, cardinality, etc.), current allowed values and XML expression is maintained by the IDF (the ISO 26324 Registration Authority).

The elements of the DOI Kernel are described in Tables 4.1 and 4.2, which are based on tables B.1 and B.2 of ISO 26324. Note: the tables below may contain additional terms beyond those stated in ISO 26324, but only for terms which are open lists for which new items may be registered; the tables below are therefore fully compatible with ISO 26324. An XSD (XML schema) for the DOI Kernel is maintained by the IDF. (See the [DOI Kernel XML Schema](/the-identifier/resources/handbook/doi_kernel_xml_schema/) page for the current version's Release Notes and link to the schema, and also [DOI Kernel XML Schema Policy Notes](/the-identifier/resources/handbook/doi_kernel_xml_schema_policy_notes/).) This schema contains some additional sub-elements for the elements.

Table 4.2 shows the basic administrative elements in a DOI Kernel Metadata Declaration. These elements relate to the issuance of the DOI name and to the registration record itself.

For other elements and sub-elements beyond the DOI Kernel, values as needed may be developed. Such value sets shall be registered in the data dictionary under the responsibility of the IDF (the ISO 26324 Registration Authority) in order to facilitate the integration of DOI data from different sources by a common application.

<table>
<thead>
<tr>
<td>Kernel element(s)</td>
<td>occurs</td>
<td>Description</td>
</tr>
</thead>

<tbody>
<tr>
<td>DOI name</td>
<td>1</td>
<td>Specific DOI name allocated to the identified referent.</td>
</tr>

<tr>
<td>referentIdentifier(s)</td>
<td>0-n</td>
<td>Other identifier(s) referencing the same referent (e.g.<i> ISAN, ISBN, ISRC, ISSN, ISTC, ISNI</i>).<br><br>
This element contains a type element appropriate to the primaryReferentType. The schema at present recognises a <strong>creationIdentifierType</strong> and <strong>partyIdentifierType</strong>, which are open lists for which new allowed values may be registered.
</td>
</tr>

<tr>
<td>referentName(s)</td>
<td>0-n</td>
<td>Name(s) by which the referent is usually known (e.g. <i>title</i>).<br><br>
This element contains a type element appropriate to the primaryReferentType. The schema at present recognises a <strong>creationNameType</strong> and <strong>partyNameType</strong>, which are open lists for which new allowed values may be registered.<br><br> 
This element also contains a <strong>language</strong> element, for which the allowed value list is the ISO 639-2 code list.
</td>
</tr>

<tr>
<td>primaryReferentType</td>
<td>1</td>
<td>The primary type of the referent (e.g. <i>creation, party, event</i>). This is an open list; new primaryReferentTypes may be registered.
</td>
</tr>


<tr>
<td>structuralType</td>
<td>1</td>
<td>The primary structuralType of a referent.<br><br>  
For <i>creations</i>, there are four mutually exclusive <strong>creationStructuralTypes</strong> (<i>physical, digital, performance, abstraction</i>) that allow classification according to overall form. Where structuralTypes may be contained within one another, the referent's structuralType is defined by the overall form [e.g. a CD (<i>physical</i>) may contain files (<i>digital</i>) which contain recordings of performances of songs (<i>abstractions</i>)], and elements of content can be further classified if necessary under referentType. <br><br> 
For <i>parties</i> there are three mutually exclusive <strong>partyStructuralTypes</strong> (<i>person, animal, organization</i>). These lists are closed.
</td>
</tr>

<tr>
<td>mode</td>
<td>0-n</td>
<td>For <i>creations</i> only, the principal sensory mode(s) by which a referent is intended to be perceived (<i>audio, visual, tangible, olfactory, tasteable, none</i>). Mode identifies only the principal intended modes of perception; most physical resources are perceivable with all five senses, but some of these perceptions may be trivial. For example, a printed book may be touched or smelled, but these are supplementary or incidental to visual mode, the intended function as a content carrier. For a Braille book, however, <i>tangible</i> would be a principal mode. This list is closed.
</td>
</tr>

<tr>
<td>character</td>
<td>0-n</td>
<td>For <i>creations</i> only, a fundamental form of communication in which the content of a referent is expressed. There are four values: <i>music, language, image, other</i>. This list is closed.
</td>
</tr>

<tr>
<td>referentType</td>
<td>0-n</td>
<td>Specification of type(s) of referent for parties: <i>author, composer, book publisher, library, university, financial institution, film studio</i>.<br><br> 
For <i>creations</i>, the abstract nature of the content of a referent, irrespective of its creationStructuralType, is typically described by <strong>creationType</strong>, which may be extended as needed to include format and genre elements (for example: <i>audio file, scientific journal, musical composition, dataset, serial article, eBook, PDF</i>).<br><br> 
For <i>parties</i>, referentType is a role with which the party is associated and is described by <strong>associatedPartyRole</strong> (for example: <i>Composer, Author, BookPublisher, JournalPublisher</i>).<br><br> 
This is an open list; new referentTypes may be registered. 
</td>
</tr>

<tr>
<td>linkedCreation</td>
<td>0-n</td>
<td>For <i>creations</i> only. Another creation with which a referentCreation is associated.<br><br>  
This element contains a <strong>creationRoleToCreation</strong> element, which is an open list for which new allowed values may be registered.
</td>
</tr>

<tr>
<td>linkedParty</td>
<td>0-n</td>
<td>For <i>parties</i> only. Another party with which a referentParty is associated.<br><br>  
This element contains a <strong>partyRoleToParty</strong> element, which is an open list for which new allowed values may be registered.
</td>
</tr>

<tr>
<td>principalAgent</td>
<td>0-n</td>
<td>For <i>creations</i> only, the entity or entities principally responsible for the creation or publication of the referent.<br><br> 
This element contains an <strong>agentRole</strong> element which specifies the particular role played (for example: <i>Creator, Author, BookPublisher</i>). This is an open list for which new allowed values may be registered.

</td>
</tr>

<tr>
<td>dateOfBirthOrFormation</td>
<td>0-1</td>
<td>For <i>parties</i> only, the date of birth (for an individual or animal) or formation (for an organization) of the referentParty.
</td>
</tr>


<tr>
<td>dateOfDeathOrDissolution</td>
<td>0-1</td>
<td>For <i>parties</i> only, the date of death (for an individual or animal) or dissolution (for an organization) of the referentParty.
</td>
</tr>

<tr>
<td>associatedTerritory</td>
<td>0-n</td>
<td>For <i>parties</i> only, a <strong>territory</strong> with which the referentParty is associated (for example, a territory of birth, nationality or residence). The allowed value list is the ISO 3166a2 territory code list.</td>
</tr>
</tbody></table>

<p>&nbsp;</p>

**Table 4.2: Administrative elements of the DOI Kernel Metadata Declaration**

<table cellpadding="4" cellspacing="0" width="90%">
<thead><tr>
<td><strong>Kernel element</strong></td>
<td><strong>occurs</strong></td>
<td  ><strong>Description</strong></td>
</tr>
</thead>

<tbody>
<tr>
<td>registrationAuthorityCode</td>
<td>1</td>
<td>Code assigned to denote the name of the agency (authorized by the ISO 26324 Registration Authority) that issued this DOI name. </td>
</tr>

<tr>
<td>issueDate</td>
<td>1</td>
<td>Date when this DOI name was issued.
</td>
</tr>

<tr>
<td>issueNumber</td>
<td>0-1</td>
<td>Number or other designation associated with the specific version of the DOI Kernel Metadata Declaration</td>
</tr>
</tbody></table>

#### 4.3.2 Use of the DOI Kernel {#4.3.2}

Registration Agencies are expected to ensure that, at a minimum, a DOI Kernel Metadata Declaration is made for each DOI name issued. This may be done in two ways: either a Declaration can be made using the DOI Kernel XSD, or (more usually) the elements of the DOI Kernel can be incorporated into a wider metadata schema issued by the Registration Agency.

A Registration Agency has the option of not producing DOI kernel metadata unless asked, i.e. it may convert on demand from an internal representation.

The minimum set of metadata a registrant should be concerned with is the minimum that will meet its business requirements, not the technical minimum of the Kernel which will always be much smaller. The Kernel schema makes very few data elements mandatory. A minimum set is a necessary but not sufficient requirement in considering the question of what data a registrant may need to communicate to supply chain partners.

#### 4.3.3 Procedure for management of DOI metadata schemas {#4.3.3}

A "schema" includes any item of software or documented set of metadata elements designed for a specific purpose to support the use of DOIs. Typically this may be an XML schema, and RDF schema or a set of defined vocabulary terms for use in some process. There is increasing consideration among RAs of the benefits of implementing some common machine-readable DOI metadata schemas, especially as "Linked Data". There are currently two DOI metadata schemas: The DOI Data Dictionary, including Allowed Value Sets for use in messages; and The Metadata Kernel. The [Data Dictionary](/the-identifier/resources/handbook/doi_data_dictionary/) is published in full in the Member Section of the IDF web site. The Kernel is published as an [XML schema](/the-identifier/resources/handbook/doi_kernel_xml_schema/) on the IDF web site.

##### 4.3.3.1 Adding values to the Kernel controlled vocabularies {#4.3.3.1}

Many Kernel elements have values determined by controlled vocabularies (or "allowed value sets"). These are highlighted in bold in the table above. Some of these lists are closed, which means that no values can be added to them by RAs:

> creationStructuralType  
> partyStructuralType  
> mode  
> character  
> language (ISO 639-2)  
> territory (ISO 3166a2)  

while some are open lists, to which new values may be added by RAs:

> primaryReferentType  
> agentRole  
> creationType  
> creationIdentifierType  
> creationNameType  
> creationRoleToCreation  
> associatedPartyRole  
> partyIdentifierType  
> partyNameType  
> partyRoleToParty

RAs may add new values to these lists by registering them in the DOI Data Dictionary (see below).

##### 4.3.3.2 Update Procedures {#4.3.3.2}

Authority to make changes in the existing DOI schemas lies with the DOI-RATech group. Any member of that group may make proposals for updates to a schema, or for introducing a new schema, at any time. Implementing the changes will be the responsibility of IDF's selected technical provider as managers of the schemas, who will acknowledge each proposal and give an estimated deliverable time according to the scope and complexity of the proposed changes. For routine changes this will normally be no more than two weeks. The procedure is:

1.  _Initial proposal_  
	DOI RA member submits suggestions for changes to a schema, or for a new schema, to the DOI-RATech group. These may in the form of specific proposals (for example, the addition of a new allowed value or element) or of requirements (for example, a request to introduce a way of identifying the owner of a proprietary ID scheme in the Kernel). Others on the list may comment.
2.  _Proposal agreed_  
	If necessary, request for clarifications or comments and suggestions for implementation will be made, allowing time for anyone else on the list to respond. The aim is to reach consensus before going ahead to implement the change, and so the time period to reach agreement will vary according to the proposal: some will be very quick, other proposals may be abandoned if there is no agreement.
3.  _Draft implementation_  
	Once the proposal or requirement is clear, an estimated time will be provided for the update, and then issuance of new drafts of the appropriate schema(s) in the time frame, letting the DOI-RATech group know in advance if there is going to be delay for any reason.
4.  _Review updated or new draft schema_  
	The group will be given an opportunity (typically a working week for routine changes) to make any comments on the drafts. If further revision is then needed, steps 3 and 4 will be repeated.
5.  _Release of updated or new schema_  
	When the updated schema is agreed, it will be put on the web site accessible to IDF Members.

#### 4.3.4 DOI Data Dictionary {#4.3.4}

All elements and allowed values used in the Kernel are included in the [DOI Data Dictionary](/the-identifier/resources/handbook/doi_data_dictionary/), a hierarchical ontology created to support the orderly development of DOI metadata. The introduction to the Dictionary contains further information on its scope, structure and maintenance.

Terms will be added to the dictionary at the request of any Registration Agency by the modification of the Metadata Kernel and/or its Allowed Values, or the publication of other DOI message schemas in addition to the Metadata Kernel. Any Registration Agency may add new values to the open Allowed Value Sets by [registering them with the IDF](/the-identifier/resources/handbook/9_operating_procedures#9.3).

ISO 26324 states that the data dictionary used as the repository for all data elements and allowed values (the items which may be used as values of each element) used in DOI metadata specifications shall enable the definition within an ontology of all metadata elements to be available to all registration agencies, and provide the mappings to support metadata integration and transformations required for data interchange. If desired, metadata may be consolidated for a specific service; in this case, the data dictionary shall provide the data mappings such that the consolidated metadata be presented as if from a single set. All allowed values used by a registrant in Kernel Metadata shall be registered in the data dictionary.

The DOI Data Dictionary is implemented and maintained as a managed namespace within the Vocabulary Mapping Framework (VMF).

Users need not understand the underlying concepts and construction of the Data Dictionary in order to make use of it. Key features of the dictionary are:

*   extensible to whatever level of detail and granularity is required;
*   neutral as to business model;
*   independent of any implementation technology;
*   allows use of any existing metadata scheme;
*   multiple, different, specialized views can be made available;
*   local terms can be included: an RA can add all its own local data elements and names into the ontology, and use only those terms it needs;
*   can include different terms from different internal systems and map them together;
*   incorporates external and standard schemes such ISO territory, currency and language codes, and sector specific external schemes, allowing them to be treated seamlessly alongside local terms;
*   any public terms are accessible to all IDF Registration Agencies.

A fundamental role of the IDF is to provide assurance to users that the work has been peer-reviewed, tested in practical implementations, and is based on sound principles. The methodology of the data dictionary has been validated against the W3C ontology language OWL-DL. The data dictionary uses an underlying ontology widely accepted and used in a variety of major metadata schemes, having its origins in the indecs (interoperability of data in e-commerce) framework, an influential multimedia metadata project (1998-2000) by groups from the content, author, creator, library, publisher and rights communities, which pioneered a model of event-based metadata as a solution for integrating digital transactions. See the factsheet "[The indecs Framework](/the-identifier/resources/factsheets/the-indecs-framework)".

#### 4.3.5 Vocabulary Mapping Framework {#4.3.5}

The IDF supports and recommends the Vocabulary Mapping Framework (VMF) to promote interoperability between Registration Agency schemas, and other schemas and ontologies from outside the DOI domain such as ONIX or DDEX message standards. The IDF hosts the VMF web site and is also part of the governance structure of VMF. VMF is a downloadable tool that provides support for semantic interoperability across communities by providing extensive and authoritative mapping of vocabularies from major content metadata standards, to support interoperability across communities.

The VMF is an expansion of the existing RDA/ONIX Framework into a comprehensive vocabulary of resource relators and categories, a superset of those used in major standards from the publisher/producer, education and bibliographic/heritage communities (CIDOC CRM; DCMI; DDEX; DOI; FRBR; MARC21; LOM; ONIX; RDA).

IDF has supported the development of VMF, encourages its use by RAs in the mapping of kernel and non-kernel metadata elements to other schemes, and is happy to facilitate discussion with the VMF technical team.

#### 4.3.6 Metadata integration: goals of the IDF {#4.3.6}

The IDF recognises that the **automated integration of metadata** is the key to realising the full potential of the DOI as tool for digital commerce and culture. This is also the underlying objective of the Semantic Web and "linked data": that the Web should be seen as a medium for structured, interlinked and machine-processable information, as much as, in its current form, a network of documents presenting the information for human consumption.

The tools described here (the Kernel declaration, the DOI Data Dictionary and the VMF) exist to provide a basis of good practise and a start point for the integration of metadata for different DOI referents. Initiatives such as Linked Open Data provide further essential infrastructure, but only in technology and syntax: they do not provide solutions at the level of **shared meaning** ("semantic alignment") for the automated integration of different datasets which can allow services from different RAs and other parties to interact fully without human intervention or a plethora of one-to-one "silo" solutions.

The key to this is the development of well-structured metadata schemas and of services which make use of the semantic mapping capabilities of tools such as the DOI Data Dictionary and the VMF. IDF will provide support to its RAs where they choose to co-operate in the development of such services.

### 4.4 Metadata requirements, ISO 26324 {#4.4}

ISO 26324, the ISO specification of the DOI system, describes the following features and requirements of DOI metadata: The object shall be described unambiguously and precisely by DOI metadata, based on a structured data model that enables the referent of a DOI name to be associated with metadata of any desired degree of precision and granularity to support identification, description and services associated with a referent. This is designed to do the following.

*   Promote interoperability within networks of DOI users by enabling independent systems to exchange information and initiate actions from each other in transactions involving DOI names. Since DOI names can be assigned to any type of object, such interoperability can be across different types of content (e.g. audiovisual, music and text).
*   Ensure minimum standards of quality of administration of DOI names by registrants, and facilitate the administration of the DOI system as a whole.

DOI metadata should support the following functions.

*   Generic mechanism for handling complex metadata for all different types of intellectual property.

EXAMPLE     Instead of treating sound carriers, books, videos, and photographs as fundamentally different things with different (if similar) characteristics, they are all recognized as creations with different values of the same higher level attributes, whose metadata can be supported in a common environment.

*   Interoperability of metadata across applications, with reference to:

1.  media (e.g. books, serials, audio, audiovisual, software, abstract works, visual material),
2.  functions (e.g. cataloguing, discovery, workflow, and rights management),
3.  levels of metadata (from simple to complex),
4.  semantic barriers, and
5.  linguistic barriers.

*   Functional granularity, making it possible to identify an object whenever it needs to be distinguished.

Metadata describing and identifying the object to which the DOI name is being assigned shall be recorded promptly and accurately. Data elements and allowed values used in DOI metadata specifications shall be placed in a repository to facilitate interoperability across selected existing schemes. The data dictionary shall be used as the repository for all data elements and allowed values. The metadata shall meet the minimum requirements of the DOI Kernel Metadata Declaration.

### 4.5 Underlying ontology {#4.5}

The DOI data model is built on a contextual ontology approach shared with many other applications (See Chapter 1, Introduction, [Section 1.6.5](/the-identifier/resources/handbook/1_introduction#1.6.5)). The IDF ensures that the data model is maintained and made available for further extension and application; RAs and application developers do not need to access the contextual ontology in order to use the DOI system, though they may do so if they wish; an illustrative graphic of the high level concept model is provided [here](/resources/DataModelUnderlyingOntology.pdf) and further documentation is available as part of the Vocabulary Mapping Framework and related materials. Please consult the IDF for further information.