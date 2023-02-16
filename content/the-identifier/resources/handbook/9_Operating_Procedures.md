+++
title = "Handbook Chapter 9: Operating Procedures"
date = "2016-02-09"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "Operating Procedures"
type = "handbook"
+++

9 Operating Procedures
----------------------

_This Chapter summarises common procedures and rules for the registration and maintenance of DOI® names and associated metadata. Registration Agencies will adopt their own detailed operating procedures and these should be consulted in addition to this general guide._

**[9.1](#9.1)** The DOI Directory  
      **[9.1.1](#9.1.1)** DOI prefix assignment  
      **[9.1.2](#9.1.2)** Using a local handle service run by the DOI Directory Manager  
      **[9.1.3](#9.1.3)** Running a local handle service  
      **[9.1.4](#9.1.4)** Registering a DOI name with associated metadata  
      **[9.1.5](#9.1.5)** Transferring DOI names from one registrant to another  
      **[9.1.6](#9.1.6)** Transferring DOI names from one Registration Agency to another  
      **[9.1.7](#9.1.7)** DOI system error messages  
**[9.2](#9.2)** Handle System  
      **[9.2.1](#9.2.1)** Requirements for operating a local handle service  
      **[9.2.2](#9.2.2)** Requirements for providers of resolution services  
      **[9.2.3](#9.2.3)** Developing Handle System client software  
**[9.3](#9.3)** DOI Data Dictionary  

### 9.1 The DOI Directory {#9.1}

The DOI Directory is a virtual service consisting of handle services and web proxies located and configured to provide highly reliable handle resolution, administration, and backup for all DOI names, regardless of the varying administrative arrangements of the Registration Agencies. This approach provides the flexibility RAs need to develop individual business models and meet customer requirements while guaranteeing reliable overall service.

The directory is comprised of handle services (see [Handle.Net](http://www.handle.net)) that include multiple handle sites. An RA that does not wish to maintain its own handle service may opt to use the handle service managed by the DOI Directory Manager, described below in Section [9.1.2](#9.1.2).

Each service contains a primary site, and at least one secondary (mirror) site. Some of the secondary sites are managed by the Registration Agencies that have chosen to run their own local handle services, but the IDF requires each primary site to have at least one secondary site run by the IDF. Both running a separate handle service, and using a service run by the Directory Manager, require the Directory Manager to create and assign prefixes.

The Directory infrastructure also includes proxy servers (all at the domain name doi.org). There is a geographic distribution of many proxy servers running at hosting sites and at facilities controlled by RAs, but which use the CNRI-developed software. (Note that the proxy server domain name dx.doi.org, previously used but no longer preferred, is also supported.)

#### 9.1.1 DOI prefix assignment {#9.1.1}

A prefix is a unique string that makes up the first part of a DOI name and is stored as a handle in the Handle System's Global Handle Registry® (e.g., 0.NA/10.1000). Registration Agencies may receive and assign as many prefixes as they require.

All DOI name prefixes begin with 10, and are assigned in sequential order; no reserved prefixes may be requested. The second part of a DOI name is called the suffix and is the local string assigned by the owner or organization acting on their behalf (e.g., 10.1000/34004JFR). The prefix and suffix are separated by a forward slash (/). See Chapter 2, [Numbering](2_Numbering) for suggested guidelines for suffix numbering.

It is recommend that prefixes are assigned at an appropriate level to deal with business requirements. Typically, a Registration Agency may issue one prefix per customer, but it might also be appropriate to issue a prefix per brand, or to some recognizable cluster of products (e.g. a publisher imprint). The choice is the RA's, but IDF and/or other RAs can discuss requirements and make recommendations.

Each RA will be allotted prefixes as a block of sequential numbers that have no special meaning. Each RA, especially those running their own local handle service, will need to understand the basic set up of their prefixes. Each prefix has 'service information' associated with it. This service information is the map/layout of the handle service. The service information is incorporated in a service handle (another level of indirection for ease of administration).

A prefix will have the following values: (Example)

<table class="no-zebra">
	<tbody>
		<tr>
			<td colspan="3">Prefix: 0.NA/10.1201</td>
		</tr>
		<tr>
			<td colspan="3">Handle Data:</td>
		</tr>
		<tr>
			<td>Type</td>
			<td align="center">Index</td>
			<td>Value</td>
		</tr>
		<tr>
			<td>HS_ADMIN</td>
			<td>100</td>
			<td>0.NA/10:200 (CNRI admin that points to another handle)</td>
		</tr>
		<tr>
			<td>HS_ADMIN</td>
			<td>101</td>
			<td>0.NA/10.1201:200 (RA admin that points to a group within
				the prefix record — see HS_VLIST next in the list)</td>
		</tr>
		<tr>
			<td>HS_VLIST</td>
			<td>200</td>
			<td>0.NA/10.1201:300, 10.1.admin/user1:300 (Group/list of administrators)</td>
		</tr>
		<tr>
			<td>HS_PUBKEY</td>
			<td>300</td>
			<td>cndcjsazew7qgca... (Public key for local server administration)</td>
		</tr>
		<tr>
			<td>HS_SERV</td>
			<td>1</td>
			<td>0.SERV/10.1 (Service handle)</td>
		</tr>
		<tr>
			<td>HS_SIGNATURE</td>
			<td>400</td>
			<td>cveuairjdkk5674ca... (credentialed administrator)</td>
		</tr>
	</tbody>
</table>

CNRI maintains administrative permission for the prefix as well as the RA. This is intended as backup for administration. Administration of DOI names will require the use of an admin DOI. It is the responsibility of the RA to inform CNRI and the IDF in the event of any major transaction that could possibly interrupt the mirroring mechanism. It is also the responsibility of the RA to inform CNRI of any configuration changes in their local handle service. Information concerning prefix assignment, including prefix allocation and administration services, is provided to RAs by the Directory Manager.

#### 9.1.2 Using a local handle service run by the DOI Directory Manager {#9.1.2}

If an RA decides to use a service run by the Directory Manager, and is ready for a prefix, or block of prefixes, the RA must contact the Directory Manager to initiate their service. Each prefix or set of prefixes will have a user name and password associated with them, which is required for authentication when depositing DOI names.

Whichever type of service an RA chooses to use, it is essential to decide on what to identify at what levels of granularity, what information to associate with each identifier, work flow, permissions, etc. at the outset. At the current time there is no metadata database or mechanism for depositing metadata in a service run by the Directory Manager. See Section [9.14](#9.1.4) below for an example of how an RA might want to configure their own metadata deposit process.

#### 9.1.3 Running a local handle service {#9.1.3}

If an RA chooses to install and use a local handle service (LHS) for DOI names, the Directory Manager will still create the prefixes, however, there are additional steps on the part of the RA.

The first step is to download the server distribution (current version is 8.1, December 2015, is available for download from the [Handle.Net Registry](http://www.handle.net/download_hnr.html)). Installation instructions are included in the README.txt file that comes with the distribution. To set up and manage a local handle service takes a system administrator-type person. The handle server is written in Java and can run on Windows or Unix, however it is recommended the computer be of server-type quality. The handle server must have an Internet presence; that is, it cannot be run behind a firewall unless the ports (2641 and 8000) required by the handle server are open to incoming and outgoing requests. There should not be any other servers listening to those ports. and no other process is running on those ports.

The installation process will create a file called sitebndl.bin that will contain the service information for the local handle service. As per the instructions in the distribution, RAs will need to send the file to hdladmin@cnri.reston.va.us (or directly to the Directory Manager at [jeuler@cnri.reston.va.us](mailto:jeuler@cnri.reston.va.us)). Name, organization name, and that fact that the request is coming from an IDF RA is important so that the Directory Manager knows to create prefixes that begin with 10. Each prefix is created in the GHR. The prefix includes information that uniquely identifies each local handle service, such as IP address and the server's public key. The GHR uses this information in determining where to send DOI name resolution requests.

At this point there maybe some discussion on the type of authentication an RA will want to use. The Handle System uses either private/public key or secret key. Permission to create DOI names is at the prefix level but each DOI name has its own administrator (usually a reference to a group in the prefix record). Additional technical information can be found in the [Handle.Net Technical Manual](http://www.handle.net/tech_manual.html).

It is IDF policy that RAs will be responsible for modification of the configuration of their handle servers to allow a secondary server installation at CNRI. The secondary server will house a complete database of the RA server's DOI names. This requires a minor change in the server's configuration file. This will be coordinated by the Directory Manager. After setup is complete a cron job will be created to check to see if the secondary server is able to connect to your server. If there is problem with the connection (i.e. your server is shut down) the RA will be notified by email and expected to correct the problem as soon as possible.

Choosing the option of running your own local handle service will require more technical expertise on the part of the RA. If you have technical difficulties, the Directory Manager will be there to help. It is not much different than setting up any other kind of server, other than that it will probably be less familiar to system administrators than web servers or mail servers.

Running a local handle service may the best choice for RAs who wish to have immediate control of business-critical infrastructure components such as DOI registration; RAs who plan to implement high performance standards for administration and resolution by choosing levels of performance appropriate to their application; RAs who are willing and able to provide IDF with an escrow copy of the required DOI deposit data without impeding their business; and RAs who wish to move rapidly to an "operating federation" structure, where the bulk of costs and operational income are borne by the RAs rather than by IDF. The fundamental assumption that "membership fees support development until operating federation can take over" is assumed to be still valid, but IDF seeks to encourage the migration.

If an RA is interested in running a local handle service it is wise to schedule a technical overview meeting with CNRI staff. To set this up or to answer any questions please send email to the Directory Manager at [jeuler@cnri.reston.va.us](mailto:jeuler@cnri.reston.va.us).

#### 9.1.4 Registering a DOI name with associated metadata {#9.1.4}

Registration Agencies support registration of DOI names with an associated metadata declaration, i.e. using a DOI® Application Profile. Individual Registration Agencies develop their own workflow and procedures for the management of DOI name registration, and metadata deposit and maintenance, and provide their own information to their community of registrants.

The following procedure is as an example of the current process followed by an individual RA for the registration of DOI names with declared metadata. This procedure allows for the batch registration of DOI names and associated metadata records into a DOI System Central Metadata Directory run by the Registration Agency; this directory can subsequently be queried. The batch file format currently in use is XML as defined by a specific XML Schema, and submission is via HTTP POST. Security is HTTP basic authentication; PGP encryption will be added later. Batch receipt is confirmed to the sender via email.

**_Metadata Creation_**: The Registrant prepares XML batch files in accordance with the Schema; these are further constrained by a set of rules for the data, which define the expected content of each metadata element. An XML batch may contain metadata for hundreds of DOI names. The development and implementation of quality control measures used to ensure the validity of the metadata content are the responsibility of the Registrant. Quality control and data checking can be assisted by processes put in place in the RA's metadata collection process.

**_Metadata Collection_**: The XML is validated upon receipt against the Schema. If the XML does not parse, the batch is refused; the Registrant must correct the XML and resubmit the batch. XML batches are submitted to a named HTTP server via HTTP POST to a Java "servlet", which parses and validates the XML file, and notifies the Registrant in real time whether or not the XML is valid and has been accepted. The submission process captures and verifies a DOI system prefix holder login and password prior to validating the XML. The XML files themselves contain timestamps used as identifiers of the batch; should the Registrant so wish, each DOI name record may have its own timestamp.

**_DOI Name Deposit_**: The servlet then deposits each DOI name and its corresponding URL into the DOI system, adding timestamp data value. If the DOI name is not new and therefore already exists in the DOI system, the timestamp is key to determining whether the DOI name data being contributed is newer than the data that is already in the system; if so, the existing DOI name data is updated. A log file also written in XML is created for each batch, indicating the total number of DOI name records in the batch, the number of successful deposits into the DOI system, and the number of failures. For each failure, the DOI name is provided, along with the reason for the failure. While DOI system failures may be the result of system errors, they are most typically caused by an attempt to overwrite existing DOI name data with older data.

**_Metadata Database Record Generation_**: The original XML batch files, along with the log files for the batches, are made available daily to the metadata database deposit process, where they are indexed and then made available for searching. A final XML log file is generated to indicate the success of the database deposit (again, failures are due primarily to network or system errors) combined with those from the DOI name deposit process, and this combined XML batch diagnostic is emailed to the Registrant. The entire metadata collection process is expected to be completed and reported to the Registrant in as close to real time as possible; 24 hours is currently seen as a reasonable target time. However, when Registrants initially make deposits, there are large amounts of legacy material and coordination is needed on when the legacy batches are deposited or system performance can be affected.

**_Data Querying_**: The metadata database (MDDB) may be queried by submitting a batch file of known metadata fields in a specified format, currently pure ASCII text on separate lines, with fields delimited by vertical bars. The batch interface will query the database and return the corresponding DOI names (if known), or a diagnostic message. Batch query files are submitted by HTTP POST to a named HTTP server.

#### 9.1.5 Transferring DOI names from one registrant to another {#9.1.5}

If a compilation of multiple assigned DOI names (for example, a journal containing a collection of articles; an imprint; a recording catalogue; etc.ss) is transferred from one RA to another, the DOI names within that compilation are transferred as well. Each RA will develop appropriate procedures for proper transfers. Transfers may be a sale, or any form of exchange, commercial or otherwise. If the new owner is not already an RA, special arrangements may have to be made appropriate to the case; consult the IDF for guidance if necessary.

The individual DOI names stay the same, i.e., what the DOI name identifies is not changed. _This is a fundamental requirement_. The DOI name prefix does NOT change (recall that a prefix is not meaningful, but is initially assigned to a registrant for convenience in generating DOI names only; no reverse look-up can be inferred to a prefix). The administrative value is changed in order for the new owner to modify its data values (most likely the URL value). Both registrants involved in the transfer need to send email to the Directory Manager at [jeuler@cnri.reston.va.us](mailto:jeuler@cnri.reston.va.us) giving permission for the transfer. The Directory Manager will assist RAs to ensure an efficient and successful outcome.

#### 9.1.6 Transferring DOI names from one Registration Agency to another {#9.1.6}

The IDF's Policy on [Registration Agency collaboration](/resources/121210_IDF_RA_CollaborationPolicyv3.pdf) notes that customers may, if they wish, use more than one RA service: but note that RA services vary and customers won't necessarily have access to the same services if they move.

The foremost technical issue in transfer is the one-to-one relation of prefix to local handle service. Therefore, RAs should allocate at least one separate prefix for each customer, and where appropriate more than one, since the fundamental constraint is that all DOI names under a given prefix must reside in the same handle service (this general architecture is a logical and efficient approach to a distributed service and is far from unique to the Handle System).

Moving an entire prefix worth of DOI names from one service to another is easy. Splitting control of a prefix between two administrative bodies who both use the same handle service (i.e., when it has not been possible to foresee a split by issuing seperate prefixes) is also possible but more complex; in general there are two solutions: (1) leave it with one or the other service (or the DOI default handle service run by CNRI on behalf of IDF) and split up the administration, such that the managers of one service allowed the 'foreign' admins access; or (2) alias all the DOI names under the old prefix to DOI names under a new prefix controlled by the new RA. The old DOI names don't have to be maintained other than ensuring resolution to the new DOI names.

All of the above is strictly from a DOI system point of view and does not address any internal workflow issues or value-added services that the RAs provide that interact with handle administration, which would of course be specific to the RA.

#### 9.1.7 DOI system® error messages {#9.1.7}

Actions which result in an attempted resolution not being successful result in error messages. These can be provided by Registration Agencies, or by the DOI system centrally. It is likely that most error reports will go to RAs. The following shows a typical error message; RAs may use similar wording and procedures in their own services.

Resolving a DOI name that is not in the system returns a "DOI Name Not Found" error page to the user. The page directs users to the DOI help address (doi-help@doi.org.). If the problem is with the Handle System, CNRI responds to the sender appropriately. If the DOI name is not found, receipt of the error message is acknowledged via a response page with the following:

"This DOI cannot be found in the DOI System. Possible reasons are:

*   The DOI is incorrect in your source. Search for the item by name, title, or other metadata using a search engine.
*   The DOI was copied incorrectly. Check to see that the string includes all the characters before and after the slash and no sentence punctuation marks.
*   The DOI has not been activated yet. Please try again later, and report the problem if the error continues."

To further assist users, the error response system checks to see if a user has attempted to resolve a DOI prefix only, or a DOI that contains multiple slashes or a trailing slash which might be causing the error, and advises the user accordingly via a customized response page.

CNRI forwards the sender's message to the RA. The RA will take appropriate action, and see that the sender and CNRI (via cc's to the doi-help@doi.org address) are kept informed of the action taken. In some cases, a servlet is used to redirect the error to the appropriate RA.

### 9.2 Handle System® {#9.2}

The Handle System® is a component of the Digital Object Architecture developed by [CNRI](http://www.cnri.reston.va.us/), and currently administered and managed by the [DONA Foundation](https://dona.net). It provides a means for uniquely identifying Digital Objects ("DOs") and other network resources and for using the identifiers, known as handles, to store and retrieve records containing state information about the DOs. It also provides an administrative mechanism for managing identifiers over time. The DOI system uses the Handle System and inherits the underlying policies and procedures of that system.

#### 9.2.1 Requirements for operating a local handle service {#9.2.1}

Maintaining overall integrity of the Handle System entails ensuring that each of the following conditions is met by administrators, who must agree to operate their resolution services during the period while the authorization is in effect. The term "system" as used below refers to those components run by each administrator, and the interaction of these components with the Global Handle Registry (GHR) and the users of the local handle service. Operational goals for administrators include:

*   Ensuring compatibility and smooth interaction among system components;
*   Maintaining consistency and reliability in service performance;
*   Conducting proper system management and performance tracking;
*   Offering non-interrupted access to the GHR;
*   Taking adequate system security measures.

#### 9.2.2 Requirements for providers of resolution services {#9.2.2}

Resolution service providers are responsible for taking the necessary steps to ensure the proper maintenance of their DOI prefixes and DOI names, including the following:

*   All prefixes must be registered in the GHR, including the designation of an Administrator for each prefix.
*   In those cases where resolution of all prefixes derived from a primary prefix is stated by the Administrator to occur at the same site as the primary prefix, the GHR will record that default site and that Administrator for all their prefixes.
*   Secure maintenance of Private Keys must be ensured by each Administrator.
*   Timely reporting must be made by the Administrator of service configuration changes, such as a list of prefixes and the current type descriptions.

A requirement for compatibility test suite compliance covering performance, security and operations may be introduced.

#### 9.2.3 Developing Handle System client software {#9.2.3}

An organization or individual developing Handle System client components is encouraged to use the CNRI [client software](http://www.handle.net/client_download.html) and the standard interfaces supplied with it, and, in particular, shall not interfere with the normal operation of a local handle service or other client applications in interacting with the Handle System client software or the GHR. In the event an organization or individual wishes to use its own interface software, it is their responsibility to ensure that these interfaces remain compatible with the current Handle System interface specification.

### 9.3 DOI Data Dictionary

RAs who require additional terms to be added to kernel or other schemas should follow the procedures for managing DOI metadata schemas described in Chapter 4 Data Model, [Section 4.3.3](/the-identifier/resources/handbook/4_data_model#4.3.3).

RAs wishing to develop mappings for additional (non-Kernel) metadata terms and schemas are strongly encouraged to follow the same procedure for these too, so that they may be added to the DOI Data Dictionary consistently. Terms will also be added into the [VMF](../VMF/index.html) as part of IDF's activities: RAs do not have to use the procedure described at VMF Process for Registering New Terms or pay fees described there, although the technical process by which Terms are registered and mapped to other Terms in the VMF is the same.

RAs wishing to develop de novo schemes and new metadata applications are also encouraged to take advantage of the IDF's metadata consultancy which is available to all members at no charge.