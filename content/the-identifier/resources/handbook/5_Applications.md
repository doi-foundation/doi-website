+++
title = "Handbook Chapter 5: Applications"
date = "2020-06-04"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Applications"
type = "handbook"
+++

5 Applications
--------------

_This chapter discusses some of the ways in which multiple resolution can be harnessed to provide applications with the ability to resolve a DOI name to the most appropriate content chosen from multiple resolution options. These options can include pop-up menus offering manual selection, and consistent automated selection through content negotiation and Linked Data._


**[5.1](#5.1)** Introduction  
**[5.2](#5.2)** Designing Applications  
      **[5.2.1](#5.2.1)** Basic Functionality  
      **[5.2.2](#5.2.2)** Design Considerations  
**[5.3](#5.3)** Multiple Resolution Applications  
**[5.4](#5.4)** Linked Data  
      **[5.4.1](#5.4.1)** Content Negotiation  
**[5.5](#5.5)** Application Profiles  
**[5.6](#5.6)** Expressing Relationships Between DOI Names  
**[5.7](#5.7)** Using the DOI System with Digital Object technologies  
      **[5.7.1](#5.7.1)** Digital Object Registry  
      **[5.7.2](#5.7.2)** DO Architecture  
**[5.8](#5.8)** Using DOI names to identify fragments

### 5.1 Introduction {5.1}

In order to maintain a persistent identifier, an active management service in collaboration with registrants is required; to justify that management service, a DOI application normally provides more value than simply registering a DOI — typically a Registration Agency offers an added value service (see Chapter 8, [Registration Agencies](/the-identifier/resources/handbook/8_registration_agencies)), such as citation linking or metadata management.

DOI names can identify many types of content, and may link to more than just a permanent, indirect link to that content; they can also provide or point to any useful information about the object when that information has been provided by the registrant or a third party. This information can include any type of descriptive metadata and any type of service related to the object, e.g., rights clearance, alerting services, data visualization or any other associated information or service. The information can be used in many ways by DOI applications customized to meet users' needs.

This chapter covers the fundamentals of DOI applications, discusses design elements for developers to consider when creating new services that can take advantage of the system's features, and describes several example services offered by Registration Agencies based on DOI name resolution. Further, this chapter describes approaches to grouping services via Application Profiles, how DOI name resolution and interoperable semantics can be combined using the Vocabulary Mapping Framework, and how the DOI system works with digital object registry technologies. 

### 5.2 Designing Applications {5.2}

#### 5.2.1 Basic Functionality {#5.2.1}

All of the data that is associated with a DOI name is stored in the DOI system in type/value pairs, each with its own unique ID. This is extremely flexible and open: new types can be added at any time, and the values can be of arbitrary complexity. Type/value pairs can be administrative (e.g., creation date, permissions, etc.), well known and standardized (e.g., URL, email, [10320/loc](http://www.handle.net/overviews/handle_type_10320_loc.html)), or created by an RA for a specific application purpose (e.g., a custom type with a value that is binary data or a specially formatted string). There can be many type/value pairs associated with a DOI name, and multiples of the same type, but every DOI name has at least one "URL" type, and its value is a URL related to the entity.

At the most basic level, all DOI applications query the DOI system by resolving a DOI name. The request can be structured to ask for all of the data associated with that DOI name; all of the data of a specific type; or data with a specific identifier. (For more on the basics of DOI name resolution, see Chapter 3, [Resolution](/the-identifier/resources/handbook/3_resolution).) Applications are built to understand one or more of the types, and parse, evaluate, and take action based on the corresponding values.

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

#### 5.2.2 Design Considerations {#5.2.2}

Flexibility and scalability are important features of well-designed DOI-enabled services. The most flexible and scalable approach is to use the DOI system as a lightweight redirection mechanism, resolving identifiers to well-structured data. This approach can be used to provide DOI-related services beyond that of a single level of redirection. In addition to simply resolving a DOI name and getting back a single URL, DOI registration agencies may offer multiple resolution services, linking a DOI name to multiple options about the content (e.g. bibliographic metadata), and those options may include requests for particular representations of metadata, or metadata useable only for particular contexts.

Developers may choose to put all or most of the information provided by the service in the DOI system itself, such that the DOI system is the primary service provider, or alternatively, use the DOI system to point to one or more external services to provide the desired information and functions. For example, the DOI system may be used to store all of the data required to display a simple menu of labeled options for a user to pick from, but redirecting to an external service that stores large quantities of scientific data for visualization tools, or multiple image files, might be preferable to storing that data in the DOI system.

Developing applications that store, use, and share high-quality machine-readable data in a standardized format is a further design consideration. DOI applications can be designed to conform to the best practices of Linked Data, a well-known concept of exposing data in machine-readable form, using the content negotiation feature of the standard HTTP web protocol.

Creating services that take advantage of DOI structured data to create consistency across RA applications is encouraged. Collaboration is encouraged whenever possible. Third party application developers not part of the IDF are also encouraged to be part of the process of creating services that take advantage of DOI structured data.

A sampling of DOI application services based on multiple resolution and content negotiation are described below. New services may be created at any time. Questions can be sent to [contact@doi.org](mailto:contact@doi.org).

### 5.3 Multiple Resolution Applications

The most basic DOI application is resolution of a DOI to a "URL" type, a simple, single point resolution. The proxy resolves the DOI name, sees the URL type and knows that the associated value can be returned to the end user client, likely a web browser, as an HTTP redirect. The service succeeds because 1) the client software (the proxy server _(https://doi.org_ (preferred) and the earlier _http://dx.doi.org_) was programmed to look for the URL type, extract the value, embed it in an HTTP redirect, and send it back to the end user client, and 2) the administrator of the specific DOI name understood the URL type and added the appropriate type/value pair.

Multiple resolution allows an entity to be resolved to multiple pieces of data or entities. Multiple type/value pairs, not limited to URL types, can be returned to clients which can then evaluate the data to determine the next action. (See also Chapter 3, Multiple Resolution, [Section 3.3](/the-identifier/resources/handbook/3_resolution#3.3).) Associating XML, or other machine readable data with a DOI name, expands the utility of multiple resolution even further, adding features, and offering more options for negotiating content, and facilitating the creation of Linked Data applications.

Multiple resolution is therefore useful for building applications where the required evaluation is to choose from a set of possible outcomes based on some criteria. An application developer could create a type in which to store values used by a client to generate a menu of options for a user when the user resolves a DOI name. In the case of a document, the user might be given the option to view the document, view document metadata, share the document by emailing the URL to an associate, visit the author's blog, etc. For a dataset, the choices offered to the user on the landing page may include viewing the complete dataset, viewing only selected data, or some other choice of interaction with the dataset based on the information made available to a client via resolution of the DOI name.

For example, scholarly journal articles are assigned one DOI name, but they can be available from multiple web sites, and readers may wish to download an article from a service to which they are subscribed. Crossref uses multiple resolution to enable users to resolve an article's DOI name, and choose which version of an article they wish to view, as illustrated in Figure 1 below.

{{< figure src="/images/handbook/5-applications-fig1.png" title="Figure 5-1: Journal article available from two web sites: JSTOR and BioOne">}}

The service is enabled by using type "10320/loc", an established type that specifies a machine-readable XML-formatted value that contains a list of "locations" which provide a client with a choice of actions, or 'choose-by' options, for selecting the action to take when resolving the DOI name. It provides a standardized mechanism to select a specific URL or other information from a number of available choices. Resolvers can apply known selection methods, in order, to choose a location based on the resolver's context (the HTTP request in the case of the proxy server) and the attributes of each location. (For an explanation of the mechanics of the 'choose-by' mechanism, see Chapter 3, Resolution, [Section 3.8.1.3](/the-identifier/resources/handbook/3_resolution#3.8.1.3).)

Type 10320/loc greatly expands the options for DOI services. In addition to the "user choice" option illustrated by Figure 1, the data stored in type 10320/loc can be used to enable a client to choose what the outcome of resolving a DOI name will be for a specific user, based on a given criteria. The figure below shows (non-administrative) values associated with DOI name 10.1525/bio.2009.59.5.9. When this DOI name was registered it had a single URL value (type of URL and value, aka data, equal to a JSTOR URL). A 10320/loc type was added to provide instructions for offering other resolution options. When this record is returned to the proxy, it recognizes the 10320/loc type and, if asked to do so, performs an evaluation of the location values based on a given criteria.

Figure 2 shows the same DOI name with data of type 10320/loc that includes geographic locations that could be used by a client to automatically select the URL a user is redirected to.

<table>
	<tbody>
		<tr>
			<td colspan="4"><strong>Values for: 10.1525/bio.2009.59.5.9</strong></td>
		</tr>
		<tr>
			<td>Index</td>
			<td>Type</td>
			<td>Timestamp</td>
			<td>Data</td>
		</tr>
		<tr>
			<td>1</td>
			<td>URL</td>
			<td>Sun Jan 02 2011 13:32:18 EST</td>
			<td>http://www.jstor.org/stable/25502450</td>
		</tr>
		<tr>
			<td>1000</td>
			<td>10320/LOC</td>
			<td>Mon Jul 27 2009 13:18:25 EDT</td>
			<td><pre>&lt;locations chooseby="locatt,country,weighted"&gt;<br>&lt;location id="1" cr_type="MR-LIST" href="http://mr.crossref.org/iPage?doi=10.1525%2Fbio.2009.59.5.9" weight="1" /&gt;<br>
				&lt;location id="2" cr_src="unca" label="SECONDARY_BIOONE" cr_type="MR-LIST" href="http://www.bioone.org/doi/full/10.1525/bio.2009.59.5.9" country="uk" weight="0" /&gt;<br>&lt;/locations&gt;</pre></td>
		</tr>
	</tbody>
</table>

<figure>
	<figcaption>
		<h4>Figure 5-2: XML Data for Type 10320/loc</h4>
	</figcaption>
</figure>

A client may be configured to:

*   Ignore type 10320/loc and resolve 10.1525/bio.2009.59.5.9 and select the URL value, http://www.jstor.org/stable/25502450;
*   Resolve 10.1525/bio.2009.59.5.9, and construct a page that shows the user both of the URLs in the cr\_type attributes in the 10320/loc value, letting the user choose the next action;
*   Add a paramater and resolve the string 10.1525/bio.2009.59.5.9?locatt="country:uk", in which case the proxy would determine the user's geographic location from their IP address, and based on the value in the "country" element in type 10320/loc, select the BioOne URL, http://www.bioone.org/doi/full/10.1525/bio.2009.59.5.9, for users in the UK. A random selection would be made for all others;
*   Resolve the string 10.1525/bio.2009.59.5.9?locatt=id:1, in which case the Crossref metadata service at http://mr.crossref.org/iPage?doi=10.1525%2Fbio.2009.59.5.9 would be selected.

Clients that do not understand the 10320/loc type would ignore that type/value pair and simply use the single level of redirection using the URL type. All older DOI clients of which we are aware behave in this way. This allows adding new features to DOI resolution without breaking the millions of existing DOI names.

Note that even if this approach were to be applied to millions of an RA's existing DOI names, it is not necessary to alter all the DOI records. The DOI system's infrastructure is designed such that any information that applies to all DOI names under a given DOI prefix can be recorded at the DOI prefix record that identifies the service responsible for that prefix, and clients will be able to carry that information all the way through the resolution process. Thus, should an RA at some point need to change their approach to linked data and point to a different service or use different parameters, the change could be made to a single DOI prefix and it would apply to all of the millions of DOI names automatically.

It is also interesting to note that [Schema.org](http://Schema.org/) provides technical documentation on the ways in which the major search engines will recognize structured data in web pages, by getting rich snippets of content and data from a site directly into search engine results pages. Schema.org eschews RDFa in favour of simpler HTML5 markup. The concept is that "rich snippets" will allow search engines to read meaningful semantics into content on the web. Such "rich snippets" are exactly what is done with 10320/loc and the 'chooseby' approach. If schema.org defines interesting snippets, if they become important enough they could be easily recorded as values and/or generated out of the proxy. 

### 5.4 Linked Data

A prominent use of the 'choose-by' mechanism described above is redirection to Linked Data services. Linked data is the general term for a set of best practices for exposing data in machine-readable form using the content-negotiation feature of the standard HTTP web protocol. These best practices support the development of tools to link and make use of data from multiple web sources without the need to deal with many different proprietary and incompatible application programming interfaces (APIs), and use of HTTP to request data in structured form meant for machines instead of human-readable displays. In the early days of the web, human beings were following most URLs, and it made sense that the DOI web proxy only resolved DOI names to human-readable web pages, but this is no longer the case.

The DOI proxy at doi.org is enabled to support content negotiation for DOI names. In Linked Data applications, evaluation of the HTTP request that comes in to the proxy service determines if it is a request for content of form application/rdf+xml, or one of a few similar types that are commonly understood to be a request for Linked Data. These requests for special content types would come from automated processes or special 'linked data' browsers and would not normally come from end users. The utility of this, of course, is that it allows outside developers to query the extensive and reliable set of metadata records held by IDF RAs to build value-added services.

Content negotiation is an accepted method of reaching the goal of linking data. To a web server, and to the DOI proxy servers, content negotiation means 'what should I send back'. It allows a user to request a particular representation of a web resource. For example, DOI resolvers can use content negotiation to provide different representations of metadata associated with DOI names. A content negotiated request to a DOI resolver is much like a standard HTTP request, except server-driven negotiation will take place based on the list of acceptable content types a client provides.

Some DOI RAs are using this approach for all of their DOI names, offering services that return metadata in a common machine-readable format. A significant advantage of applying Linked Data principles and technologies to DOI-registered material is that it is 'data worth linking to': it is curated, value-added, data, which is managed, corrected, updated and consistently maintained by Registration Agencies. It is also persistent, so avoiding 'bit-rot'. In practice, the quality of Linked data implementations is only as good as the data you are linking to, and the meaning and contextualisation of the link you use. The DOI system can offer "curated data", i.e. consistent, managed, linking so you can link to other "quality data" with confidence, while still using the standard Linked Data technologies.

#### 5.4.1 Content Negotiation {#5.4.1}

Content negotiation is being implemented by DOI Registration Agencies for their DOI names, specifically to offer value-added metadata representations for users. A number of citation styles, some of which are common across RAs, are being supported. Using content negotiation, it is possible to make a request that favours content types specific to a particular RA but which will also degrade to respond with a more standard content type for other RAs. Requests to these services would come from automated processes or special 'linked data' browsers and would not normally come from end users. The utility of this is that it allows outside developers to query the extensive and reliable set of metadata records held by IDF RAs to build value-added services. Crossref, DataCite and mEDRA support content negotiated DOI names via the [http://data.crossref.org](http://data.crossref.org), [http://data.datacite.org](http://data.datacite.org), and [http://data.medra.org](http://data.medra.org) services respectively, which can be queried for formatted metadata.

For normal browser requests in which the HTML page header includes GET "Accept: text/html", the DOI name is resolved and the user is redirected to the publisher's landing page URL. For example, the DOI "10.1126/science.169.3946.635" redirects to a landing page describing the article, "The Structure of Ordinary Water". Making a content negotiated request instead requires the use of an HTTP header, "Accept", where the GET includes other known content types that are acceptable to the client (those that it knows how to parse) and that are commonly understood to be a request for linked data. For browser requests for which the header says GET "Accept: application/ref+sml, resolving the same DOI name referenced above will redirect the user to the RA's metadata service. Further, a client that wishes to receive citeproc JSON if it is available, but which can also handle RDF XML if citeproc JSON is unavailable, would make a request with an Accept header listing both "application/citeproc+json" and "application/rdf+xml".

Type 10320/loc is interpreted by the proxy, and based on the GET, a location value is used to redirect to the appropriate metadata service which then creates the response for the user. For Crossref, DataCite and mEDRA DOI names, all requests to doi.org that ask for a content type which is not "text/html" will be redirected to a metadata service hosted by the DOI name's Registration Agency.

To illustrate, using the DOI name above, in addition to type URL, all Crossref DOI names have type 10320/loc:

<table>
	<tbody>
		<tr>
			<td colspan="4"><strong>Values for: 10.1126/science.169.3946.635</strong></td>
		</tr>
		<tr>
			<td bgcolor="#ebebeb" align="left">Index</td>
			<td bgcolor="#ebebeb" align="left">Type</td>
			<td bgcolor="#ebebeb" align="left">Timestamp</td>
			<td bgcolor="#ebebeb" align="left">Data</td>
		</tr>
		<tr>
			<td>1</td>
			<td>URL</td>
			<td>Tue Jan 17 2012 14:39:18 EST</td>
			<td>http://www.sciencemag.org/cgi/doi/10.1126/science.169.3946.635</td>
		</tr>
		<tr>
			<td>1000</td>
			<td>10320/LOC</td>
			<td>Tue Jan 17 2012 14:39:18 EST</td>
			<td><code>&lt;locations chooseby="locatt,country,weighted"&gt;<br>&lt;location weight="0" http_role="conneg" href_template="http://data.crossref.org/10.1126/science.169.3946.635" /&gt;<br>&lt;/locations&gt;</code></td>
		</tr>
	</tbody>
</table>

<figure>
	<figcaption>
		<h4>Figure 5-3: XML Data for Type 10320/loc</h4>
	</figcaption>
</figure>

All content negotiation queries are redirected to the service at data.crossref.org using the DOI name that was requested as the argument. (Resolution requests for the same DOI name but without the special 'linked data' content negotiation markings, e.g., all conventional web browser transactions, will fall back to the expected URL type and will get back conventional DOI redirection.) Shown below is an Accept header for the content negotiated request, listing both "application/citeproc+json" and "application/rdf+xml", and the metadata returned by the service. More information about this Linked Data application can be found at [http://crosscite.org/cn/](http://crosscite.org/cn/).

{{< figure src="/images/handbook/cn-fig3.png" title="Figure 5-4: HTTP 'Accept' Header">}}

The proxy will return the "Vary: Accept" HTTP header whenever a DOI is resolved which has separate resolutions for content negotiation requests. Developers can use this to determine which DOIs offer content negotiation support.

The goals of Linked Data — content negotiation using HTTP URIs in order for both people and user agents to make use of information about an object in standard formats such as RDF and XML, and acquire links to other related URIs that improve discovery — are being met using the DOI system's persistent, high quality data. The number of Linked Data applications will continue to grow. Please contact [contact@doi.org](mailto:contact@doi.org) for additional information if you have a requirement or an idea for a new service.

### 5.5 Application Profiles

DOI names can be grouped into Application Profiles (APs), which define the services, including metadata services, which are available for that set of DOI names. Each DOI name can be a member of one or more APs. By default, for example, every DOI name is a member of an Application Profile which resolves the DOI name to some network location that contains at least the minimal kernel metadata for that DOI name. Application Profiles can be useful as a conceptual grouping, but may also be technically expressed in the DOI data model as part of the resolution mechanism. Mechanisms for formally registering APs and including them as part of the structured data returned with each DOI resolution, e.g., as a label, will depend on application requirements; potential users should consult with IDF.

### 5.6 Expressing Relationships Between DOI Names

The DOI system can provide further support in the development of Linked Data or other mechanisms for relating entities identified with DOI names, by offering the resolution capability combined with simple, useful and interoperable semantics using the [Vocabulary Mapping Framework](../VMF/index.html) (VMF) to define (or map from existing schemes) specific relationships. Potential users of this facility are strongly encouraged to discuss this with the IDF community.

The following set of Relators is recommended for use by Registration Agencies in devising typed relationships ("this DOI name is related to this other DOI name by a relationship of the defined type...")

The relevant semantics here are the "relators" or (in OWL/RDF terms) "properties" which join two DOI names representing resources or parties. IDF has added a small number of "key" relators to its data dictionary, in its own namespace, representing the most common and important relationships between Resources and Parties in existing content standards and databases. These are then recommended and available to RA's to use within their schemas. We have proposed five key resource-to-resource relators and one key party-to-resource relator to start with:

*   **doi:IsDerivedFrom**
*   **doi:IsManifestationOf**
*   **doi:HasSubject**
*   **doi:IsReplacementFor**
*   **doi:IsPartOf**
*   **doi:HasContributor**

This list is a starting point, based on content standards and databases: each represents a key concept in VMF. However, RAs will often have some of their own existing relators, or will want to use more specialized Relators. For example, an RA may wish to specify Adaptations, Extracts or Editions rather than just Derivations. In principle this may extend to any level of granularity. Using VMF, we can provide a hierarchy of sub-relators for each of these key relators, for example:

**IsDerivedFrom**  
        IsAdaptedFrom  
            IsTranslatedFrom  
                IsAutomaticallyTranslatedFrom  
        IsCompiledFrom  
        IsExtractedFrom  
        IsUpdatedVersionOf  
        IsCreatedFromBasis  
        IsReplicaOf  
        etc

These can be added, as needed by RAs, to the DOI Data Dictionary. This is a very small, focused subset of VMF: all the examples used are already in VMF under other names, and many others.

This mini-ontology can also contain the "IsSameAs" mappings to any specific relators in RA's own schemas, or other schemas such as DC or foaf, for example:

**doi:HasMainSubject owl:equivalentProperty     foaf:IsPrimaryTopicOf**

For obvious interoperability reasons, the structural relators make use of the RDF/OWL standards (eg owl:equivalentProperty, rdfs:subPropertyOf). This structure provides a small but powerful hierarchical and equivalence Relator Ontology to allow RAs to create and harvest linked data involving DOI names, supported by basic inference to allow for translation into their preferred or required terms. The size and scope of the Relator Ontology, beyond the initial key relators, may expand and will be determined by RA requirements.

**Table 5.1: Suggested Key Relators**

<table>
	<thead><tr>
		<td><strong>Relator</strong></td>
		<td><strong>Definition</strong></td>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td><strong>doi:IsDerivedFrom</strong></td>
		<td>The Relator between a Derivation (for example, an Adaptation, Excerpt or Compilation) and a Source from which it is derived.</td>
	</tr>
	<tr>
		<td><strong>doi:IsManifestationOf</strong></td>
		<td>The Relator between a Manifestation (for example, a Fixation or Performance) and a Work which it realizes.</td>
	</tr>
	<tr>
		<td><strong>doi:HasSubject</strong></td>
		<td>The Relator between a Creation and an entity which is referenced in some way by it.</td>
	</tr>
	<tr>
		<td><strong>doi:IsReplacementFor</strong></td>
		<td>The Relator between a Creation and one that it replaces (for example, as an updated version of software).</td>
	</tr>
	<tr>
		<td><strong>doi:IsPartOf</strong></td>
		<td>The Relator between a Creation and another of which it is a Part.</td>
	</tr>
	<tr>
		<td><strong>doi:HasContributor</strong></td>
		<td>The Relator between a Creation and a Party who is a contributor to its making.</td>
	</tr>
</tbody></table>

All of the above relations are many-to-many.

Each of the key Relators has any number of specialized children (which may be added to at any point in the Data Dictionary). Examples are given below:

**IsDerivedFrom**  
        IsAdaptedFrom  
                IsTranslatedFrom  
        IsCompiledFrom  
        IsExtractedFrom  
        IsUpdatedVersionOf  
        IsCreatedFromBasis  
        IsReplicaOf  
        etc

**IsManifestationOf**  
        IsPerformanceOf  
        IsFixationOf  
                IsRecordingOf  
       etc

**IsReplacementOf**  
        IsUpdatedVersionOf  
        etc

**IsPartOf**  
        IsChapterOf  
        IsMemberOf (for sets)  
        etc

**HasSubject**  
        RefersTo  
        HasMainSubject  
        etc

**HasContributor**  
        HasAuthor  
                HasPrefaceAuthor  
        HasEditor  
        HasIllustrator  
        etc

### 5.7 Using the DOI System with Digital Object technologies

An optional path which has been followed by some DOI implementations is to use the DOI System with the CNRI [Cordra](http://cordra.org) software which provides complementary functionality. Both the Handle System and Cordra are part of the wider [Digital Object Architecture](http://hdl.handle.net/4263537/5041). Some customization of the basic technologies may be required: this could be done by CNRI or others (note that this registry technology is not part of the DOI System and not managed by the IDF, but is endorsed for use with DOI).

#### 5.7.1 Digital Object Registry {#5.7.1}

The Digital Object (DO) Registry software was developed by [CNRI](http://www.cnri.reston.va.us) to complement the Handle System (used in the DOI System). The current version, [Cordra](http://www.cordra.org), integrates the DO Registry with CNRI's DO Repository software. It provides the reverse-lookup function, analogous to a card catalog or telephone directory, such that an identifier can be located by searching the attributes that have been registered. Cordra is open and freely available and has been used in a number of different areas, including in DOI application (e.g. by the movie and television industries for the Entertainment ID Registry, [EIDR](http://www.eidr.org/)). Registries can be built relatively cheaply and relatively quickly using existing systems in place and in daily use today. The DO technologies were built by CNRI, largely supported by government funding, and are freely available at little or no cost.

The Registry, together with the DOI system, can be used to federate distributed sources of data in a variety of ways, that is, multiple network architectures are possible. A simple approach would be to have a set of Registrars empowered to submit metadata about a defined set of entities to a single searchable Registry. The submissions may be constructed according a given metadata schema, so that the submissions could be syntactically validated, and the registered entity would be given an identifier (DOI) assuming it did not already have one. The metadata would be indexed and made searchable. A search would return one or more entries, including the identifier, which could be used to reference the identified entity in any transaction or context.

There are a number of issues and possible variations within the simple scenario and there are architectural variations on the scenario itself. Within the scenario, the specific data kept in the Registry, in the identifier resolution system, and held back at the Registrar can all vary. As an example, the Registry could contain the minimal reference data and no more, the Registrar could run a service that provided additional, potentially non-standardized, data beyond the core held by Registry, and the identifier system could hold only a pointer back to the Registry. Alternatively, the resolution system could hold the core data, the Registry could hold extensive data, and the Registrar's role could end with data submission. Architecturally, the Registry software is not restricted to the single central registry scenario. Multiple registries could be built to run in parallel to each other, such that a new entry or a change in any entry would immediately be reflected in the others.

The level of effort required to prototype such a system is highly dependent on the specific functional requirements. The key task is the up-front analysis to determine the requirements for configuring and customizing existing software.

#### 5.7.2 DO Architecture {#5.7.2}

Objects defined in the DOI system are of any form: a DOI name can be assigned to any entity, whether physical, digital or abstract. Objects, as defined in the [Digital Object Architecture](http://hdl.handle.net/4263537/5041), are digital only. There is no clash between these two approaches, as any entity may be dealt with as a digital representation. This is simply another of the "overlays on existing or future information storage systems" referred to in the diagram below, which are used as levels of explanation.

{{< figure src="/images/handbook/DO_Cloud.png" title="Figure 5-5: The Digital Object Cloud, as envisaged in the Digital Object Architecture of which the Handle System used in the DOI System is a component.">}}

We deal with such overlays all the time at many levels: e.g. a spreadsheet is an overlay on top of a matrix of data cells; which in turn is an overlay on top of underlying machine code; a financial system is an overlay on top of spreadsheets; an abstract work is an overlay on top of individual expressions of the work; etc. "self-explaining" indicates that the digital object contains, either directly as part of its content or indirectly as a link to some metadata, sufficient information for the object to be used unambiguously in an application. The self-explaining object is able to access lower levels in the information overlays to retrieve appropriate information.

### 5.8 Using DOI names to identify fragments

In some cases, applications may require the identification of fragments of an entity, rather than the full entity. Each such fragment may be assigned a separate DOI name if it is practical and useful to do so (for example, if a specific table within a book is likely to be re-used many times). However, this may not always be possible: there are also cases where one wishes to identify in principle "any fragment of this entity" as it becomes needed "on the fly". For such cases, use may be made of "[Template handles](http://www.handle.net/tech_manual/HN_Tech_Manual_8.pdf)": a single template DOI handle can be included in the form of a base formula that allows any number of extensions to that base to be resolved as full DOI handles, according to a pattern, without each such handle being individually registered. This would allow, for example, the use of DOI names to reference an unlimited number of ranges within a video without each potential range having to be registered with a separate handle. If the pattern needs to be changed, e.g., the video moves or a different kind of server is used to deliver the video clips, only the single base DOI name (handle) needs to be changed to allow an unlimited number of previously constructed extensions to continue to resolve properly.