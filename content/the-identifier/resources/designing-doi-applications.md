+++
title = "Designing DOI® Applications"
date = "2012-05-13"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## Designing DOI® Applications

_This factsheet provides some notes and suggestions on common issues encountered in thinking about how the DOI System can be applied._

The DOI System has the flexibility to meet identification and resolution requirements of any application domain. However, these don't come "in a box": someone needs to build the specific social and technical structures to support the particular requirements of a community, and provide applications which offer value to that community. In designing a DOI System application several questions need to be considered.

### What are we identifying with this identifier?

The rules about what is identified, and whether two things being identified are "the same thing", are made at the level of a specific application of the DOI System, and this is a role of Registration Agencies. This deceptively easy question is one of the most difficult encountered in all discussions about identifiers (but the one most commonly overlooked) and an answer is often much more difficult than it might at first appear. The answer to when two things are "the same thing" is entirely contextual, i.e. what a specific application will need to distinguish.

### What are we resolving to from this identifier?

A DOI® name can resolve to anything. At minimum it will resolve to a URL, but there may be multiple URLs or it can be configured to return multiple other data types.

### What metadata are we associating with this DOI name?

Without an explicit structured metadata layer, an identifier essentially can have no meaning at all outside a specific application. Most DOI names are not yet used for widespread interoperability, but are used within specific applications. They do not need to reveal explicit structured metadata, but RAs maintain Kernel metadata and additional application metadata which may be delivered in a number of ways.

### What are the interoperability requirements?

The DOI system has a mechanism for interoperability with other standards. If the application is in a sector where other identifiers or metadata schemes are already in use a Registration Agency will need to work out an implementation of this in detail that is practical for the community that they serve.

### How will the DOI application be paid for?

A cost is associated with managing persistence and with assigning identifiers and data to ensure long-term stability, because of the need for human intervention and support of an infrastructure. In the DOI System the way in which these costs are recouped depends on the application. RAs are free to establish their own business model for the allocation of DOI names. The services offered by a DOI RA will include more than simple provision of a DOI name: these value added services may include data, content or rights management. There is no single business model applicable to all DOI RAs (and consequently no single answer to the question of how a DOI name is paid for and what it costs).

### How can we do a comparison with other possible solutions?

The value of the DOI System derives from three main functions: Persistent identification; Network resolution; and Semantic interoperability. Comparison with alternative systems depends on which of the functions (none, one, or more) is provided by the system to be compared. Some key points of comparison are:

### Design principles

*   Persistent Identifier: identifies an entity itself rather than its location. A managed directory system relates this to services such as location, enabling management of digital objects for long-term access. If ownership of the entity or the rights in the entity change, the identification of that entity does not change; the responsibility for managing the DOI name may change, but not the DOI name itself.
*   Actionable Identifier: a user can use a DOI name to do something; it facilitates simple location finding but also much more complex applications.
*   Interoperable Identifier: allows use in services outside the direct control of the issuing assigner, and use of existing identifiers and metadata.
*   Neutral as to technical implementation.
*   Neutral as to sector or media type.
*   Standards based: ISO standard (ISO 26324) provides value through an external standards process.

### Syntax

*   Unicode compliant.
*   No length or character restrictions.
*   No semantic requirement, but can incorporate semantics where appropriate and meaningful for other related applications.
*   Can incorporate existing identifiers (from other schemes) where appropriate.

### Data structure

*   Allows precise specification of exactly what is being identified: declaration of metadata to any level of functional granularity.
*   Data model provides optional additional specification of application metadata.
*   Managed data dictionary available.
*   Does not mandate one metadata scheme; allows use of any existing metadata scheme; mapping to other schemes available.
*   Types may be created dynamically, and are resolvable.
*   Types may be locally named, mapped into bit strings without semantics.

### Resolution

*   Uses Handle System®, a general-purpose global name service enabling secure name resolution over the Internet, designed to enable a broad set of communities to use the technology to identify digital content independent of location. DOI names are handles whose primary prefix is "10".
*   Resolution may be to multiple pieces of data (multiple resolution).
*   Supports administration granularity down to the level of individual DOI names.
*   Allows internationalized character sets; supports non-ASCII native characters.
*   Secured resolution service: supports client/server authentication, service integrity, and confidentiality, public key infrastructure if required.
*   Architecture is flat, scalable, and extensible: number of steps needed to resolve is independent of number of handles in existence.
*   Logically central, but physically decentralized.
*   Supports Local Handle Servers, when desired.
*   Handle resolutions return entire "Handle Records" or portions thereof.
*   Handle records are also digital objects.
*   Handle servers are certificated with the system.
*   Handle records are signed by the servers.
*   Enhanced browser support available for direct handle access: handle plug-in, and available for other software e.g. Adobe Acrobat as plug-in.
*   Uses proxy servers for unenhanced browsers.

### Technical infrastructure

*   Redundant distributed servers, 24/7 secure and extensible, backup procedures.
*   DOI System specific development and implementation of additional features.
*   Central DOI System Directory, staffed and outsourced with backup and reliability guarantees.
*   Service agreement for management and implementation of shared technical resolution infrastructure.
*   Data dictionary shared and outsourced.

### Social infrastructure

*   The International DOI Foundation builds on the technical infrastructure a social structure guaranteeing persistence. Persistence is a function of organizations, not of technology; a persistent identifier system requires a persistent organization and defined processes.
*   Benefits of shared expertise, community of users with knowledge and service agreement for support.