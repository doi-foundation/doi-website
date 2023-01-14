+++
title = "Handbook Chapter 6: Policies"
date = "2017-03-21"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Policies"
type = "handbook"
+++

6 Policies
----------

_This chapter describes the process of policy formulation within the International DOI Foundation and summarises current key policies._

**[6.1](#6.1)** Policy formulation  
**[6.2](#6.2)** Agreements  
**[6.3](#6.3)** Policies  
**[6.4](#6.4)** Implicit policies  
**[6.5](#6.5)** Ensuring persistence  

### 6.1 Policy formulation {#6.1}

Polices are developed within the context of the IDF's By-laws and Charter. Within this scope, formal agreements are in placed between IDF and its partners. Individual policies are then defined consistent with these agreements.

Policies are approved by the IDF Board. Policy development takes place through discussion at regular IDF strategy and members meetings, and sometimes through working groups tasked with reviewing specific areas. Policies are binding on all members of the IDF.

The full text of polices and agreements described in this chapter, and elsewhere in the DOI Handbook, may be provided on request to [contact@doi.org](mailto:contact@doi.org).

### 6.2 Agreements {#6.2}

Principal agreements:

* [General Member Agreement](/resources/151123GeneralMemberAgreement.pdf), applicable to members other than Registration Agencies.
* [Registration Agency Agreement](/resources/160101RA_Agreement.pdf) which governs the relationship between a Registration Agency and the International DOI Foundation. The RA agreement provides equal terms to each RA, unless specific waivers or exceptions have been agreed to meet the needs of a specific community.
* Standards implementation, notably the Registration Authority Agreement for the operation of ISO 26324.

### 6.3 Policies {#6.3}

Formal policy documents include:

* [Antitrust policy](/resources/150929_Antitrust_Policy.pdf). The IDF conducts its operations in strict compliance with the antitrust laws, regulations and guidelines of all jurisdictions where the Foundation conducts meetings, programs, or activities.
* [Conflict of Interest policy](/resources/150929_Conflict_of_Interest_Policy.pdf). Policy protecting the interests of the IDF when it is contemplating entering into a transaction or arrangement that might benefit the private interest of a Director or Officer of the Foundation.
* [Core specification](/resources/DOICoreSpecificationv1.pdf). A technical specification relating to the description of the DOI® system covered in the IDF's Registration Agency agreement.
* [Suspension and termination](/resources/RA_Termination.pdf). Outlines procedures for dealing with DOI names in the event of suspension or termination of an RA.
* [Trademark policy](/resources/130718Trademark_Policy.pdf). Guidelines for use of the trademarks which the International DOI Foundation owns. DOI®, DOI>®, DOI.ORG® and shortDOI® are registered trademarks of the International DOI® Foundation. A supporting [schedule of trademark status](/resources/International_DOI_TM_CHART_Feb_28_2012.pdf) is available.
* [Patent policy](/resources/RAPatentPolicy.pdf). Procedures relating to patent rights and claims among IDF RAs to enable the DOI system to be available to all who want to use it on equal terms; to preserve and protect the collective investment in the DOI system and standard; and to allow Registration Agencies to develop added-value services and features. Additional information can be found [here](../news/050914PatentPolicynews.html). The IDF does not itself hold any patent rights in the DOI system.
* [DOI Proxy (Technical infrastructure) Implementation Policy](../doi_proxy/proxy_policies.html). Requirements for support and functionality of proxy servers by RAs, including those running instances of the DOI proxy server and their own local proxies, and support for the Default Proxy and the functionality of the Default Proxy.
* [Data policy](/resources/140804_IDF_DataPolicyv3.pdf). Concerning confidentiality of data such as usage statistics and information about individual DOI name resolution, for IDF and RAs.
* [RA Collaboration policy](/resources/121210_IDF_RA_CollaborationPolicyv3.pdf). General requirements and procedures for resolving conflicts between RAs and encouraging collaboration, to the benefit of the DOI community.

### 6.4 Implicit policies {#6.4}

A number of policies are implicit through conformance with IDF agreements and formal policies. The main ones are:

**Scope**

* A DOI name can be used to identify physical, digital and abstract entities.
* An entity can be identified at any arbitrary level of granularity.
* The primary focus of the DOI system is on the management of entities of interest as intellectual property, but this does not preclude issuing a DOI name to any entity of interest to a user community.

**Use**

* Free resolution: once a DOI name is assigned, anyone may resolve that DOI name without charge. At least some information will always be available on resolution.
* Opaque (non-intelligent) syntax: in use, the DOI name is an opaque string (dumb number); nothing at all can or should be inferred from the number in respect of its use in the DOI system.

**Cost**

* Operational costs of the system are borne directly or indirectly by the registrants. The business model adopted by an individual Registration Agency is a matter for the Registration Agency alone, provided that it complies with IDF policies.

**Data management**

* All DOI names must be registered in the DOI system directory. Registrants (via their chosen RA) are responsible for the maintenance of current data relating to DOI names that they have registered.
* The DOI system will not accept duplicate DOI names on registration; no two DOI names from different registrants can ever share the same prefix; no two identical strings can be assigned under one prefix.
* As far as possible each unique entity should be assigned only one DOI name. RAs operating with the same or related communities may agree a method for registration agencies to check if an item of intellectual property already has a DOI name assigned to it. The action to be taken if a match is found is to be determined by the Registration Agencies.

**Metadata**

* No ability to search from metadata to DOI name is provided by the central IDF service: "reverse look-up" (from metadata to a DOI name) is not a function of the DOI system itself. Reverse look-up may be offered by RAs or other services as a value-added feature.
* Regarding associated metadata, DOI system policy places no restrictions on the form and content of an RA's input and service metadata declarations, except insofar as input metadata must support the minimum requirements for supporting the DOI data model.

### 6.5 Ensuring persistence {#6.5}

Persistence of DOI information is a key aim of the DOI system, and is guaranteed by the DOI social infrastructure, policies and agreements. In the event of any RA ceasing to maintain DOI information, for any reason, the records will be transferred to another RA. This forms part of the legal agreement which each RA has to enter into with the International DOI Foundation.

Persistence is the consistent availability over time of useful information about a specified entity: ultimately guaranteed by social infrastructure (through policy) and assisted by technology such as managed metadata and indirection through resolution which allows reference to a first class entity to be maintained in the face of legitimate, desirable, and unavoidable changes in associated data such as organization names, domain names, URLs, etc. Identifiers must persist in the face of legitimate change. There are legitimate, desirable, and unavoidable reasons for changing organization names, domains etc.

'Persistence' is an imprecise term and so must be considered from specific aspects:

* _Persistence as a design feature of the DOI system_. Key features of DOI names as tools that encourage persistence are:
	* Indirection — one can change the current attributes without changing the name; this is difficult with URIs which have one attribute (domain name) wired semantically into the identifier. The vulnerability of any digital material to unexpected or unintended changes in Internet domain name assignment, and hence to the outcome of domain name resolution, is widely recognised. The fact that domain names are not permanently assigned is [cited](http://www.w3.org/2001/tag/2011/12/dnap-workshop/report.html) as one of the main reasons why http: URIs cannot be regarded as persistent identifiers over the long term.
	* Separation of name from ownership — DOI names do not bind the identifier and the owner, beyond the initial creation. That is, the naming authority (prefix) is used as a convenience for identifier creation but at that point becomes meaningless and the ownership of individual DOI names can be transferred without regard for the naming authority.
	* Name resolution — DOI names resolve to information (metadata) about the identified object in a manner intended to persist over changes in location, ownership, description methods, and other changeable attributes but not necessarily over changes in the basic utility of the object.
* _Persistence of the DOI system itself._ Infrastructure resilience and continuity is a design feature of the DOI system.
	* IDF's agreements with RAs allow for reversion of one RA's DOI system data to IDF in the event of an RA defaulting.
	* In the event of the IDF ceasing to exist, agreements are in place to transfer the system to other parties.
	* IDF's agreement with technical support partners allows for reversion of all DOI system data, licenses, rights etc. to IDF in the unlikely event of the current technical implementation closing or being unable to sustain its activities.
* _Persistence of the Handle System resolution technology component._ The Handle System is an open standard, so anyone can build/use a handle service; both source code and APIs are public. Agreements are in place regarding guarantors and transition in the event of major change of the current system operator, CNRI.
	* _Persistence of the DOI data dictionary technology component._ The [DOI data dictionary](https://doi.org/10.1000/280) is a namespace within the [Vocabulary Mapping Framework](../VMF/index.html), which benefits from participation and governance by many major metadata activities with an interest in continuity of the data. CNRI holds current versions of the data and materials necessary to manage the IDF Data Dictionary and schemas, including all the Excel tools and documentation necessary to generate the XML and HTML outputs. The files are managed using Mercurial, CNRI's software version control system. These are held in escrow as a guarantee of persistence, and provide a back up to the material prepared and managed for IDF by its metadata tools sub-contractor Rightscom. The escrow versions are not used for day to day operations.
* _Persistence of technical infrastructure._ The DOI system uses a globally distributed multiple site network of servers and service sites overlain on the Handle System, which itself has similar distributed sites. These sites are at individual RA member locations, professional co-location hosting sites, and virtual (cloud computing) facilities, with resources to ensure 24x7 cover, mirroring machines to ensure against power outages, etc. IDF also ensures that the doi.org domain is part of the persistent technical infrastructure, including mirroring and load balancing to ensure optimal availability for HTTP requests to the proxy service at doi.org (or dx.doi.org, which is also supported).
* _Persistence of the identified object._ Just as there are legitimate, desirable, and unavoidable reasons for changing organization names, there may be equally legitimate, desirable, and unavoidable reasons for declaring that an entity identified by a DOI name is no longer available. For example, a typical publisher's policy may state that under exceptional circumstances, an item must be removed from an electronic product due to legal obligations on behalf of the publisher, owner, copyright holder or author(s); or on moral or ethical grounds if an article with an error, or with results/statements has been found inaccurate and could be potentially damaging. The DOI system provides a mechanism for managing this process: at minimum, a DOI name registrant is free to have the DOI name resolve to a response screen indicating that the identified entity is no longer available, with additional information.
* _Persistence of resolution to core metadata._ The IDF requires that at minimum resolution of a DOI name is persistently maintained to information that defines the object to which a DOI name has been assigned. This is provided by a kernel metadata record (or some equivalent data).
* _Persistence of resolution to associated services._ Added-value services (i.e., beyond discovery of kernel metadata) available through DOI resolution which are provided by a Registration Agency cannot be guaranteed to be maintained by IDF in the event of the Registration Agency ceasing to exist. Such services may require additional material beyond that available in the central DOI record (e.g., access to metadata look-up or workflow procedures). However, IDF will make best efforts to transfer such services to another agency, or maintain such services itself, or encourage that services are transferred to a third party able to provide continuity where required. The aim will be to provide least disturbance to the community of users of those DOI records.
* _Persistence of community interest._ The IDF social infrastructure reflects the interest of a community of "DOI users". RAs may represent sub-sets of this, e.g. communities such as "users of citation linking services", which have interests regarding DOI entirely aligned with the IDF, but interests regarding application areas which may be unique to it (or shared with other organisations). Persistence is therefore a mutual pact (RA, IDF). An RA ceasing to be a member of the IDF risks destroying the alignment between these interests and communities, breaking the DOI social infrastructure. Therefore RA membership imposes certain obligations on an RA to ensure transfer of appropriate records and enable continuity of DOI resolution. Membership of the IDF is predicated on the assumption that communities wish to work together to ensure long term persistence, beyond the interests of their own current applications. Should this assumption be false, the IDF agreements provide a fall-back position enabling persistence of resolution of the assigned DOI names.
