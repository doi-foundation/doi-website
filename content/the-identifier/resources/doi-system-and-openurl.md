+++
title = "DOI® System and OpenURL"
date = "2017-04-21"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and OpenURL

[< back to the Resources page](../)

### OpenURL: Syntax and System

OpenURL is a NISO standard syntax for transporting information (metadata and identifiers) about one or multiple referents within URLs. OpenURL provides a syntax for encoding metadata (but not a source of it), restricted to the world of URLs (unlike the DOI system's wider application). This interface can be used to tie together otherwise disparate services such as centralized resolution systems and local knowledge of available referents.

The DOI system is a system for resolution of identifiers to global services. OpenURL is syntax allowing the contextualization of requests to those services to local requirements. OpenURL can be used together with DOI names to provide a richer user experience that incorporates both the global and the local requirements of the user. A key issue in the OpenURL world is the transformation of a generic link, say to a publisher's online copy of a journal, into an OpenURL pointing to the right server for the given user, which must also carry the id and metadata needed to create the contextually appropriate extended service links as described above. In the current deployment this is only being done by the referent pointed at by the URL that the user initially encounters. So in the example of a link to the publishers copy of a journal, the publisher must 1) agree to redirect that http request to the user's local OpenURL-aware server, when appropriate, 2) must add information to the link as needed for the local server to do its job, and 3) must know the location of the local server.

The logically centralized resolution service maintained by the content producers for DOI names has no way to resolve a DOI name to a locally held copy of the identified entity. So the synergy between the DOI system and OpenURL is clear: OpenURL needs a source of identifiers and authoritative metadata; the DOI system provides a single point in the network for the creation and subsequent redirection of OpenURLs, which is more manageable than asking every content provider to enable this facility. Solving the appropriate copy problem is a significant accomplishment in and of itself, but there are many opportunities for productive collaboration beyond that.

OpenURL is both a syntax and a system. The OpenURL System is not defined — anything that uses the OpenURL transferred data could be said to provide an OpenURL System. In practice the OpenURL transferred data is being used with information about the context of a user interested in a particular referent. This user-contextual information is not part of the OpenURL syntax but is instead supplied through other information supplied when the URL is activated (such as HTTP header information, a digital certificate, cookies or some other identification process).

An OpenURL consists of a base URL followed by a query for one or more objects. So: http://resolver.local.org/getlocal?author=Shelley sends an OpenURL compliant request to a receiving service provided by getlocal at the location specified with a query with the parameter author and the value Shelley. What is not seen in the syntax is that the service will also receive any information about the user that may be sent along by default with the request as part of any authentication that has taken place between the users client and the server. The local service can then decide, based on the metadata sent and what the server knows of the user's credentials, how to respond to the request.

DOI names can be used within the OpenURL syntax to query local services about availability of referents at a local level, e.g. the following could be used to see if a local copy of a referent were available: http://resolver.local.org/resolutionservice?id=doi:10.1045/1. The local service could have a list of DOI names that it has a local service for and offer that alongside the global information services obtained by resolving the DOI name through the Global Handle Registry. OpenURL also allows more complex constructs that those illustrated above.

In order to allow for the delivery of context-sensitive services information, recipients of an OpenURL must implement a technique to determine the difference between a user who has access to a service component that can deliver context-sensitive services and a user that does not. The mechanism used to determine a user's membership of a particular group could be cookies, digital certificates, part of a user's stored profile in an information service, an IP address range, or something else. This user recognition is not a part of the OpenURL syntax and is separate to OpenURL. Several library service vendors provide such functionality. If the user is a bona fide member of a group, the local resolution service will be available to that user.

