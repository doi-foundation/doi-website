+++
title = "Handbook Chapter 3: Resolution"
date = "2017-03-21"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Resolution"
type = "handbook"
+++


3 Resolution
------------

_This chapter explains the resolution component of the DOI® System and its ability to provide persistent association of the identifier and related data. The chapter describes in outline the Handle System® used for DOI name resolution._

**[3.1](#3.1)** DOI Resolution  
**[3.2](#3.2)** Simple resolution  
**[3.3](#3.3)** Multiple resolution  
**[3.4](#3.4)** Resolution requirements for the DOI system  
**[3.5](#3.5)** Handle System® technology  
      **[3.5.1](#3.5.1)** Overview  
      **[3.5.2](#3.5.2)** Technical support of DOI name resolution  
      **[3.5.3](#3.5.3)** Software support for use of DOI names  
**[3.6](#3.6)** The maintenance of DOI name "state data"  
**[3.7](#3.7)** Resolution interface with Handle System  
      **[3.7.1](#3.7.1)** Custom Resolution Software  
      **[3.7.2](#3.7.2)** Native resolver  
      **[3.7.3](#3.7.3)** Proxy server  
      **[3.7.4](#3.7.4)** Other mechanisms  
**[3.8](#3.8)** DOI system Proxy Server technical details  
      **[3.8.1](#3.8.1)** Resolving DOIs Using the Proxy Server System  
      **[3.8.2](#3.8.2)** Proxy Server Query Parameters  
      **[3.8.3](#3.8.3)** Proxy Server REST API  
      **[3.8.4](#3.8.4)** Additional Functionality  
            **[3.8.4.1](#3.8.4.1)** Local Content Servers (The "Appropriate Copy" Problem)  
            **[3.8.4.2](#3.8.4.2)** Parameter Passing  
            **[3.8.4.3](#3.8.4.3)** Resolution of Multiple URLs using the 10320/loc Handle Type

### 3.1 DOI Resolution {#3.1}

Resolution is the process in which an identifier is the input — a request — to a network service to receive in return a specific output of one or more pieces of current information (state data) related to the identified entity: e.g., a location (URL). Multiple resolution, that is made possible by the Handle System used as the DOI resolution component, is the return as output of several pieces of current information related to a DOI-identified entity — specifically at least one URL plus defined data structures allowing management.

In the case of the DOI® System, using the Handle System® as a reference implementation, the resolution is from a DOI name, e.g., 10.1000/140, to one or more (hence "multiple") _pieces of typed data_: e.g. URLs representing instances of (manifestations of) the object, or services such as email, or one or more items of metadata. New types can be added at any time, making the DOI resolution system extremely flexible and responsive to new requirements. Resolution can be considered as a mechanism for maintaining a relationship between two data entities; an item of metadata is a relationship that someone claims exists between two entities: therefore, such metadata relationships between entities may be articulated and automated by resolution.

Using multiple resolution, a DOI name can be resolved to an arbitrary number of different associated values: multiple URLs, other DOI names, or other data types representing items of metadata. Resolution requests may return all associated values of current information, or all values of one data type; these returned values might then be further processed in a specific "client" software application. At its simplest, the user may be provided with a list of options; more sophisticated automated processes would allow for the automated choice of an appropriate value for further processing.

### 3.2 Simple resolution {#3.2}

A DOI name persistently identifies a specific intellectual property entity (object), which may or may not be an Internet-accessible file. The URL provides a specific address on the Internet, related to the entity. These applications of identification are completely different: the first identifies an entity; the second identifies a location (where a specific entity may or may not be found).

The earliest application of the DOI system was for simple, single point resolution, providing a persistent identifier (avoiding "404 not found" messages). Each DOI name has a single URL to which it can resolve. This allows the location of an entity to be changed while maintaining the name of the entity as an actionable identifier, by actively managing in the DOI record the link between a DOI and the URL to which it is resolved. See Chapter 5, [Applications](/the-identifier/resources/handbook/5_applications), for further information. Lack of persistence of a URL is only the first — and the simplest — challenge that the DOI system was designed to manage.

### 3.3 Multiple resolution {#3.3}

Multiple resolution allows one entity to be resolved to multiple other pieces of data or entities.

Resolution of a DOI name can include, but is not restricted to, resolution to associated values such as a location (URL), an e-mail address, another DOI name and descriptive metadata. The referent can be of various types (e.g. abstract "works", physical "manifestations", or performances) and are not always directly accessible in the form of a digital file or other manifestation; i.e. resolution might or might not return an instance of the object. Resolution can also involve one or more intermediate mapping operations.

DOI resolution records can include one or more URLs, where the object can be located, and other information provided about the object to which a DOI name has been assigned, optionally including but not restricted to:

*   names
*   identifiers
*   descriptions
*   types
*   classifications
*   locations
*   times
*   measurements
*   relationships to other entities

Through automated multiple resolution a DOI name can be resolved to an arbitrary number of different points on the Internet: multiple URLs, other DOI names, and other data types. If the DOI name can point to many different possible "resolutions", how is the choice made between different options? At its simplest, the user may be provided with a list from which to make a manual choice. However, this is not a scalable solution for an increasingly complex and automated environment. The DOI system enables automation of "service requests", through which users (and, more importantly, users' application software) can be passed seamlessly from a DOI name to the specific service that they require.

{{< figure src="/images/handbook/multiple_resolution.png" title="Figure 3-1: Automated Selection of Data by a Service">}}

See below, [3.8.4.3 Resolution of Multiple URLs](#3.8.4.3), and also Chapter 5, Section [5.3 Multiple Resolution Applications](/the-identifier/resources/handbook/5_applications#5.3) for details of current technical implementations of multiple resolution.

### 3.4 Resolution requirements for the DOI system {#3.4}

ISO 26234 contains the following functional requirements to be met by resolution in the DOI system:

The technology deployed to manage the resolution of the DOI name shall support the functions listed in a) to l) as follows.

*   Internet compatible: transmission via the global information system that is logically linked by a globally unique address space and communications.
*   First class naming: identifiers resolved by the system shall have an identity independent of any other object.
*   Unique identification: the specification by an identifier string of one and only one referent.
*   Functional granularity: it shall be possible to separately resolve an object whenever it needs to be distinguished.
*   such that data values with similar constraints can be grouped and treated in the same way (e.g. for application profile definition).
*   Multiple resolution: the simultaneous return as output of several pieces of current information related to the object, in defined typed data structures. Resolution requests should be capable of returning all associated values of current information, individual values or all values of one data type.
*   Designated authority: the administrator of an identifier shall be securely identified and capable of transfer.
*   Appropriate access to resolution records: changes to a resolution record shall be recorded and shall be capable of providing access to the data on which the administrator depends and privacy and confidentiality from those who are not dependent on it.
*   DNS independent but compatible: not reliant on the Domain Name System (DNS), but capable of working with DNS domain naming and resolution services.
*   Granularity of administration: DOI names can be administered individually or in groups.
*   Scalability:

1.  efficient and infinitely scalable protocol;
2.  no limitations on absolute number of identifiers assigned or length of identifier string.

*   Unicode compliant.

### 3.5 Handle System® technology {#3.5}

#### 3.5.1 Overview {#3.5.1}

The Handle System technology developed by CNRI, and currently administered and maintained by the [DONA Foundation](http://dona.net), was selected for the resolution task within the DOI system because it matched the resolution requirements identified for the DOI concept, by offering a number of real advantages over other available technologies:

*   Multiple resolution capability
*   Scalability
*   Reliability
*   Resolution speed
*   Proven usage in several digital library projects
*   Already implemented and supported in several practical systems
*   A commitment by its developers to open standards, and
*   A commitment to further development

Resolution to multiple, extensible, types of data is a feature of the Handle System technology. While the Handle System has no pre-existing constraints, the DOI system is an application of the Handle System which adds specific constraints appropriate to managing objects of interest for intellectual property transactions and related matters, such as defined metadata elements and operating policies. The Handle System is the resolution component of the [Digital Object Architecture](http://hdl.handle.net/4263537/5041), designed to enable information to be managed in a network over long periods of time. The other components of the DO Architecture (Repository and Registry components) are not part of the DOI system, though some DOI implementations may choose to make use of them. (See Chapter 5, Applications, Section [5.7](/the-identifier/resources/handbook/5_applications#5.7))

The Handle System is made up of local handle services. A local handle service (LHS) is made up of one or more sites, and a site is made up of one or more handle servers. Handle servers store handles. One local handle service is unique, the Global Handle Registry®: the handles it stores, which are the "prefix" handles, makes it the LHS to query to find out which services store all the other handles. DOI names make exclusive use of the assigned prefix 10 as part of the Handle syntax, and are also distinguished from other handles by use of the totality of the DOI system described in this Handbook.

For further information on the DOI use of handles, see the factsheet [DOI system® and the Handle System®](/the-identifier/resources/factsheets/doi-system-and-the-handle-system). See also the Handle.Net software [FAQs](http://www.handle.net/faq.html).

#### 3.5.2 Technical support of DOI name resolution {#3.5.2}

CNRI continue to provide technical and operational support for the DOI system as a contractor. Further details of the relevant Agreement for Technical Services are available to potential and current Registration Agencies.

#### 3.5.3 Software support for use of DOI names {#3.5.3}

See [DOI Tools](https://www.doi.org/tools.html) for a current list of tools that are in use and under development, with descriptions and links to their sources.

CNRI provide servlets and tools that some users and programmers may find useful. (Contact the Handle.Net Registry Administrator at hdladmin@cnri.reston.va.us for information) These include:

net.handle.batch.DOIBatch
: A batch loader for DOI names.

net.handle.apps.admin\_servlets
: The servlets used for administering handles via the web, useful if you'd like to allow DOI name administration from a local web server.

net.handle.apps.simple
: If you do decide to roll your own handle software, this package has a number of examples of how to use the handle client library.

net.handle.apps.tools, net.handle.apps.site\_tool
: A number of utilities for low-level maintenance of a handle server. Make sure to check there before writing anything along these lines yourself.

Application Programming Interfaces (APIs)
: In addition to Java, libraries are available for Python, Perl, and C. See also the Proxy Server REST API described in [Section 3.8.3](#3.8.3).

### 3.6 The maintenance of DOI name "state data" {#3.6}

The effective operation of the DOI system depends on accurate resolution of a DOI name to the appropriate URL or other data type.

{{< figure src="/images/handbook/6-3.gif" title="Figure 3-2: DOI name record">}}

The maintenance of the "state data" is an essential element of the responsibility of the Registrant of the DOI name. Only the Registrant or a service organization acting with the authority of the Registrant is permitted to maintain state data. More sophisticated models of permissions and access to DOI name state data records within a DOI name record are conceivable and the requirements for these are currently being investigated by the IDF.

The data types to which a DOI name can resolve are fully extensible within the Handle System, to permit the DOI name to resolve to any data that is accessible on the Internet.

For use with the data type URL (currently the most common application) we recommend that DOI name data be entered as a full path (e.g. `http://www.somepublisher.com/photo/photo#1.gif`), rather than a relative reference. Whilst a relative link could be used as the DOI name data, we cannot predict the context in which the DOI name will be resolved, i.e. what the current base html reference will be.

A DOI name could resolve to a Java applet or a CGI script or other dynamic mechanism.

### 3.7 Resolution interface with Handle System {#3.7}

Current Web browser technology requires additional functionality to allow the browser to deal with names of objects, rather than simple locations (a fact common to any approach to naming on the Web). Hence, in order to make full use of DOI name resolution functionality, additional browser features are necessary. It is anticipated that features supporting resolution will commonly be built into browsers in future, and the IDF is in active discussion to encourage this. The required functionality is currently provided in a number of ways.

#### 3.7.1 Custom Resolution Software {#3.7.1}

The [Handle.Net® Software Client Library Java™ Version](http://www.handle.net/client_download.html) is freely available and can be used to develop new resolution clients as needed, either for individual applications or for use in completely separate systems. As resolution is freely available, this could be done entirely independently of the IDF, but we encourage developers to let us know about their applications in order that we may 1) let others know about it if it is public and 2) work with developers to improve their understanding of the DOI system and thus the success of their efforts.

#### 3.7.2 Native resolver {#3.7.2}

A "resolver plug-in" for Firefox is available from CNRI that enables a browser to resolve a DOI name in the form "doi:10.123/456" without using a proxy server. The user simply downloads and installs the handle extension and then "clicks" on the DOI name (or types the DOI name into the address line in their browser) and the DOI name is resolved directly. See [CNRI Handle Extension for Firefox](http://www.handle.net/firefox_hdlclient.html).

#### 3.7.3 Proxy server {#3.7.3}

Alternatively, without the need to extend their web browsers' capability, users may resolve DOI names that are structured to use the DOI system Proxy Server (https://doi.org is preferred, but the earlier syntax dx.doi.org remains fully supported). The resolution of the DOI name in this case depends on the use of URL syntax: the example DOI name we have been using (doi:10.10.123/456) would be resolved from the address: "https://doi.org/10.123/456". Any standard browser encountering a DOI name in this form will be able to resolve it. The proxy service (both doi.org and dx.doi.org) is accessible over IPv6, and supports DNSSEC.

The use of the proxy server (the gateway between the Handle System and HTTP) does not interfere with the HTTP referrer field (that is, the source of the link is maintained, it does not appear as though the user is coming from doi.org or dx.doi.org instead of from the source). Nothing goes "through" that proxy server: it sends a redirect back to the original client with the current URL or other information relating to the handle resolution, and the final HTTP GET request comes from the user's client just as it otherwise would.

DOI names used through a HTTP proxy server (in the "https://doi.org" formulation as a URL) will continue to be persistent. As long as (1) the core DOI system is maintained, that is, as long as a given DOI name (10.123/456) can be resolved using the Handle System, and (2) as long as the proxy server named doi.org is kept running, and (3) as long as the core network services that enable the http-based web to function remain in place, then a DOI name (https://doi.org/10.123/456) referenced through that proxy will remain persistent. The key to understanding why this is so is modularity. The core DOI name resolution service is used by the proxy but is not constrained by the proxy. Additional gateways could be built and additional methods could be used to access the core DOI name resolution system without interfering in any way with the ongoing operation of the doi.org proxy.

Having created and advocated the use of the proxy, CNRI and IDF are committed to maintaining it in perpetuity, as it will be an essential component to maintaining the integrity of the millions of instances of DOI name-based web links. Maintaining the utility of those links over time will require maintaining both the core DOI system and the specific gateway service, doi.org, that those links reference and so use to gain access to the core DOI system. This, of course, is not at all unique and is just another variation on the Internet theme of layering services on top of one another. doi.org is itself dependent on the Domain Name System (DNS), which is itself dependent on IP addressing and routing, etc. This picture will probably grow more complex as time goes on (we hope it does), with the core DOI name resolution facilities used in multiple ways and by multiple services. OpenURL resolvers, for example, will find DOI names in their "raw" form, e.g., id=doi:10.123/456, and so could choose among using the doi.org proxy, or setting up their own web-to-DOI name proxy server(s), or using the handle protocol to query the DOI system directly.

#### 3.7.4 Other mechanisms {#3.7.4}

The required functionality might also be delivered to a browser by means of a scripting feature, such as JavaScript. However, we do not encourage this for long range DOI system strategy, since scripting is unlikely to be assured of support by browsers in the medium to long term; for example, many security specialists are currently urging computer users to turn off JavaScript in their e-mail system preferences.

For relevant applications, note also that DOI is a registered URI within the info-URI namespace (IETF RFC 4452, the "info" URI Scheme for Information Assets with Identifiers in Public Namespaces). See also the factsheet "[DOI System and Internet Identifier Specifications](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications)".

### 3.8 DOI system Proxy Server technical details {#3.8}

Users may resolve DOI names that are structured to use the DOI system Proxy Server (https://doi.org (current, preferred) or earlier syntax http://dx.doi.org). The proxy servers respond to HTTPS (preferred) as well as HTTP requests. The resolution of the DOI name in this case depends on the use of URL syntax: the example DOI name doi:10.10.123/456 would be resolved from the address: "https://doi.org/10.123/456". Any standard browser encountering a DOI name in this form will be able to resolve it. The proxy service (both doi.org and dx.doi.org) is accessible over IPv6, and supports DNSSEC.

#### 3.8.1. Resolving DOIs using the Proxy Server System {#3.8.1}

The DOI system uses the Handle System® to manage digital objects (see the DOI Factsheet "[DOI System and the Handle System](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications)"). At the infrastructure level, DOI names are handles.

The DOI system Proxy Server is basically a web server that knows how to talk to the Handle System, and at this writing, most DOI® names found on the web are embedded in URLs that use the proxy server for DOI name resolution. For any HTTP request that combines the proxy's domain name with a DOI name, for example

`https://doi.org/10.1000/demo_DOI`

the proxy will query the Handle System for the DOI name, take the URL in the handle record (or if there are multiple URLs in the handle record it will select one, and that selection is in no particular order) and send an HTTP redirect to that URL to the user's web browser.

Increasing numbers of DOI names include data in addition to the single default URL. This is sometimes referenced as multiple resolution. These added values are intended for use by more advanced applications which have the ability to take advantage of multiple pieces of data, e.g., the location of enhanced metadata or related documents.

In addition to handle values of type URL, the proxy server understands values of handle value type 10320/loc. These values contain XML describing multiple redirection endpoints for the DOI name and conditions under which the proxy should use them. For further documentation see [Section 3.8.4.3 Resolution of Multiple URLs using the 10320/loc Handle Type](#3.8.4.3).

The proxy server is configured to display a "DOI Name Not Found" error page when queried for a DOI name that it cannot find.

The DOI names 10.1000/demo\_DOI and 10.1000/demo\_DOI/ are both valid DOI names, but it is unlikely that a DOI name will be created with a trailing slash. If a resolution request for a DOI name with a trailing slash is received by the proxy server and that DOI name is not found, the proxy server will return an error report that includes a warning that the requested DOI name contained a trailing slash, and a link to click to resolve the same string without the slash.

The DOI system Proxy Server is really multiple servers running at multiple locations, with the load distributed evenly across all servers. To speed resolution, the proxy servers cache handle values, with the TTL set to 24 hours. This means that if a handle value is changed, it can take up to 24 hours before the new value is returned.

Note that the IDF also runs a proxy server for the [shortDOI™ Service](http://shortdoi.org/) that is not part of this DOI system Proxy Server specification.

#### 3.8.2 Proxy Server query parameters {#3.8.2}

noredirect

Do not redirect using URL or 10320/loc values; display handle values instead.

ignore\_aliases
: Ordinarily the proxy will take a handle value of type HS\_ALIAS to be a handle that should be resolved instead of the input handle; with this parameter values of type HS\_ALIAS are ignored.

auth
: Authoritative query. The proxy will bypass its cache and resolve the handle at an authoritative server.

cert
: Certified query. The proxy will require an authenticated response from the handle server. Not generally needed by end users.

index
: Only resolve the handle value at the specified index. May be repeated to resolve multiple indices.

type
: Only resolve handle values of the specified type. May be repeated to resolve multiple types.

urlappend
: The value of this parameter is appended to the end of the URL used for redirection.

locatt=key:value
: For multiple redirection; specifies a key:value pair to determine the choice of redirection from 10320/loc values.

action=showurls
: For multiple redirection; returns an XML representation of the possible redirect locations.

nols=y
: Some libraries and other institutions use a special cookie to cause the DOI system Proxy Server to redirect users to an "appropriate copy" using a local service. For example users may be redirected to the full text of a journal article already purchased by the library, instead of a landing page indicating a fee. Users can add the "nols=y" query parameter to prevent the local service redirect.

#### 3.8.3 Proxy Server REST API {#3.8.3}

The DOI system Proxy Server REST API allows programmatic access to DOI name resolution using HTTP.

**Example Request/Response**

A REST API request can be made by performing a standard HTTP GET of

> `/api/handles/<handle>`

The API returns JSON.

For example, `https://doi.org/api/handles/10.1000/1` yields the response

```
{
  "responseCode": 1,
  "handle": "10.1000/1",
  "values": [
	{
	  "index": 100,
	  "type": "HS_ADMIN",
	  "data": {
		"format": "admin",
		"value": {
		  "handle": "0.NA/10.1000",
		  "index": 200,
		  "permissions": "011111111111"
		}
	  },
	  "ttl": 86400,
	  "timestamp": "2000-04-13T15:08:57Z"
	},
	{
	  "index": 1,
	  "type": "URL",
	  "data": { "format": "string", "value": "https://www.doi.org/index.html" },
	  "ttl": 86400,
	  "timestamp": "2004-09-10T19:49:59Z"
	}
  ]
}
```

**Response Format**

The response is a JSON object which includes a "responseCode" (an integer referring to a Handle protocol response code), an echo of the "handle" resolved, and either a list of "values" or, in the case of an error, an optional "message" which is a string describing the error.

Each value is a JSON object with generally 5 attributes:

*   "index" : an integer
*   "type" : a string
*   "data" : an object, see below
*   "ttl" : the time-to-live in seconds of the value, an integer (or, in the rare case of an absolute expiration time, that expiration time as an ISO8601-formatted string)
*   "timestamp" : an ISO8601-formatted string

Handle value data is an object with properties "format", a string, and "value".

*   If "format"="string", "value" is a string, representing the data as a UTF-8 string.
*   If "format"="base64", "value" is a string, with a BASE64 encoding of the data.
*   If "format"="hex", "value" is a string, with a hex encoding of the data.
*   If "format"="admin", "value" is an object, representing an HS\_ADMIN value, with properties "handle" (a string), "index" (an integer), and "permissions" (a string, representing the bitmask of permissions).
*   If "format"="vlist", "value" is an list of objects, representing an HS\_VLIST value; each object in the list has properties "handle" (a string) and "index" (an integer).
*   If "format"="site", "value" is an object, representing an HS\_SITE value. As the structure of this object is complicated and generally of limited technical interest it is currently omitted from this documentation.

**Response Codes**

*   1 : Success. (HTTP 200 OK)
*   2 : Error. Something unexpected went wrong during handle resolution. (HTTP 500 Internal Server Error)
*   100 : Handle Not Found. (HTTP 404 Not Found)
*   200 : Values Not Found. The handle exists but has no values (or no values according to the types and indices specified). (HTTP 200 OK)

**Query Parameters**

This DOI system Proxy Server REST API is CORS-compliant, however, JSONP callbacks are also supported using a "callback" query parameter.

The presence of the "pretty" query parameter instructs the server to pretty-print the JSON output.

The "auth" query parameter instructs the proxy server to bypass its cache and query a primary handle server directly for the newest handle data.

The "cert" query parameter instructs the proxy server to request an authenticated response from the source handle server. Not generally needed by end users.

The "type" and "index" query parameters allow the resolution response to be restricted to specific types and indexes of interest. Multiple "type" and "index" parameters are allowed and values are returned which match any of the specified types or indexes. For example,

For example, `https://doi.org/api/handles/10.1000/1?type=URL&callback=processResponse` yields the response

```
processResponse({
  "responseCode": 1,
  "handle": "10.1000/1",
  "values": [
	{
	  "index": 1,
	  "type": "URL",
	  "data": { "format": "string", "value": "https://www.doi.org/index.html" },
	  "ttl": 86400,
	  "timestamp": "2004-09-10T19:49:59Z"
	}
  ]
});
```

#### 3.8.4 Additional Functionality {#3.8.4}

Some additional functionality has been built into the DOI system Proxy Server to provide additional services for DOI system users who structure their DOI names to use the DOI Proxy Server.

##### 3.8.4.1 Local Content Servers (The "Appropriate Copy" Problem) {#3.8.4.1}

DOI names for articles in scholarly and technical journals generally resolve to the publishers' websites. Retrieving the articles from those websites typically requires a fee or a subscription. Libraries commonly purchase copies of journals to keep in their local collections for their users, and they often own or subscribe to multiple copies of journals. For those institutions' users, the address to which a DOI name should appropriately resolve depends on the location or affiliation of the user who is making the resolution request, and the appropriate choice is usually one of the institution's local copies.

The International DOI Foundation, [Crossref](http://www.crossref.org), [CNRI](http://www.cnri.reston.va.us), libraries and library services providers came to refer to this as the "appropriate copy problem," and began collaborating on a solution and developing a prototype in 1999. (For details see _D-Lib Magazine_, September 2001, "Linking to the Appropriate Copy", [http://doi.org/10.1045/september2001-caplan](https://doi.org/10.1045/september2001-caplan).)

The combination of the DOI name resolution system, the Crossref Metadata Database, and OpenURL provides a practical solution to the appropriate copy problem for libraries. The key components of this architecture are (1) local content servers that can match a query for an item to a library's appropriate copy; (2) a DOI name resolution system that can redirect a query to a local content server; (3) a way for the originator of the query to identify the appropriate local content server to the resolution system; and (4) a source of metadata about the item sufficient for the local content server to match the query to the appropriate copy.

The solution offered by Crossref to its library affiliate members is as follows: users in a member institution click on a DOI name, and the DOI name and a cookie (previously set in the user's web browser through a "CookiePusher" mechanism) are sent to the DOI system proxy server. The proxy server recognizes the local content server identified in the cookie, constructs an OpenURL containing the DOI name, and sends it to the user's local resolver by way of an HTTP "redirect" to the user's browser. The local resolver sends the DOI name in OpenURL format to Crossref. Crossref returns metadata for the item named by the DOI name. The local content server recognizes this as a locally-held article, constructs a URL pointing to the item, and sends it to the user's browser as an HTTP "redirect".

If the article is not locally-held, the local content server returns the request to the proxy server, with a flag set to indicate there is no local copy, and the proxy server resolves the DOI name as it ordinarily would, redirecting the user's browser to the publisher's site.

For a complete description of this process and how libraries can participate in this local linking solution, see the [documentation on local linking for Crossref library affiliates](http://www.crossref.org/03libraries/index.html) on their website.

The current solution is specific to Crossref which, at the time of this writing, remains the source of most DOI names and associated metadata relevant to the problem. This situation is, however, changing with the continued growth of the DOI system and it is generally acknowledged that multiple sources of metadata will have to be accommodated in the future. This will require adjustments both in the DOI name resolution data and in the behavior of local content servers. The groups that came together to solve the initial "Appropriate Copy Problem" recognize this, have held preliminary discussions on the topic, and anticipate the need for additional collaborative efforts as the situation evolves.

A "CookiePusher" mechanism (see _[D-Lib](http://www.dlib.org/dlib/september01/caplan/09caplan.html)_ article for details) is used to set a cookie in the user's browser that is recognized by the proxy server and contains the URL to which the proxy server will redirect the DOI name resolution request. To prevent unauthorized users from setting cookies and redirecting traffic to their own personal resolvers, a BASE-URL list, containing the URLs of the authorized local content servers, is included in the CookiePusher. The BASE-URL can be the URL for a script or a directory, or even a top level domain, but it must be an OpenURL aware server. If the BASE-URL in the request is not in the list, the script will not set the cookie, but will return a "no cookie for you" message. BASE-URLs are collected from Crossref affiliates when they join.

The CookiePusher script runs on the DOI system website (http://www.doi.org). The proxy server (http://doi.org (preferred) or earlier syntax http://dx.doi.org (https is supported) is under the DOI.ORG® domain. The URL for the CookiePusher script is:

> `http://www.doi.org/cgi-bin/pushcookie.cgi`

A sample request to the CookiePusher containing the URL prefix of the local content server is:

> `http://www.doi.org/cgi-bin/pushcookie.cgi?BASE-URL=http%3A//university.library.edu%3A9003/local_linking/`

URI hexadecimal (%) encoding is recommended.

The request to add the cookie to the user's web browser's cookie file is usually hidden from view on an introductory or login web page, using a transparent GIF.

> `<img src="http://www.doi.org/cgi-bin/pushcookie.cgi?BASE-URL=
http%3A//university.library.edu%3A9003/local_content_server/">transparent.gif</img>`

A sample cookie, with a TTL of 24 hours, is:

```
Name: Demo-OpenURL
Information: \"http://university.library.edu:9003/local_content_server"
Domain: .doi.org
Path: /
Server Secure: no
Expires: Wednesday, October 23, 2013 10:28:11 PM
```

After the cookie is set, the proxy server will recognize the local content server identified in the cookie, construct an OpenURL containing the local content server URL and the DOI name:

> `http://university.library.edu:9003/local_content_server/openurl?doi=10.1000/demo_DOI`

and send the request by way of an HTTP "redirect" to the local content server.

If there is no local copy of the content, the local server must return the request to the proxy server with a "nols=y" flag set. The proxy server will then resolve the DOI name and direct the user to the publisher's content. (The deprecated setting "nosfx=y" used in the prototype is still supported.) Correctly setting the "no local service" flag is critical to avoiding infinite loops.

> `http://doi.org/openurl?id=doi:10.1000/demo_DOI&nols=y`

##### 3.8.4.2 Parameter Passing {#3.8.4.2}

Before the DOI system and Crossref came into existence, the scholarly publishing community implemented bilateral linking agreements that used parameters (name/value pairs) included in standard URLs to exchange data. This practice enabled them to gather information about requests coming to their sites, such as which other publisher's site a request came from, and from which journal and article. They could then implement special access rules, or establish pricing for their content based on who was requesting it.

At the time that the publishers began using DOI names, they also began thinking about how DOI names and the DOI system's proxy server could be used to facilitate the exchange of parameters, and remove the need for individual bilateral linking arrangements. A procedure, evolved over several years time, was agreed on by publishers who are now members of Crossref, implemented in the proxy server, and has come to be called 'Parameter Passing'.

In Parameter Passing, there are two URLs involved, both of which may be query strings and/or include parameters: (1) the resolution request sent by the 'referrer' to https://doi.org/ that has the DOI name, and (2) the URL associated with that DOI name, registered in the DOI system by the 'referent'. Parameter Passing requires joining the query strings of those two URLs together to form an 'out-bound' link. The names of the parameters used in both strings must be unique and defined for all parties. The OpenURL Format was chosen for the URLs because it specifies a set of parameter names that can be used to eliminate the chance of naming conflicts.

The DOI system proxy server accepts a resolution request in the form of an OpenURL. For example:

> `https://doi.org/openurl?url_ver=z39.88-2003&rfr_id=ori:rid:crossref.org&rft_id= doi:10.1256/003590&rfr_dat=cr_setver%3d01%26cr_pub%3dSource%20Publisher%26cr_work%3dSource %20Journal%20Title%26cr_src%3dSRC-NAME`

would be recognized by the proxy server as a Parameter Passing request. It will resolve the DOI name, and then check the domain of the URL against an 'opt-in' list that identifies organizations participating in Parameter Passing.

If the URL **is** in the opt-in list, the proxy server will construct a new URL as follows:

* Replace the registered URL's domain name and/or port number with different values, if replacements are specified in the opt-in list.

* Move all the parameters from the in-bound link to the out-bound link, except for the rft\_dat parameter.

* For the rft\_dat parameter, if the registered URL is an OpenURL, move the rft\_dat parameter to the out-bound link. If it is not already in OpenURL format, hexencode the entire query string in the URL and place it into the out-bound link as the value of the rft\_dat parameter.

The referent is assumed to have implemented a service capable of using the nested parameters. The assumption is that by agreeing to participate in Parameter Passing, a publisher will accept any and all parameters identified in the Common Crossref Parameter Set.

Changes to parameters resulting from changes to the OpenURL format, or from changes in requirements of Parameter Passing participants, are discussed in the [Crossref Help](http://help.crossref.org/#passing_parameters) documentation.

##### 3.8.4.3 Resolution of Multiple URLs using the 10320/loc Handle Type {#3.8.4.3}

One of the primary uses of the DOI system Proxy Server, or a web browser plug-in, is to resolve a DOI name to get a URL for a resource. For DOI names with multiple URL values, the proxy servers (at https://doi.org, and also the one at https://hdl.handle.net) simply select the first URL value in the list of values returned by the DOI name resolution. Because the order of that list is nondeterministic, there is no intelligent selection of a URL to which the client would be redirected. To improve the selection of specific resource URLs from handles and DOI names that contain multiple URLs, and to add features to the handle-to-URL resolution process, the 10320/loc handle value type was developed.

**Background**

Every handle, and thus every DOI name, has a set of values assigned to it, and each of those values has a type that defines the syntax and semantics of the data. Some of the typed values are for administration: owner or creation date. The others are for client use: URL strings or email addresses, or complex data types such as binary data, XML code, or other handles.

To avoid conflicts for clients if users assign types that are not registered and recognized across the user community, types are being assigned their own handles so that they can be defined and registered in the Handle System, a process that is currently under development. The prefix '10320', an arbitrary five digit string, has been set aside by the Handle System administrator for identifying handle types. For type 10320/loc, the suffix 'loc' is simply short hand for location.

**Attributes**

Type 10320/loc specifies an XML-formatted handle value that contains a list of locations. Each location has a set of associated attributes that help determine if or when that location is used. The overall list of locations can include hints for how the resolving client should select a location, including an ordered set of selection methods. The proxy servers (or any other resolution client) can apply each known selection method, in order, to choose a location based on the resolver's context (the HTTP request in the case of the Proxy Server) and the attributes of each location.

The attributes for the set of locations, as well as each location entry in the set, are open-ended to allow for future capabilities to be added in a backwards-compatible way. A small number of attributes have been defined as "standard" that all resolvers should understand.

At the top level of the XML structure are the following defined attributes:

chooseby (optional)
: The chooseby attribute identifies a comma-delimited list of selection methods. If no chooseby attribute is specified then the default (currently "locatt,country,weighted") is assumed.

For each location the following attributes are defined:

href (required)
: The URL for the location.

weight (optional)
: The weight (from zero to one) that should apply to this location when performing a random selection. Setting the weight attribute to zero results in the location not being selected unless a) it is explicitly referenced by another attribute; b) there are no other suitable locations; or c) the location is selected based on one of the other selection methods, such as country or language. If a location has no weight attribute then it is assumed to have a weight of one.

**Selection Methods**

The currently defined selection methods are:

locatt
: Selects only locations from an attribute passed in the Proxy/DOI name-URI link. If someone constructs a link as doi:10.123/456?locatt=id:1 then the resolver will return the locations that have an "id" attribute of 1 (i.e., the second location in the resolution example below).

country
: Selects only locations that have a 'country' attribute matching the country of the client. If no matching locations are found then this selects locations that have no country attribute (i.e., not a mismatch). The https://hdl.handle.net and https://doi.org Proxies determine the country of the client using a [GeoIP](http://www.maxmind.com/en/geolocation_landing) lookup.

weight
: Selects a single location based on a random choice. The Proxy will observe the 'weight' attribute for each location, which should be a floating point non-negative number. The weighting allows for a very basic load balancing, but is also a way to ensure that some locations can only be addressed directly (for example by country or locatt/attributes). If the weighted selection method is applied to locations that all have non-positive weights, then this selects one of the remaining locations randomly while disregarding location weights.

The Proxy will iterate over the known selection methods, in order, until a single location has been selected. After each iteration the Proxy will take one of four steps:

* if there is only one remaining location element, it is returned as a redirect;
* if there are no remaining location elements, the Proxy reverts to the location elements as they were before the last method was applied;
* if there are multiple location elements the Proxy will apply the remaining selection methods to those locations;
* if there are no more selection methods to try, the weighted random selection method is applied, which is guaranteed to return a single location. In a sense, the weighted random is always the "fallback".

**Resolution**

For references to DOI name 10.123/456, with a value type 10320/loc that has this list of location attributes:

```
<locations>  
	<location id="0" href="http://uk.example.com/" country="gb" weight="0" />  
	<location id="1" href="http://www1.example.com/" weight="1" />  
	<location id="2" href="http://www2.example.com/" weight="1" />  
</locations>  
```

the following selections could be made:

**Reference:** 10.123/456 from a client located in the UK  
**Result:** The "country" selection method selects the first location based on the 'country' attribute of the first location and the client's position.

**Reference:** 10.123/456 from a client located outside the UK  
**Result:** The "country" selection method removes the first location from consideration based on its 'country' attribute and chooses one of the last two locations using the "weighted" random selection method.

**Reference:** 10.123/456?locatt=id:1  
**Result:** The second location is used based on the "locatt" selection method and the 'id' attribute.

**Reference:** 10.123/456?locatt=id:0  
**Result:** The first location is used based on the "locatt" selection method and the 'id' attribute. The resolver never gets to the "country" selection method as the "locatt" selection method resulted in only a single matching location.

**Reference:** 10.123/456?locatt=country:uk  
**Result:** The first location is used based on the "locatt" selection method and the 'country' attribute.

**Reference:** 10.123/456?locatt=country:us  
**Result:** The "country" selection method removes the first location from consideration based on its 'country' attribute, finds no US-specific location, and chooses one of the last two locations using the "weighted" random selection method.

**Specific Use Case – Crossref**

The DOI name 10.1177/1522162802239753, was assigned to an article in the journal _Graft: Organ and Cell Transplantation_, which has ceased publication. The DOI name was updated to point to two archiving services that offer the article.

A 10320/loc type containing the following information was added to the record, to be used by the Proxy for redirection:

```
<locations chooseby="locatt,country,weighted">
	<location id="1" cr_type="MR-LIST"
			  href="http://mr.crossref.org/iPage?doi=10.1177%2F1522162802239753" weight="1" />
	<location id="2" cr_src="clockss_su" label="CLOCKSS_SU" cr_type="MR-LIST" 
			  href="http://graft.edina.clockss.org/cgi/reprint/6/1/18" weight="0" />
	<location id="3" cr_src="clockss_edina" label="CLOCKSS_Edina" cr_type="MR-LIST" 
			  href="href="http://graft.edina.clockss.org/cgi/reprint/6/1/18" weight="0" />
  </locations>
```

The 'chooseby' attributes (locatt,country,weighted) are the default set. In this example, the evaluation falls through the first two and the Proxy uses 'weighted' as the selection criteria. The first location (mr.crossref.org) wins with a weight of 1. The Proxy redirects to mr.crossref.org which in this example is a script on the Crossref site that builds the page a user sees when resolving the DOI name in the form of:

> `https://doi.org/10.1177/1522162802239753`

The resulting page shows that two archive services offer the article for download. The 10320/loc data at id="2" and id="3" is used by the Crossref script to display two sources from one of the services.

The general mechanism could be used in many different configurations, including building a link that specified an attribute of one of the two locations as a parameter, in which case the user would simply be redirected there in the usual fashion, without being shown the Crossref-built multi-resolution page. The original URL serves as a fall back for older proxies or plug-ins that don't understand 10320/loc.
