+++
title = "DOI® System and Persistent URLs (PURLs)"
date = "2015-05-05"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and Persistent URLs (PURLs)

[< back to the Resources page](/the-identifier/resources/)

A PURL is a Persistent Uniform Resource Locator. Functionally, a PURL is a URL. However, instead of pointing directly to the location of an Internet resource, a PURL points to an intermediate resolution service. The PURL resolution service associates the PURL with the actual URL and returns that URL to the client as a standard HTTP redirect. The OCLC PURL Service has been strongly influenced by the active participation of OCLC's Office of Research in the Internet Engineering Task Force Uniform Resource Identifier working groups. PURLs are an approach to fixing the problem of unstable URLs. The 2002 OCLC Web Survey includes measurement of percent of IP addresses identifying a Web site in Year A also identifying a Web site in Year B: almost half of web addresses registered in one year are no longer reachable after one year. As time goes on this compounds: only 13% of the web addresses registered in 1998 were still around in 2002 (19% of the sites created in 1999 survived to 2002, as did 33% of the 2000 ones and 51% of those from 2001). The folly of relying on URLs alone for persistence is dramatically brought home by this statistic.

PURLs are all http and inherit both the strength and weakness of that approach. PURLs provide one level of indirection, just like a single value DOI name, but all contained within a single server and that single server is permanently attached to a specific domain name. PURL servers don't know about each other. The redirection is functionally equivalent to the way the DOI system uses a proxy server, doi.org (or dx.doi.org, an earlier syntax which continues to be supported), which re-interprets DOI name queries into http. PURL is equivalent to a local DOI name which never goes beyond the proxy server approach and never makes use of the multiple resolutions and data types, metadata approach, and enforced common policy. The DOI system also provides a centrally managed redirection service rather than local purl server management.

We recommend that interested parties refer to independent comparisons e.g.: "To attach truly archival, long-lived names to network-accessible resources, I think PURLs should not be considered. My primary objection is that PURLs rely on DNS for labelling namespaces, which has at least two problems in the long run: DNS names are controlled by outside agencies at many levels (i.e. not just local administrators, but our ".EDU" parent domain is subject to the Internet governing bodies). Also, I believe the entire DNS naming system will be revised within the next 100 years, which is probably shorter than the range MIT Archives routinely anticipates. Although the Handle System currently needs the crutch of HTTP proxies which have the same DNS naming problem, it is inherently free of the domain name system and even the current Internet implementation. The handle namespace is not connected to any other protocol or standard, because it was properly designed to persist as a meaningful, resolvable naming system well into the foreseeable future." ([http://web.mit.edu/handle/www/purl-eval.html](http://web.mit.edu/handle/www/purl-eval.html))

The DOI system sits on top of a system explicitly designed to name digital objects on networks. This system, the Handle System, can provide the web-centric functions of a PURL through the use of a proxy server that returns a PURL-like single redirection. But underneath that is a much more extensive set of functionality that can be used as needed now or in the future.

A PURL can be resolved only by its designated PURL server. A DOI name can be separated into resolver and identifier. A given DOI name can be resolved by any handle resolver. A counter-argument involves the use of PURL partial redirects which can allow, for example, the single server at purl.org to route to what might be considered PURL subdomains to other PURL servers and to change this routing over time. But this puts the purl.org server in the middle of PURL resolutions forever. The doi.org server could serve that same function and also be subject to the same problems, but it is only one way into the DOI system. doi.org is just as deployed as purl.org and adds a more robust underlying system.

A PURL-based Object Identifier (POI) is a simple specification for resource identifiers based on the PURL system. The use of the POI is closely related to the use of the Open Archives Initiative Protocol for Metadata Harvesting and with the OAI identifier format used within that protocol. The main argument for POIs seems to be that they fit with OAI-compliant repositories. As described in the POI Resolver Guidelines, POIs are not explicitly assigned to referents — they are implied by the existence of an OAI metadata 'item' with an identifier that can be mapped to a POI. There are a number of assumptions: that an oai metadata item will correspond to an available Referent; that referent will be available through a URL that can be derived from the oai-identifier; that identifier will work because the right kind of PURL partial redirect has been made. This can be contrasted with DOI names, which are not considered to exist before being explicitly registered and once registered are by definition part of the resolution system. Any implementation of persistent identifiers using existing material must accommodate DOI names, unless it plans to ignore the great bulk of scholarly journal literature.

The partial redirection rules that PURL uses to map OAI identifiers to POIs are simple and result in web redirections with a large degree of granularity. Currently POIs can only partially redirect OAI identifiers based on its namespace-identifier to a specific web server. Although this is not necessarily an issue, it does pose long term-collection management issues. This high level granularity is however not an intrinsic limitation of PURLs, indeed, PURL servers could use more sophisticated partial redirection algorithms and obtain a much finer level of redirection. This would however require PURL servers to have a mechanism for expressing complex redirection mechanisms and the ability to promptly and accurately distribute them across all PURL servers. The partial redirection lets you move entire sub-trees from one location to another but doesn't let you rearrange the trees. This requires, as noted in the POI Resolver Guidelines, that the URLs are used in a consistent manner or at least that the base URL apply to all POIs in a given namespace. The registration of a separate PURL for each POI, which is the only way to begin to introduce the same level of flexibility given by the simplest use of DOI names, is given as a last resort case and recommended only for small numbers of POIs. One of the advertised strengths of POIs, that you don't have to register each one, also has the usual weakness of deriving identifiers from some aspect of the referent: defining who owns it and where it fits in their organization of referents. The DOI system policies and social engineering aspect we have referred to elsewhere (DOI names are backed by an organization dedicated to their growth and survival) add value as well as functionality to the DOI System.