Once an OpenURL is embedded in a referent it is fixed, and the service provider that it relies upon is explicitly specified by way of the pre-parameter part of the URL (hence an OpenURL has all the properties of any other URL). This provides an alternative resolution to the DOI names (provided by OpenURL-compliant service components) that can operate in a context-sensitive manner. The persistence of OpenURL is dependent on the availability of the service that is encoded in the OpenURL. The OpenURL once distributed cannot be modified except at each localised service. Where a DOI name is used as the embedded metadata, it is possible that a user may be rejected from accessing local referents: in which case deference to a global resolution system should be supported. The OpenURL intentionally embeds intelligence in a string that is supplied to a particular service — as a means to explicitly describe referents to attempt to provide a particular service based on that description.

The comparison of OpenURL enabled systems with the DOI system is straightforward: the DOI system is a global system; all information about a referent is the same in the global system wherever the DOI name is resolved from; the data that is associated with a DOI name can be modified, and extended, and is not locked into embedded implementations. Even if an OpenURL carried all data that could be obtained from a DOI name at a particular point in time, it would be static when used as a pointer in a document. Thus the DOI system provides an authoritative centralized resolution system with careful control of the results of the resolution process. Additionally this identifier can be resolved to multiple pieces of information, including pointers to well-structured metadata.

### Technical Specification - OpenURL Format

The OpenURL Framework was developed and approved as [NISO standard](http://www.niso.org/kst/reports/standards/) _ANS/NISO Z39.88 The OpenURL Framework for Context-Sensitive Services_. Additional information and KEV Implementation Guidelines are available from [NISO Committee AX](http://library.caltech.edu/openurl/default.htm).

The OpenURL Framework includes DOI names as one of its registered _Namespaces_ and DOI names are widely used in OpenURL implementations. This documentation references only part of the OpenURL Framework Registry.

In the OpenURL Format, descriptions of referenced resources, and descriptions of the associated resources that explain the context of the resource, are contained in _ContextObjects_ that are transported using the HTTP protocol. _ContextObjects_ use a Key/Encoded-Value format to create a string of ampersand-delimited pairs. The values must be URL-encoded.

Of the five _ContextObject Entities_, one of them, the _Referent_, is required. Within the scholarly information community, the _Referent_ will likely be a journal or journal article, a conference proceeding, or a book. The _Identifier_ for the _Referent_ is its DOI name.

The DOI system proxy server is a web server that understands the Handle System protocol. It is not an OpenURL Resolver per se, and does not provide services to an end-user that pertain to the _Referent_ within the _ContextObject_ of the OpenURL. When it receives an OpenURL, it finds the DOI name in the string, resolves it, and re-directs the end-user's browser to that URL, ignoring all other _ContextObject Entities_.

The proxy server responds identically to 'doi.org' and 'dx.doi.org'. The use of doi.org is the preferred and recommended form of the DOI HTTP proxy and HTTPS is preferred over HTTP; however, dx.doi.org remains fully supported. Therefore, the syntax for a DOI name resolution request to the proxy server is:

https://doi.org/10.1000/demo\_DOI\_name

The same DOI name resolution request using OpenURL would be:

https://doi.org/openurl?url\_ver=Z39.88-2004&rft\_id=info:doi/10.1000/demo\_DOI\_name

The OpenURL Format standard approved by the NISO voting members includes significant changes made between Versions 0.1 and 1.0. Relevant to DOI names, in OpenURL Format Version 1.0, '### rft\_id' replaced '### id' which was used in Version 0.1.

There were also changes to _Namespaces_. All _Namespaces_ now follow URI schemes, and the '### uri:' prefix was dropped. ORI _Namespaces_ are now '### info:'.

Also note that the initial implementation of OpenURL in the DOI system proxy server using the '### rft\_id=doi:10.1000/demo\_DOI\_name' syntax will continue to be supported.

A project to use OpenURL to address the 'appropriate copy' problem was undertaken in 2001 with participation from Crossref and organizations in the Digital Library Federation. This has now been developed further into an active production level service used by Crossref and a number of library service vendors to deploy localisation of DOI names referencing articles. For further information, see "[OpenURL and Crossref](http://www.crossref.org/02publishers/16openurl.html)".