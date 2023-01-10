+++
title = "Handbook Chapter 1: Introduction"
date = "2015-10-17"
showdate = true
draft = false
# the following section is for the header
maintext = "Introduction"
imagetop = "The Identifier"
imagemain = "DOI Handbook"
type = "handbook"
+++

1 Introduction
--------------

**[1.1](#1.1)** Documentation  
**[1.2](#1.2)** History  
**[1.3](#1.3)** Standards  
**[1.4](#1.4)** Trademarks  
**[1.5](#1.5)** Introduction (ISO 26324)  
**[1.6](#1.6)** Overview  
      **[1.6.1](#1.6.1)** The DOI system concept  
      **[1.6.2](#1.6.2)** DOI system components  
      **[1.6.3](#1.6.3)** DOI name syntax  
      **[1.6.4](#1.6.4)** DOI name resolution  
      **[1.6.5](#1.6.5)** DOI® data model  
      **[1.6.6](#1.6.6)** DOI system implementation  
**[1.7](#1.7)** Benefits of the DOI system

### 1.1 Documentation {#1.1}

The _DOI Handbook_ is the main source of information about the DOI® System. DOI 10.1000/182 identifies the latest current version of the handbook. Some topics are explained in further detail in stand-alone factsheets which are also cited from this handbook at the relevant points.

The DOI website also includes other public information, news, events and Members-only information.

The unqualified term "DOI" alone (which was used in the early years of the system's development) is now deprecated, as a potential source of confusion, and the preferred usage is with a qualifier to refer to either specific components of the DOI system (e.g. "DOI name": the string that specifies a unique referent within the DOI system); or the system as a whole ("DOI system": the functional deployment of DOI names as the application of identifiers in computer sensible form through assignment, resolution, referent description, administration, etc. as prescribed by the specification).

### 1.2 History {#1.2}

The DOI system originated in a joint initiative of three trade associations in the publishing industry (International Publishers Association; International Association of Scientific, Technical and Medical Publishers; Association of American Publishers). Although originating in text publishing, the DOI was conceived as a generic framework for managing identification of content over digital networks, recognising the trend towards digital convergence and multimedia availability. The system was announced at the Frankfurt Book Fair 1997. The International DOI® Foundation (IDF) was created to develop and manage the DOI system, also in 1997.

From its inception the IDF worked with the [Corporation for National Research Initiatives](http://www.cnri.reston.va.us) (CNRI) as a technical partner, using the [Handle System](http://www.handle.net) developed by CNRI as the digital network component of the DOI system. CNRI remains a technical partner of the IDF.

From 1998 the Foundation worked closely with the indecs project (1998-2000) and a number of subsequent and continuing initiatives building on this. The [indecs framework](/the-identifier/resources/factsheets/the-indecs-framework) underpins the DOI data model and also the [Vocabulary Mapping Framework](../VMF/index.html) (VMF). IDF now hosts the VMF web site and participates in VMF governance; the IDF's data dictionary is a namespace within VMF.

The first application of the DOI system, citation linking of electronic articles by the Crossref Registration Agency, was launched in 2000. Since then other [Registration Agencies](/the-community/existing-registration-agencies/) have been appointed in other sectors, e.g. in management of entertainment industry assets, in data, and in several languages.

In 2000 the syntax of the DOI was standardised through NISO. The DOI system was approved as an ISO standard in 2010.

Some papers describing progress during the first decade of the DOI initiative are listed in the [Bibliography](/the-identifier/resources/handbook/bibliography). Material appearing in earlier versions of the DOI web site has now been archived.

### 1.3 Standards {#1.3}

Conformance with this DOI Handbook ensures conformance with relevant applicable formal Standards.

The DOI system has been standardised through the International Standards Organisation, ISO (within the responsibility of committee ISO TC46/SC9, Identification and documentation) as [ISO 26324, Digital Object Identifier System](http://www.iso.org/iso/catalogue_detail?csnumber=43506). The Standard was approved in November 2010 and published in May 2012. (See the ISO [Press Release](http://www.iso.org/iso/news.htm?refid=Ref1561), issued 10 May 2012.) This International Standard specifies the syntax, description and resolution functional components of the digital object identifier system, and the general principles for the creation, registration and administration of DOI names (where DOI is an acronym for "digital object identifier"). This International Standard does not specify specific technologies to implement the syntax, description and resolution functional components of the digital object identifier system. ISO 26324 is the instrument through which the DOI system was adopted as an international standard and IDF named as the ISO 26324 Registration Authority. (As with other identifier standards, the creation of a public standard for the DOI system creates a controlled namespace which is populated through the Registration Authority. This is in contrast to some standards for other technologies, where anyone can read and follow the specification without asking anyone's permission; this is not true for identifiers, since knowing the specification for a car license plate, for example, doesn't mean that someone can make one up according to the specification and say that they have a valid license without registering with the appropriate authority).

The DOI syntax is a National Information Standards Organization (US) standard, [ANSI/NISO Z39.84-2010](http://www.niso.org/apps/group_public/project/details.php?project_id=62). This was first published in 2000 and revised in 2005 to remove case sensitivity which had never been implemented (see Chapter 2, Numbering, [Section 2.4 Case sensitivity](/the-identifier/resources/handbook/2_numbering#2.4)) so there were no backward compatibility problems in making this change. The later ISO standard 26324 (2012) includes the syntax specification; the supplementary detail in the NISO standard on encoding of syntax is now in this DOI Handbook, Chapter 2, [Section 2.5 Character sets and encoding](/the-identifier/resources/handbook/2_numbering#2.5). The ISO standard also covers the detailed extensible metadata schema and guarantees provided regarding persistence, etc., which were not part of the NISO standard.

DOI is a registered URI within the info-URI namespace (IETF RFC 4452, the "info" URI Scheme for Information Assets with Identifiers in Public Namespaces). DOI names may also be expressed as URLs (URIs) through a http: proxy server.

The DOI system implements the Handle System (IETF RFC [3650](http://www.ietf.org/rfc/rfc3650.txt), [3651](http://www.ietf.org/rfc/rfc3651.txt), [3652](http://www.ietf.org/rfc/rfc3652.txt)).

Norman Paskin wrote a history/case study of DOI standardization, "[The Digital Object Identifier: From Ad Hoc to National to International](../topics/150628_DOI_Case_Study_Paskin.pdf)" that was published in [The Critical Component: Standards in the Information Exchange Environment](http://www.alastore.ala.org/detail.aspx?ID=11483) (2015), edited by Todd Carpenter (ISBN13: 978-0-8389-8744-5) published by ALCTS (American Library Association Publishing). A PDF ebook (ISBN: 978-0-8389-8745-2) and EPUB (ISBN: 978-0-8389-8746-9) bundle are also available through the ALA Store online.

### 1.4 Trademarks {#1.4}

DOI®, DOI.ORG® and shortDOI® are registered trademarks of the International DOI® Foundation (IDF). IDF authorizes users who correctly implement International Standard ISO 26324 to use the trademark free of charge to indicate such implementation; however, this authorization applies only and exclusively in the context of such use. IDF is willing to authorize anyone who creates software or other products or services implementing ISO 26324 to use the trademark DOI free of charge provided that:

*   the software, product or service is accurately described;
*   DOI is identified as a trademark of IDF;
*   the superscript symbol ® is placed following the letters "DOI" at its first occurrence in any printed or electronic document describing or marketing the software, product or service.

A re-sizable version of the DOI logo for Internet use under these conditions can be downloaded [here](http://www.doi.org/logo.html) as a convenience for companies, organizations and the press. Inclusion of this logo should not be used to imply IDF's endorsement of the company, product or services.

### 1.5 Introduction (ISO 26324) {#1.5}

The following introduction is taken from ISO 26324.

The digital object identifier (DOI®) system provides an infrastructure for persistent unique identification of objects of any type.

DOI is an acronym for "digital object identifier", meaning a "digital identifier of an object" rather than an "identifier of a digital object". The DOI system was initiated by the International DOI Foundation in 1998, and initially developed with the collaboration of some participants in ISO/TC46/SC9. Due to its application in the fields of information and documentation and previous collaboration with some ISO/TC46/SC9 participants, it was introduced as a possible work item in 2004 and further developed from 2006 to 2010.

The DOI system is designed to work over the Internet. A DOI name is permanently assigned to an object to provide a resolvable persistent network link to current information about that object, including where the object, or information about it, can be found on the Internet. While information about an object can change over time, its DOI name will not change. A DOI name can be resolved within the DOI system to values of one or more types of data relating to the object identified by that DOI name, such as a URL, an e-mail address, other identifiers and descriptive metadata.

The DOI system enables the construction of automated services and transactions. Applications of the DOI system include but are not limited to managing information and documentation location and access; managing metadata; facilitating electronic transactions; persistent unique identification of any form of any data; and commercial and non-commercial transactions.

The content of an object associated with a DOI name is described unambiguously by DOI metadata, based on a structured extensible data model that enables the object to be associated with metadata of any desired degree of precision and granularity to support description and services. The data model supports interoperability between DOI applications.

The scope of the DOI system is not defined by reference to the type of content (format, etc.) of the referent, but by reference to the functionalities it provides and the context of use. The DOI system provides, within networks of DOI applications, for unique identification, persistence, resolution, metadata and semantic interoperability.

### 1.6 Overview {#1.6}

This overview provides a short summary of the DOI system. For definitive information on aspects of the DOI system, refer to the relevant chapters of this handbook. See also the summary factsheet [Key Facts on Digital Object Identifier System](/the-identifier/resources/factsheets/key-facts-on-digital-object-identifier-system).

The Digital Object Identifier (DOI) was conceived as a generic framework for managing identification of content over digital networks, recognising the trend towards digital convergence and multimedia availability. Its key features include persistence, network accessibility, interoperability with other identifiers, shared fault-tolerant infrastructure, and the ability to resolve the identifiers in multiple forms. DOI is standardized as ISO 26324.

The DOI system is implemented by Registration Agencies who provide domain-specific identifiers for various applications using the underlying DOI framework. For example, Crossref manages DOIs for the scientific publishing industry, DataCite provides DOIs for referencing and sharing scientific datasets, and the Entertainment ID Registry (EIDR) provides identifiers and associated metadata that are used in the commercial film and video industry, from post-production through broadcast, digital distribution, and reporting.

Because the DOI system is designed for network awareness and interoperability, it is easy to build a wide variety of modern applications using DOIs. For example, the DOI system is used in internal processes in multiple industries, for publishing and reporting across corporate and national boundaries, and in the emerging field of semantic web applications.

#### 1.6.1 The DOI system concept {#1.6.1}

DOI is an acronym for "digital object identifier", meaning a "digital identifier of an object". A DOI name is an identifier (not a location) of an entity on digital networks. It provides a system for persistent and actionable identification and interoperable exchange of managed information on digital networks. A DOI name can be assigned to any entity — physical, digital or abstract — primarily for sharing with an interested user community or managing as intellectual property. The DOI system is designed for interoperability; that is to use, or work with, existing identifier and metadata schemes. DOI names may also be expressed as URLs (URIs).

The DOI system was initiated by the International DOI Foundation (a not-for-profit, member-based, organisation initiated by several publishing trade associations) in 1998, and later standardised as ISO 26324. Users can join a service offered by a DOI Registration Agency by registering material with one of them, or developing a community to build one. Existing DOI names can be resolved free of charge. The cost of registering new DOI names depends on the services using a DOI which are provided by a Registration Agency. Each Registration Agency is free to offer its own business model in compliance with overall DOI policies. Individual Registration Agencies adopt appropriate rules for their community and application.

Many millions of DOI names have been assigned to date, through a growing federation of Registration Agencies world-wide. For example, the [Crossref](http://www.crossref.org) application is used by more than 4,800 publishers and societies to enable cross-citation of scholarly publications; the [DataCite](http://www.datacite.org/) international federation of data centres uses the DOI system; and the [Entertainment Identifier Registry](http://eidr.org/) applies DOI names to film and broadcast assets.

The DOI system implements the Handle System® (a general-purpose global name service enabling secure name resolution over the Internet) and the [indecs Framework](/the-identifier/resources/factsheets/the-indecs-framework) (a generic ontology-based contextual data model structure).

Unique identifiers (names) are essential for the management of information in any digital environment. Identifiers assigned in one context may be encountered, and may be re-used, in another place (or time) without consulting the assigner, who cannot guarantee that his assumptions will be known to someone else. Persistence of an identifier can be considered an extension of this concept: interoperability with the future. Further, since the services outside the direct control of the issuing assigner are by definition arbitrary, interoperability implies the requirement of extensibility. Hence the DOI system is designed as a generic framework applicable to any digital object, providing a structured, extensible means of identification, description and resolution. The entity assigned a DOI name can be a representation of any logical entity.

#### 1.6.2 DOI system components {#1.6.2}

The DOI system provides a ready-to-use packaged system of several components:

*   a specified standard numbering syntax;
*   a resolution service
*   a data model incorporating a data dictionary; and
*   an implementation mechanism through a social infrastructure of organisations, policies and procedures for the governance and registration of DOI names.

#### 1.6.3 DOI name syntax {#1.6.3}

The DOI name syntax specifies the construction of an opaque string with naming authority and delegation. It provides an identifier "container" which can accommodate any existing identifier. The DOI name has two components, the prefix and the suffix, which together form the DOI name, separated by the "/" character. The portion following the "/" separator character, the suffix, may be an existing identifier, or any unique string chosen by the registrant. The portion preceding the "/" character (the prefix) denotes a unique naming authority. There is no limitation on the length of a DOI name.

A DOI name may be assigned to any entity, which must be precisely defined by means of structured metadata. The DOI name itself remains persistent through ownership changes, and unaltered once assigned.

The prefix is assigned to an organization that wishes to register DOI names; any organization may choose to have multiple prefixes. Following the prefix (separated by a forward slash) is the suffix (unique to a given prefix) to identify the entity. The combination of a prefix for the Registrant and unique suffix provided by the Registrant avoids any necessity for the centralized allocation of DOI names.

An existing standard identification system number such as ISBN may be incorporated into a DOI name, by using this as the suffix, if the registrant finds it convenient to do so, but must ensure that precisely the same entity be identified by the two systems.

For more information, see Chapter 2, [Numbering](/the-identifier/resources/handbook/2_numbering).

#### 1.6.4 DOI name resolution {#1.6.4}

Resolution is the process in which an identifier is the input (a request) to a network service to receive in return a specific output of one or more pieces of current information (state data) related to the identified entity, e.g. a location (such as URL) where the object can be found. Resolution provides a level of managed indirection between an identifier and the output. The resolution component allows redirection on a digital network from a DOI name to associated data. Initial applications were resolution to a single location (URL), providing a tool for persistence (since even if a URL is changed, the DOI name still functions and redirects to the new location). However, more useful resolution may be to multiple associated data such as multiple locations, metadata, common services, or to extensible assigner-defined data. The resolution tool used in the DOI system is the Handle System. This has advantages over other mechanisms including global scalability, full Unicode character support, and security.

The Handle System implementation in the DOI system has been supplemented by expanded technical infrastructure and features specific to DOI system applications. The Handle System has no pre-existing constraints to define a framework to express relationships; the DOI system is an application of the Handle System which adds constraints for a specific purpose of content management. In the DOI system the constraints are defined using a semantically interoperable data dictionary.

For more information, see Chapter 3, [Resolution](/the-identifier/resources/handbook/3_resolution).

#### 1.6.5 DOI® data model {#1.6.5}

The DOI system data model consists of a data dictionary and a framework for applying it. Together these provide tools for defining what a DOI name specifies (through use of a data dictionary), and how DOI names relate to each other. This provides semantic interoperability, enabling information that originates in one context to be used in another in ways that are as highly automated as possible.

The DOI system uses an interoperable data dictionary built from an underlying ontology. The data dictionary component is designed to ensure maximum interoperability with existing metadata element sets; the framework allows the terms to be grouped in meaningful ways so that certain types of DOI names all behave predictably in an application through association with specified services. This provides a means of integrating the features of handle resolution with a structured data approach. DOI names need not make extensive use of this data model, but it is envisaged that many will.

The ontology logical data model, providing a consistent and logical world view, differs from the traditional taxonomic approach to knowledge representation in that it does not follow a rigid parent/child hierarchical structure. Terms may inherit meaning from more than one parent and a more complex relationship may be maintained. An interoperable data dictionary contains terms from different computerized systems or metadata schemes, and shows the relationships they have with one another in a formal way. The IDF participates in several efforts using this approach, notably the [Linked Content Coalition](http://www.linkedcontentcoalition.org/) and the [Vocabulary Mapping Framework](../VMF/index.html). The Vocabulary Mapping Framework provides an expansion of the existing RDA/ONIX Framework into a comprehensive vocabulary of resource relators and categories, a superset of those used in major standards from the publisher/producer, education, and bibliographic/heritage communities (CIDOC CRM; DCMI; DDEX; DOI; FRBR; MARC21; LOM; ONIX; and RDA).

For more information, see Chapter 4, [Data Model](/the-identifier/resources/handbook/4_data_model).

#### 1.6.6 DOI system implementation {#1.6.6}

The DOI system is implemented through a federation of Registration Agencies which use policies and tools developed through a parent body, the International DOI Foundation (IDF). The IDF is the governance body of the DOI system, which safeguards (owns or licences on behalf of registrants) all intellectual property rights relating to the DOI system. It works with RAs and with the underlying technical standards of the DOI system components to ensure that any improvements made to the system (including creation, maintenance, registration, resolution and policymaking of DOI names) are available to any DOI name registrant, and that no third party licenses might reasonably be required to practice the DOI name standard. DOI name resolution is freely available to any user encountering a DOI name.

The DOI system has the flexibility to deliver identification and resolution services that fulfil the requirements of any application domain. However, these don't come "in a box" since someone needs to build the specific social and technical structures to support the particular requirements of a community (such as scientific data). The rules about what is identified, and whether two things being identified are (or are not) "the same thing", are made in specific applications of the DOI name by Registration Agencies. This provides an identification system of enormous flexibility and power while increasing the importance of an explicit structured metadata layer, since without this the identifier essentially can have no meaning at all outside a specific application.

The IDF provides implementation through agreed standards of governance, scope, and policy, to define "rules of the road". It also provides a technical infrastructure (resolution mechanism, proxy servers, mirrors, back-up, central dictionary) and a social infrastructure (persistence commitments, fall-back procedures, cost-recovery (on a self-sustaining model), and shared use of the system. The IDF is not a standards body, but a central authority and maintenance agency. The standardisation of the system is through ISO 26324, where ISO appoints IDF as the ISO Registration Authority for the standard. IDF delegates and licenses authority to use the system through Registration Agencies, each of which can develop its own applications and use the DOI system in "own brand" ways appropriate for their community.

### 1.7 Benefits of the DOI system {#1.7}

The DOI system offers a unique set of functionalities:

*   _Persistence_, if material is moved, rearranged, or bookmarked;
*   _Interoperability_ with other data from other sources;
*   _Extensibility_ by adding new features and services through management of groups of DOI names;
*   _Single management_ of data for multiple output formats (platform independence);
*   _Class management_ of applications and services;
*   _Dynamic updating_ of metadata, applications and services.

Benefits of implementing the DOI system include facilitating internal content management and enabling faster, more scalable product development, by delivering four key advantages in making it easier and cheaper to:

*   Know what you have (users able to look at catalogues of content available throughout the enterprise);
*   Find what you want (users able to search and browse for content to be used or re-purposed);
*   Know where it exists (able to see where the item exists within the organization);
*   Be able to get it (users and production tools able to retrieve the content).

Over the past decade, a number of reports were published quantifying or endorsing DOI benefits in various sectors, and discussing the need for persistent identifiers on networks. A selection is archived [here](../publications.html).

