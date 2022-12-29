+++
title = "DOI® Resolution Documentation"
date = "2020-07-04"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® Resolution Documentation

1\. [Resolving DOIs Using the Proxy Server System](#1-resolving-dois-using-the-proxy-server-system)  
2\. [Encoding DOIs for Use in URIs](#2-encoding-dois-for-use-in-uris)  
3\. [Proxy Server Query Parameters](#3-proxy-server-query-parameters)  
4\. [Which RA?](#4-which-ra)  
5\. [Proxy Server REST API](#5-proxy-server-rest-api)

_Note that this information, and additional information about the DOI Proxy Server System, Resolution and Numbering, can be found in the [DOI Handbook](../hb.html)._

Users may resolve DOI names that are structured to use the DOI system Proxy Server (https://doi.org (preferred)). The resolution of the DOI name in this case depends on the use of URL syntax: the example DOI name doi:10.10.123/456 would be resolved from the address: "https://doi.org/10.123/456". Any standard browser encountering a DOI name in this form will be able to resolve it. The proxy service (both doi.org and the earlier but no longer preferred dx.doi.org) is accessible over IPv6, and supports DNSSEC. The proxy servers respond to HTTPS (preferred) as well as HTTP requests.

### 1\. Resolving DOIs using the Proxy Server System

The DOI system uses the Handle System® to manage digital objects (see the DOI Factsheet "[DOI System and the Handle System](doi-system-and-the-handle-system)"). At the infrastructure level, DOI names are handles.

The DOI system Proxy Server is basically a web server that knows how to talk to the Handle System, and at this writing, most DOI® names found on the web are embedded in URLs that use the proxy server for DOI name resolution. For any HTTP request that combines the proxy's domain name with a DOI name, for example

https://doi.org/10.1000/demo\_DOI

the proxy will query the Handle System for the DOI name, take the URL in the handle record (or if there are multiple URLs in the handle record it will select one, and that selection is in no particular order) and send an HTTP redirect to that URL to the user's web browser.

Increasing numbers of DOI names include data in addition to the single default URL. This is sometimes referenced as multiple resolution. These added values are intended for use by more advanced applications which have the ability to take advantage of multiple pieces of data, e.g., the location of enhanced metadata or related documents.

In addition to handle values of type URL, the proxy server understands values of handle value type 10320/loc. These values contain XML describing multiple redirection endpoints for the DOI name and conditions under which the proxy should use them. For further documentation see _DOI Handbook_ Section 3.8.4.3, [Resolution of Multiple URLs using the 10320/loc Handle Type](http://www.doi.org/doi_handbook/3_Resolution.html#3.8.4.3).

The proxy server is configured to display a "DOI Name Not Found" error page when queried for a DOI name that it cannot find.

The DOI names 10.1000/demo\_DOI and 10.1000/demo\_DOI/ are both valid DOI names, but it is unlikely that a DOI name will be created with a trailing slash. If a resolution request for a DOI name with a trailing slash is received by the proxy server and that DOI name is not found, the proxy server will return an error report that includes a warning that the requested DOI name contained a trailing slash, and a link to click to resolve the same string without the slash.

The DOI system Proxy Server is really multiple servers running at multiple locations, with the load distributed evenly across all servers. To speed resolution, the proxy servers cache handle values, with the TTL set to 24 hours. This means that if a handle value is changed, it can take up to 24 hours before the new value is returned.

Note that the IDF also runs a proxy server for the [shortDOI™ Service](http://shortdoi.org/) that is not part of this DOI system Proxy Server specification.

### 2\. Encoding DOIs for use in URIs

The Handle System uses UTF-8, a Unicode implementation, and has no character set constraints. But the DOI system Proxy Server is a web server that sends redirects to web browsers using HTTP syntax, so characters in DOI names that may not be interpreted correctly by web browsers, for example '?', should be avoided or encoded. A non-ASCII character in a DOI name should be converted to UTF-8, and each UTF-8 byte that isn't ASCII should be %encoded.

The "#" is another example. Only if you send the DOI system Proxy Server the DOI name

10.1000/res#test

encoded as

https://doi.org/10.1000/res%23test

will the proxy correctly resolve the DOI name. If it is not encoded, #test will be treated as a fragment and removed by the web browser before it gets to the proxy, which will then attempt to resolve 10.1000/res instead.

Tables 1 and 2 summarize the encoding guidelines for DOI. URLs have the most restricted set of characters. Table 1 lists the characters that should always be hex encoded. Table 2 lists additional characters where it is recommended that characters be replaced by hex-encoding. The distinction between the lists is between practical experience with current web browsers and the more formal specification of URL syntax. In the DOI Directory all characters represent themselves.

#### Table 1: Mandatory Encoding

Character|Encoding
---|---
%|(%25)
"|(%22)
#|(%23)
SPACE|(%20)
?|(%3F)

#### Table 2: Recommended Encoding

Character|Encoding
---|---
\< | (%3C)
\> | (%3E)
\{ | (%7B)
\} | (%7D)
\^ | (%5E)
\[ | (%5B)
\] | (%5D)
\` | (%60)
\| | (%7C)
\\ | (%5C)
\+ | (%2B)

Note also that web browser treatment of "/./" and "/../" can be inconsistent. It is recommended that one of the slashes be percent encoded, e.g., change "/./" to "/.%2F" and "/../" to "/..%2F".

### 3\. Proxy Server query parameters

<dl>
	<dt>noredirect</dt>
	<dd>Do not redirect using URL or 10320/loc values; display handle values instead.</dd>
	<dt>ignore_aliases</dt>
	<dd>Ordinarily the proxy will take a handle value of type HS\_ALIAS to be a handle that should be resolved instead of the input handle; with this parameter values of type HS\_ALIAS are ignored.</dd>
	<dt>auth</dt>
	<dd>Authoritative query. The proxy will bypass its cache and resolve the handle at an authoritative server.</dd>
	<dt>cert</dt>
	<dd>Certified query. The proxy will require an authenticated response from the handle server. Not generally needed by end users.</dd>
	<dt>index</dt>
	<dd>Only resolve the handle value at the specified index. May be repeated to resolve multiple indices.</dd>
	<dt>type</dt>
	<dd>Only resolve handle values of the specified type. May be repeated to resolve multiple types.</dd>
	<dt>urlappend</dt>
	<dd>The value of this parameter is appended to the end of the URL used for redirection.</dd>
	<dt>locatt=key:value</dt>
	<dd>For multiple redirection; specifies a key:value pair to determine the choice of redirection from 10320/loc values.</dd>
	<dt>action=showurls</dt>
	<dd>For multiple redirection; returns an XML representation of the possible redirect locations.</dd>
	<dt>nols=y</dt>
	<dd>Some libraries and other institutions use a special cookie to cause the DOI system Proxy Server to redirect users to an "appropriate copy" using a local service. For example users may be redirected to the full text of a journal article already purchased by the library, instead of a landing page indicating a fee. Users can add the "nols=y" query parameter to prevent the local service redirect.</dd>
</dl>

### 4\. Which RA?

Which RA? is a simple service that has been built to examine the type/value pairs returned from handle resolution and provide specific information that is available from the doi.org Proxy System. This service returns the name of the DOI Registration Agency (RA) responsible for a specific DOI, or group of DOIs. When a DOI name is appended to the string "https://doi.org/doiRA/", a resolution (HTTP GET) of that URL will return a bit of JSON specifying the name of the RA. Resolving [https://doi.org/doiRA/10.5240/B1FA-0EEC-C316-3316-3A73-L](https://doi.org/doiRA/10.5240/B1FA-0EEC-C316-3316-3A73-L) will return:

```
[  
  {  
    "DOI": "10.5240/B1FA-0EEC-C316-3316-3A73-L",  
    "RA": "EIDR"  
  }  
]
```

A full list of RA names and abbreviations can be found [here](http://www.doi.org/registration_agencies.html). Using commas in the URL string to delineate multiple DOIs will return multiple results in one request. Possible error states include "Invalid DOI", "DOI does not exist" and "Unknown".

### 5\. Proxy Server REST API

The DOI system Proxy Server REST API allows programmatic access to DOI name resolution using HTTP.

#### Example Request/Response

A REST API request can be made by performing a standard HTTP GET of

`/api/handles/<handle>`

The API returns JSON.

For example, https://doi.org/api/handles/10.1000/1 yields the response

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
	  "data": { "format": "string", "value": "http://www.doi.org/index.html" },
	  "ttl": 86400,
	  "timestamp": "2004-09-10T19:49:59Z"
	}
  ]
}
```

#### Response Format

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

#### Response Codes

*   1 : Success. (HTTP 200 OK)
*   2 : Error. Something unexpected went wrong during handle resolution. (HTTP 500 Internal Server Error)
*   100 : Handle Not Found. (HTTP 404 Not Found)
*   200 : Values Not Found. The handle exists but has no values (or no values according to the types and indices specified). (HTTP 200 OK)

#### Query Parameters

This DOI system Proxy Server REST API is CORS-compliant, however, JSONP callbacks are also supported using a "callback" query parameter.

The presence of the "pretty" query parameter instructs the server to pretty-print the JSON output.

The "auth" query parameter instructs the proxy server to bypass its cache and query a primary handle server directly for the newest handle data.

The "cert" query parameter instructs the proxy server to request an authenticated response from the source handle server. Not generally needed by end users.

The "type" and "index" query parameters allow the resolution response to be restricted to specific types and indexes of interest. Multiple "type" and "index" parameters are allowed and values are returned which match any of the specified types or indexes. For example,

For example, https://doi.org/api/handles/10.1000/1?type=URL&callback=processResponse yields the response

```
processResponse({
  "responseCode": 1,
  "handle": "10.1000/1",
  "values": [
	{
	  "index": 1,
	  "type": "URL",
	  "data": { "format": "string", "value": "http://www.doi.org/index.html" },
	  "ttl": 86400,
	  "timestamp": "2004-09-10T19:49:59Z"
	}
  ]
});
```

Note: The DOI system uses the Handle System and so DOIs are also resolvable using Handle clients instead of the doi.org HTTP service. See [https://www.doi.org/factsheets/DOIHandle.html](https://www.doi.org/factsheets/DOIHandle.html) and [https://www.handle.net](https://www.handle.net) for more information.