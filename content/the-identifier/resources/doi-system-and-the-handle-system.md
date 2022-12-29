+++
title = "DOI® System and the Handle System®"
date = "2017-03-21"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and the Handle System®

[< back to the Resources page](../)

The International DOI Foundation (IDF) is a strong supporter of the Handle System® (for information see [Handle.Net](http://www.handle.net/)®) and believes it to be the best infrastructure component available today for managing digital objects. That is why the DOI system uses the Handle System. Handles by themselves are necessary but not sufficient for the function of the DOI system, a complete framework for managing intellectual content and facilitating electronic commerce. It is sometimes asked: "If the DOI system is based on the Handle System, why not cut out the middleman and use handles alone?" The answer is simple: "DOI® names are more than handles".

### The Handle System provides a resolution system for identifiers

_The Handle System provides a general-purpose global name service enabling secure name resolution over the Internet, designed to enable a broad set of communities to use the technology to identify digital content independent of location. The DOI system utilises the Handle System as one component in building an added value application, for the persistent, semantically interoperable, identification of intellectual property entities._

*   It is important to understand the role, and limitations, of current Internet resolution deployments especially the Domain Name System in relation to identifier management. This: www.acme.com is a domain name, which DNS resolves to an IP address, while this: http://www.acme.com/BigChart is not a domain name — it is a URL invented for hyperlinking. It relies on DNS resolution as the first step to find the IP address for an http server. DNS is an excellent resolution mechanism for domain names. This does not make it a resolution mechanism of any kind for other names or identifiers until you add something else. So using DNS and URLs for identifiers requires that you design some approach to using them consistently and coherently. In the same way that DNS and http URLs have not replaced databases but give you an easy way to reference databases, they will not replace well-structured identifier systems but can give you an easy way to reference those identifier systems.
*   The Handle System was designed as a resolution system for digital objects and it serves as a level of indirection to any sort of current state data that you care to associate with the object through the identifier resolution mechanism. The Handle System provides a way to use DNS and URLs for identifiers, which simultaneously provides an identifier that can be resolved without using DNS and URLs, if you choose to use it like that.
*   Most uses of the Handle System involve DNS, either as a way to get common web browser clients to communicate with handle servers, e.g. https://doi.org/10.1037/0003-066X.59.1.29 or as the current state data returned from that resolution (e.g. http://psycnet.apa.org/?&fa=main.doiLanding&doi=10.1037/0003-066X.59.1.29 ). Although the scope of DOI is any object (physical, digital, or abstract), this is consistent with the Handle System's stated scope of digital objects, since any non-digital object can be represented by a digital object "avatar."

### Persistence

_Handle System software may be implemented by anyone who agrees to basic licensing terms; there is no requirement that a user's implementation be persistent. The Handle System technology provides persistence if used with appropriate social infrastructure. The International DOI Foundation (IDF) builds on the technical infrastructure of the Handle System a social structure guaranteeing persistence. Persistence is a function of organizations, not of technology; a persistent identifier system requires a persistent organization and defined processes._

*   The International DOI Foundation (IDF) provides a federation of Registration Agencies. Dependency on any one RA is removed since the IDF mandates that should any RA go out of business, its DOI names subsequently will be "homed" in another RA; and that should the IDF cease to exist, the RAs will be able to continue to operate the DOI system.
*   IDF mandates that its RAs provide processes to ensure that DOI names guarantee persistence.
*   The IDF is designed to be a persistent organization through self-funding by balancing operational income (from a small fee per DOI name assigned) against costs of ongoing infrastructure provision and development.
*   Several major public companies stand behind the IDF as initial funders and/or Board members; the composition of the Board and IDF membership may change but the organization continues.

### Consistency

_Handle System protocols ensure interoperability for resolution purposes among a diverse set of implementations. At the application level, there is no requirement that consistent rules must be in place for multiple applications. The DOI system adds such a requirement:_

*   The IDF determines rules to which all DOI names must adhere (what they may be applied to, restrictions on arbitrary and temporary assignment, restrictions on removal from the system, etc)
*   DOI names are managed through a Directory Manager who ensures and implements quality assurance processes in assignment.
*   A DOI® API (application programming interface) for the Handle System defines consistent ways of accessing and managing DOI names, Application Profiles, and Services.
*   The consistent use of the DOI name prefix and numbering syntax provides numbering interoperability in the intellectual property sector, and brand recognition of what the number is for.
*   The optional data model component provides semantic consistency for true interoperability.

### Ease of use

_The Handle System license does not include ongoing technical support; it typically is installed and managed by technical staff. The DOI system provides a turn-key application:_

*   The DOI system employs staff who manage the development and operation of the system, its relations with users, outreach to standards and other communities, and resolution of problems.
*   The DOI system employs a Directory Manager who provides support to RAs in registering and managing DOI names, and who provides guidance, troubleshooting, statistics reporting, advice to and liaison with Registration Agencies and their customers.
*   The DOI® Handbook embodies policies, procedures and guidelines for Registration Agencies and application developers developed by the DOI system federation of agencies, guaranteed by detailed legal agreements.

### Expressing Relationships

_Multiple resolution allows one entity to be resolved to multiple other entities; this can be used to embody relationships, e.g., a parent-child relationship, or any other relationship. Handle System technology allows this; the DOI system provides a framework to achieve it:_

*   Multiple resolution is a feature of the Handle System technology, but the Handle System per se (deliberately) has no pre-existing constraints to make a useful framework (think of it as like spreadsheet software): the DOI system is an application of the Handle System which adds this constraint (think of it as like a spreadsheet application already written for you to add data to).
*   In the DOI system the constraints come from the metadata which defines the entities, which is the data dictionary approach: hence IDF's role in MPEG-21 RDD and the indecs Data Dictionary. That enables one to express relationships.

### Technical infrastructure

_The Handle System provides a resolution service shared by all Handle System implementations. The DOI system adds dedicated improved technical infrastructure:_

*   The Handle System consists of Global root servers, local handle servers, clients, and proxy servers. The scalable global root infrastructure enables users who install local handle services to interoperate with the root and each other, depending on permissions that have been established. The DOI system adds its own dedicated expanded infrastructure including replication servers for those IDF RAs that operate local handle services for their DOI names, secondary sites, mirrored servers and proxy servers housed at a secure commercial hosting service facility.
*   The Handle System license provides the reference implementation of Handle System, the database component of which was not designed to scale above a few million handles. The DOI system employs a much more robust database implementation capable of scaling to any number of handles.
*   The DOI system Directory Manager provides technical infrastructure configuration and performance checks to ensure evolutionary growth of the DOI system.

### Semantic interoperability

_Handles (including DOI names) will be resolved by the Handle System, but there is no requirement in the Handle System for declaring what is being identified, or for ensuring semantic interoperability across several identified resources. The DOI system adds this facility, specifically designed for its area of applications, which is now being implemented and will be a feature of advanced applications of the DOI system._

*   The DOI system provides a kernel of structured data upon which extended metadata schemes can be built if required, and a means of precisely specifying the entity identified.
*   The DOI system provides an optional tool to map an existing metadata scheme through a structured standard ontology, thereby ensuring semantic interoperability so that DOI names from different sources may be used as the key in building multi-component media objects or managing multiple assets.
*   The DOI® Data Model embraces both a data dictionary and a framework for applying it. The data dictionary component is designed to ensure maximum interoperability with existing metadata element sets; the framework allows the terms to be grouped in meaningful ways (DOI® Application Profiles) so that certain types of DOI names all behave predictably in an application through association with specified Services. This provide a means of integrating the features of handle resolution with the structured data approach.
*   IDF maintains the indecs data dictionary, the underlying tool for semantic interoperability, which integrates with the standard ISO MPEG21 Rights Data Dictionary (RDD). The IDF is also the chosen candidate to become the MPEG Registration Authority to manage the RDD.

### Development activities

_The Handle System provides upgrades of the global general-purpose naming service. The DOI system adds to this resources for active development of the DOI applications and advanced features._

*   Through its working groups and technical support staff, the International DOI Foundation provides ongoing development support and shared resources for the community of DOI name users.
*   Through use of the DOI system in commercial systems, individual Registration Agencies have an incentive to allocate their own resources to the development of new features, or to collaborate with other RAs to develop features that may be shared with the wider DOI name user community.

### Costs

_Costs for developing Handle System implementations and DOI system applications are not directly comparable since they relate to different things._

*   To provide a comparable service to the DOI system, a Handle System implementation would need to add the features listed above as these are not provided as part of the general-purpose software. The costs of implementing handles include appropriate Licence costs for the Handle System plus internal costs necessary for creating one or more of these features in a working implementation with specific rules and services. The costs of implementing DOI names include all these as turnkey features, not simply DOI name assignment as a handle, and vary depending upon the application provided through Registration Agencies' value-added services. The costs of assigning DOI names therefore vary from one Registration Agency to another depending on the business model chosen; DOI names may be free or charged for as part of a service offering.
*   Use of the Handle System for any production operation requires a Licence. The IDF already has a Licence for use of the Handle System, together with the ability to sub-license this for DOI name assignment to all Registration Agencies. Use of the DOI system therefore does not require a separate Handle System License.

### Governance

_Governance of the Handle System and the DOI system are independent._

*   CNRI worked with IDF and other large Handle System users to create a new international organization, the [DONA Foundation](http://www.dona.net), to manage the Handle System and related Digital Object Architecture components going forward. The foundation was constituted as a non-profit organization in Geneva, Switzerland on January 20, 2014.
*   The DOI system is managed by the International DOI Foundation, an independent, not-for-profit, open membership organisation. The IDF has an elected Board and nominated working groups which oversee all aspects of the development and implementation of the DOI system. CNRI is not a member of the IDF but provides services to it under commercial agreements. These agreements also ensure continuity of the resolution service provided to IDF.