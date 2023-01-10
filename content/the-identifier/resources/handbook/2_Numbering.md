+++
title = "Handbook Chapter 2: Numbering"
date = "2017-03-21"
showdate = true
draft = false
# the following section is for the header
maintext = "Numbering"
imagetop = "The Identifier"
imagemain = "DOI Handbook"
type = "handbook"
+++

2 Numbering
-----------

_This chapter of the Handbook defines the syntax for a DOI® name, which is used for the identification of an object of any material form (digital or physical) or an abstraction (such as a textual work) where there is a functional need to distinguish it from other objects. The DOI® System can be used in conjunction with another identifier scheme (for example, to provide additional functionality where this is not already available), and the character string of that other scheme can be integrated into the DOI system through the DOI metadata record and/or the DOI syntax. Character sets, case sensitivity, uniqueness, and Internet identifier specifications are also discussed._

**[2.1](#2.1)** Assigning numbers  
**[2.2](#2.2)** Syntax of a DOI name  
      **[2.2.1](#2.2.1)** General characteristics  
      **[2.2.2](#2.2.2)** DOI prefix  
      **[2.2.3](#2.2.3)** DOI suffix  
**[2.3](#2.3)** Assignment of DOI name  
      **[2.3.1](#2.3.1)** Principles of assignment  
      **[2.3.2](#2.3.2)** Granularity  
      **[2.3.3](#2.3.3)** Changed items  
      **[2.3.4](#2.3.4)** Description  
      **[2.3.5](#2.3.5)** Uniqueness  
      **[2.3.6](#2.3.6)** Persistence  
**[2.4](#2.4)** Case sensitivity  
**[2.5](#2.5)** Character sets and encoding  
      **[2.5.1](#2.5.1)** Encoding principles  
      **[2.5.2](#2.5.2)** Encoding specifications  
            **[2.5.2.1](#2.5.2.1)** UTF-8 Encoding  
            **[2.5.2.2](#htmlencoding)** Encoding recommendations when used in URLs  
            **[2.5.2.3](#2.5.2.3)** Encoding issues  
            **[2.5.2.4](#2.5.2.4)** Mandatory and recommended encoding for DOI deposit and URLs  
**[2.6](#2.6)** Visual presentation and other representation of DOI names  
      **[2.6.1](#2.6.1)** Screen and print presentation  
      **[2.6.2](#2.6.2)** URI presentation  
      **[2.6.3](#2.6.3)** URN presentation  
      **[2.6.4](#2.6.4)** Other representations  
      **[2.6.5](#2.6.5)** Principles  
**[2.7](#2.7)** Relationship between the DOI system and other ISO identifier schemes  
      **[2.7.1](#2.7.1)** A brief outline  
      **[2.7.2](#2.7.2)** Principles  
      **[2.7.3](#2.7.3)** Expressing the relationship of DOI names to other identifier schemes  
            **[2.7.3.1](#2.7.3.1)** Existing identifier within other identifier schemes  
            **[2.7.3.2](#2.7.3.2)** Incorporation of an existing identifier into a DOI name  
            **[2.7.3.3](#2.7.3.3)** Additional functionality  
**[2.8](#2.8)** Relationship between the DOI system and other (non-ISO) identifier schemes  
      **[2.8.1](#2.8.1)** Using DOI names to express relationships with existing legacy identifiers  
      **[2.8.2](#2.8.2)** Benefits of using legacy identifiers with DOI names  
      **[2.8.3](#2.8.3)** Representation of DOI in other identifier schemes  
**[2.9](#2.9)** DOI names and check digits  
**[2.10](#2.10)** shortDOI service  
**[2.11](#2.11)** The DOI system and Internet identifier specifications

### 2.1 Assigning numbers {#2.1}

Each DOI® name is a unique "number", assigned to identify only one entity. Although the DOI system will assure that the same DOI name is not issued twice, it is a primary responsibility of the Registrant (the company or individual assigning the DOI name) and its Registration Agency to identify uniquely each object within a DOI name prefix.

Uniqueness (specification by a DOI name of one and only one referent) is enforced by the DOI system. It is desirable that two DOI names should not be assigned to the same thing.

The DOI system is designed in such a way as to make it as simple as possible for anyone to name uniquely any item of intellectual property — tangible or intangible, in physical or digital form. Existing identifiers can be used as part of the DOI name or DOI record, which makes it easy for registrants to issue DOI names to all their existing "content assets". It is recommend that prefixes are assigned at an appropriate level to deal with an organization's business requirements. Typically, an RA may issue one prefix per customer, but it might also be appropriate to issue a prefix per brand, or to some recognizable cluster of products (e.g. a publisher imprint).

However, the DOI system goes much further than most existing identifier schemes, in being able to identify much smaller "fragments" of content — and types of intellectual property for which no existing identification scheme (or "legacy identifier") exists.

### 2.2 Syntax of a DOI name {#2.2}

This section of the Handbook defines the syntax for a DOI name, which is used for the identification of an object of any material form (digital or physical) or an abstraction (such as a textual work) where there is a functional need to distinguish it from other objects. The DOI system can be used in conjunction with another identifier scheme (for example, to provide additional functionality, such as resolution, where this is not already available), and the character string of that other scheme can be integrated into the DOI system through the DOI metadata record and/or the DOI syntax.

The syntax of the DOI name was standardized initially as ANSI/NISO Z39.84-2000 (reconfirmed 2005, 2010) and then as part of ISO 26324 (2010).

In use, the DOI name is an "opaque string" or "dumb number" — nothing at all can or should be inferred from the number in respect of its use in the DOI system. The only secure way of knowing anything about the entity that a particular DOI name identifies is by looking at the metadata that the Registrant of the DOI name declares at the time of registration. This means, for example, that even when the ownership of a particular item changes, its identifier remains the same — in perpetuity. This is why the DOI name is called a "persistent identifier".

#### 2.2.1 General characteristics {#2.2.1}

The DOI syntax shall be made up of a DOI prefix and a DOI suffix separated by a forward slash.

There is no defined limit on the length of the DOI name, or of the DOI prefix or DOI suffix.

The DOI name is case-insensitive and can incorporate any printable characters from the legal graphic characters of Unicode. Further constraints on character use (e.g. use of language-specific alphanumeric characters) can be defined for an application by the ISO 26324 Registration Authority.

The combination of a unique DOI prefix (assigned to a particular DOI registrant) and a unique DOI suffix (provided by that registrant for a specific object) is unique, and so allows the de-centralized allocation of DOI names.

The DOI name is an opaque string for the purposes of the DOI system. No definitive information may be inferred from the specific character string of a DOI name. In particular, the inclusion in a DOI name of any registrant code allocated to a specific registrant does not provide evidence of the ownership of rights or current management responsibility of any intellectual property in the referent. Such information may be asserted in the associated metadata.

#### 2.2.2 DOI prefix {#2.2.2}

General
: The DOI prefix shall be composed of a directory indicator followed by a registrant code. These two components shall be separated by a full stop (period).

Directory indicator
: The directory indicator shall be "10". The directory indicator distinguishes the entire set of character strings (prefix and suffix) as digital object identifiers within the resolution system.

Registrant code
: The second element of the DOI prefix shall be the registrant code. The registrant code is a unique string assigned to a registrant.

{{% example %}}
**EXAMPLE 1**

`10.1000` DOI prefix comprising a directory indicator "10" followed by registrant code "1000"

The registrant code may be further divided into sub-elements for administrative convenience if desired. Each sub-element of the registrant code shall be preceded by a full stop. Such sub-division implies no hierarchical relationship; each registrant code, whether subdivided or not, has equal status in the DOI system. However a sub divided registrant code can have technical resolution implications. It is recommended that registrants consult the ISO 26324 Registration Authority for further information about assignment of registrant codes.
{{% /example %}}

{{% example %}}
**EXAMPLE 2**

`10.1000.10` DOI prefix in which the registrant code has a subdivision "10" (cf. Example 1).
{{% /example %}}

Changes
: Once a DOI name has been assigned it shall not be changed, regardless of any changes in the ownership or management of the referent.

: NOTE: The original registrant might no longer have any role in maintaining a DOI name and its associated records even though its registrant code remains a permanent element of that DOI name.

#### 2.2.3 DOI suffix {#2.2.3}

The DOI suffix shall consist of a character string of any length chosen by the registrant. Each suffix shall be unique to the prefix element that precedes it. The unique suffix can be a sequential number, or it might incorporate an identifier generated from or based on another system used by the registrant (e.g. ISAN, ISBN, ISRC, ISSN, ISTC, ISNI; in such cases, a preferred construction for such a suffix can be specified, as in Example 1).

{{% example %}}

**EXAMPLE 1**

`10.1000/123456` DOI name with the DOI prefix "10.1000" and the DOI suffix "123456".

**EXAMPLE 2**

`10.1038/issn.1476-4687`  DOI suffix using an ISSN. To construct a DOI suffix using an ISSN, precede the ISSN (including the hyphen) with the lowercase letters "issn" and a period, as in this hypothetical example of a DOI for the electronic version of _Nature_.
{{% /example %}}


### 2.3 Assignment of DOI name {#2.3}

#### 2.3.1 Principles of assignment {#2.3.1}

A DOI name shall not be used as a replacement for other ISO identifier schemes. See Section [2.7](#2.7) for further details.

A DOI name can be assigned to any object whenever there is a functional need to distinguish it from other objects.

"DOI" is construed as "digital identifier of an object" (not "identifier of a digital object").

Rules for assignment of DOI names can include a functional definition of scope based on appropriate metadata through a DOI application profile.

#### 2.3.2 Granularity {#2.3.2}

A DOI name can be assigned to any object, regardless of the extent to which that object might be a component part of some larger entity. DOI names can be assigned at any desired degree of precision and granularity that a registrant deems to be appropriate.

For example, for granularity in textual materials, separate DOI names can be assigned to a novel as an abstract work, a specific edition of that novel, a specific chapter within that edition of the novel, a single paragraph, a specific image, or a quotation, as well as to each specific manifestation in which any of those entities are published or otherwise made available.

#### 2.3.3 Changed items {#2.3.3}

The choice of whether to assign a new DOI name to a changed item which already has a DOI name is one of functional granularity: it should be possible to identify an entity whenever it needs to be distinguished. The IDF does not itself dictate any rules on this. Individual Registration Agencies may decide to adopt specific rules appropriate for their community.

#### 2.3.4 Description {#2.3.4}

The assignment of a DOI name requires that the registrant provide metadata describing the object to which the DOI name is being assigned. The metadata shall describe the object to the degree that is necessary to distinguish it as a separate entity within the DOI system.

#### 2.3.5 Uniqueness {#2.3.5}

Each DOI name shall specify one and only one referent in the DOI system. While a referent can be specified by more than one DOI name, it is recommended that each referent has only one DOI name.

#### 2.3.6 Persistence {#2.3.6}

No time limit for the existence of a DOI name shall be assumed in any assignment, service or application.

A DOI name and its referent are unaffected by changes in the rights associated with the referent, or changes in the management responsibility of the referent.

The DOI system provides a means to continue interoperability through exchange of information about identified entities (at a minimum, the DOI name and a description of the referent).

### 2.4 Case sensitivity {#2.4}

DOI names are case insensitive, using ASCII case folding for comparison of text. (Case insensitivity for DOI names applies only to ASCII characters. DOI names which differ in the case of non-ASCII Unicode characters may be different identifiers.) 10.123/ABC is identical to 10.123/AbC. All DOI names are converted to upper case upon registration, which is a common practice for making any kind of service case insensitive. The same is true with resolution. If a DOI name were registered as 10.123/ABC, then 10.123/abc will resolve it and an attempt to register 10.123/AbC would be rejected with the error message that this DOI name already existed.

Although from a character encoding viewpoint suffixes are case sensitive, e.g. 10.123/ABC is different from 10.123/AbC and the two could be distinguished as different identifiers, the IDF decided to remove case sensitivity, after a detailed review of the consequences. The Handle System is configurable by service so as to be either case sensitive or case insensitive and therefore allows this. This restriction has been implemented from an early stage, and IDF agencies have not introduced any cases of two DOI names distinguishable only by ASCII case resolving to the same thing.

The advantages of case sensitivity (librarian and publisher practice, human readability and expectations) were outweighed by considerations of data integrity. Case sensitivity practice across Internet applications varies: DNS is not, the rest of URLs are except sometimes they aren't (this depends on the server), Unix vs PC/Mac file names (Microsoft Windows in general is not case-sensitive, Unix operating systems are always case sensitive), markup language tags, etc. can all cause unexpected problems and one cannot guarantee that any particular piece of software will respect case sensitivity and not conflate two DOI names intended to be different. Some search engines and directories are partially case sensitive. Different web browsers may differ in case sensitive handling (web browser developers have advised that "authors should not rely on case-sensitivity as a way of creating distinct identifiers, unless they are designing solely for a truly standards-compliant browser").

This argued in favour of case insensitivity being the safer, and more robust, option for future evolution and development of the DOI system.

### 2.5 Character sets and encoding {#2.5}

#### 2.5.1 Encoding principles {#2.5.1}

DOI names may incorporate any printable characters from the Universal Character Set (UCS-2), of ISO/IEC 10646, which is the character set defined by Unicode. The character set encompasses most characters used in every major language written today. However, because of specific uses made of certain characters by some Internet technologies (the use of pointed brackets < > in xml for example), there may some effective restrictions in day-to-day use (see _below_).

When thinking about prefixes, suffixes and character sets, it is important to distinguish the DOI system from the underlying technology, the Handle System. The DOI system is a Handle System implementation. Current usage (though not the only possible or potential usage) takes place almost entirely within the context of the World Wide Web (which is not the same as the Internet) and is governed by an evolving set of IDF policies.

**Prefix/suffix.** Neither the Handle System nor DOI system policies, nor any web use currently imaginable, impose any constraints on the suffix, outside of encoding (see below). Handle syntax imposes two constraints on the prefix — both slash and dot are "reserved characters", with the slash separating the prefix from the suffix and the dot used to extend sub prefixes. The root administrator for the Handle System has reserved all prefixes starting with "10." (for example 10.1000, 10.1000.1, 10.23) for the IDF to use for DOI names.

**Encoding.** The Handle System at its core uses UTF-8, which is a Unicode implementation and so in its pure form has no character set constraints at all: any character can be sent to, stored in, and retrieved from a handle server. The IDF imposes no additional character set constraints. In practice, though, there are many character set constraints enforced by the current web environment, depending on the individual user's context — for example, what kind of browser is being used. (This is something of a moving target — does your current browser display kanji characters, for example? Do you know?). A list of current encoding recommendations is provided in the next section.

**Implementation.** It is essential to consider standards and the practical realities of implementation together. So, for example, it is imperative to "hex encode" the character "# " in a URL, since this character is used to indicates the beginning of a URL fragment. The character means nothing special to the Handle System or in DOI name syntax: nonetheless, a handle contained within a URL must have the # character encoded, otherwise a browser will abbreviate the handle at the # sign. This is true across all web implementations. The need to "hex encode" other characters, for example "<" or ">", varies with a particular browser implementation. Such required encoding in the DOI name syntax is considered within the NISO standard. In a more general sense, any implementation of identifiers in a digital context needs to consider likely encoding issues that may be encountered, and should address character set constraints and the need to move those characters through environments such as the web in such a way that they pass through unaltered.

#### 2.5.2 Encoding specifications {#2.5.2}

Except for the specific requirements imposed by this standard (such as use of Unicode and reserved characters), no restrictions are imposed or assumptions made about the characters used in DOIs. This section discusses some encoding issues that arise when using DOIs in specific application contexts like URLs and with the HTTP protocol. Other application contexts in which DOIs are used may have similar types of requirements or restrictions. However, such requirements for encoding or restrictions on the use of particular characters only apply when DOIs are used within those particular application contexts. They are not part of the DOI syntax itself as defined by this document.

For directions on presenting DOI names in other forms, including URI and URN, see the Section [2.6](#2.6) and see also the factsheet [DOI® System and Internet Identifier Specifications](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications)."

##### 2.5.2.1 UTF-8 Encoding {#2.5.2.1}

The Handle System specifies UTF-8 as the encoding for DOI strings. ASCII characters are preserved under UTF-8 encoding. No changes need to be made to ASCII characters to comply with UTF-8 encoding. The default encoding of Unicode is that each character consists of 16 bits (2 octets). UTF-8 is a variation of the Unicode encoding that allows characters to be encoded in terms of one to six octets. UTF-8 encoding plays a role when non-ASCII characters are used. For example, the Japanese word "nihongo" is written as:

**日本語**

The Unicode sequence representing the Han characters for "nihongo" is: 65E5 672C 8A9E. These may be encoded in UTF-8 as follows: E6 97 A5 E6 9C AC E8 AA 9E. For further information on UTF-8 see "UTF-8, A Transform Format for Unicode and ISO10646", [RFC 2044](http://tools.ietf.org/html/rfc2044), October 1996.

Consult the latest version of [Unicode](http://www.unicode.org/) for further information. Unicode is a trademark of Unicode, Inc. The Unicode Standard imposes additional constraints on implementations of ISO/IEC 10646:2003, the Universal multiple-octet coded character set (usually referred to as the Universal Character Set, UCS).

##### 2.5.2.2 Encoding recommendations when used in URLs {#2.5.2.2}

Current Web browser technology requires additional functionality to allow the browser to make full use of DOIs: additional browser features are necessary. It is anticipated that features supporting resolution will commonly be built into browsers in the future.

There is a freely available "resolver plug in" for Firefox that can be downloaded from [Handle.Net](http://handle.net/firefox_hdlclient.html). The plug-in extends the browser's functionality so that it understands the Handle protocol.

Alternatively, without the need to extend the Web browsers' capability, DOIs may be structured to use the default public DOI proxy server https://doi.org (note that https is preferred over http, and that dx.doi.org, an earlier syntax, will remain fully supported but is no longer preferred). The resolution of the DOI in this case depends on the use of URL syntax. For example, "doi:10.123/456" would be written as https://doi.org/10.123/456.

DOIs are also primarily used in HTML pages. The DOI 10.1006/rwei.1999".0001 as a link in an HTML page would be:

<a href="https://doi.org/10.1006/rwei.1999%22.0001">10.1006/rwei.1999%22.0001</a>

Note that " has been encoded (see next section) to distinguish the DOI in the URL from the surrounding text. The DOI is displayed in its encoded form since users may type the DOI directly into their browsers.

##### 2.5.2.3 Encoding issues {#2.5.2.3}

There are special encoding requirements when a DOI is used with HTML, URLs, and HTTP. The syntax for Uniform Resource Identifiers (URIs) is much more restrictive than the syntax for the DOI. A URI can be a Uniform Resource Locator (URL) or a Uniform Resource Name (URN).

Hexadecimal (%) encoding must be used for characters in a DOI that are not allowed, or have other meanings, in URLs or URNs. Hex encoding consists of substituting for the given character its hexadecimal value preceded by percent. Thus, # becomes %23 and https://doi.org/10.1000/456#789 is encoded as https://doi.org/10.1000/456%23789. The browser does not now encounter the bare #, which it would normally treat as the end of the URL and the start of a fragment, and so sends the entire string off to the DOI network of servers for resolution, instead of stopping at the #. Note that the DOI itself does not change with encoding, merely its representation in a URL. A DOI that has been encoded is decoded before being sent to the DOI Registry. At the moment the decoding is handled by the proxy server https://doi.org/. Only unencoded DOIs are stored in the DOI Registry database. For example, the number above is in the DOI Registry as "10.1000/456#789" _and not_ "10.1000/456%23789". The percent character (%) must always be hex encoded (%25) in any URLs.

There are few character restrictions for DOI number strings per se. When DOIs are embedded in URLs, they must follow the URL syntax conventions. The same DOI need not follow those conventions in other contexts.

##### 2.5.2.4 Mandatory and recommended encoding for DOI deposit and URLs {#2.5.2.4}

Tables 1 and 2 summarize the encoding guidelines for DOI. URLs have the most restricted set of characters. Table 1 lists the characters that should always be hex encoded. Table 2 lists additional characters where it is recommended that characters be replaced by hex-encoding. The distinction between the lists is between practical experience with current web browsers and the more formal specification of URL syntax. In the DOI Directory all characters represent themselves.

**Table 1: Mandatory Encoding**

Character|Encoding
---|---
%|(%25)
"|(%22)
#|(%23)
SPACE|(%20)
?|(%3F)

**Table 2: Recommended Encoding**

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

### 2.6 Visual presentation and other representation of DOI names {#2.6}

#### 2.6.1 Screen and print presentation {#2.6.1}

When displayed on screen or in print, a DOI name is preceded by a lowercase "doi:" unless the context clearly indicates that a DOI name is implied. The "doi:" label is not part of the DOI name value.

{{% example %}}

**EXAMPLE**

The DOI name "10.1006/jmbi.1998.2354" is displayed and printed as "doi:10.1006/jmbi.1998.2354".
{{% /example %}}


#### 2.6.2 URI presentation {#2.6.2}

The use of the lowercase string "doi" complies with the IETF specification, RFC 3986, for representation as a URI (uniform resource identifier), such as "ftp:" and "http:". When displayed in web browsers, the DOI name can be attached to the address for an appropriate proxy server, to enable resolution of the DOI name via a standard web hyperlink. To resolve a DOI via a standard web hyperlink, the DOI name itself should be appended to the address for the proxy server.

{{% example %}}

**EXAMPLE**

The DOI name "10.1006/jmbi.1998.2354" would be made an actionable link as "https://doi.org/10.1006/jmbi.1998.2354".
{{% /example %}}

DOI names so represented in a URL and transported by the HTTP protocol are constrained to follow standard IETF guidelines for URI representations. The syntax for URIs is more restrictive than the syntax for DOIs; some characters are reserved and will need percent-encoding.

NOTE: Certain client or server software might be able to process DOIs using native resolution technology (i.e. doi:10.1006/jmbi.1998.2354 would be interpreted by the browser and automatically resolved without the addition of the proxy server address).

NOTE: The DOI system is as independent as possible from specific technology implementations. For web applications, the DOI name may be expressed as a #### HTTP URI. The method for doing so is simply to prepend the DOI with https://doi.org/ and (where necessary) use the hexadecimal (%) encoding required for URLs or URNs, as explained in Section 2.5.2.4 above.

For further information on the use of this web resolution of DOI names, see Chapter 3, [Resolution](/the-identifier/resources/handbook/3_resolution). For information on tools to facilitate this, see [DOI Tools](../tools.html). For information on DOI in relation to Internet identifier specifications, see the DOI system Factsheet [DOI System and Internet Identifier Specifications](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications).

#### 2.6.3 URN presentation {#2.6.3}

To enable the use of DOIs in workflows that have already standardized on URNs, the DOI proxy servers understand the substitution of a colon in place of the initial slash in a DOI name. DOI names may therefore be expressed as URNs in the doi.org domain by writing, for example, the DOI name 10.123/456 in the form https://doi.org/urn:doi:10.123:456. Note, however, that a DOI suffix is allowed to contain other slashes, and where these occur they must be percent-encoded rather than replaced with a colon: for example, the DOI name 10.123/456ABC/zyz would become https://doi.org/urn:doi:10.123:456ABC%2Fzyz, with the final slash character encoded as %2F.

#### 2.6.4 Other representations {#2.6.4}

DOI names can be represented in other forms in certain contexts (e.g. in the info URI scheme RFC 4452).

Characters which cannot be handled directly in a specific network or reference context, or where ambiguity can arise (e.g. minus sign, the hyphen, and the en-dash all look similar on the screen but carry different character values) should be avoided or encoded in an appropriate way (e.g. for URLs convert to UTF-8 and then percent-encode).

DOI names may also be presented via the shortDOI service ([shortDOI.org](http://shortdoi.org), see [2.10](#2.10) below) where human readability or minimising the length of the identifier string are important considerations.

Specific representations may be agreed to meet special technical requirements. For example, the ANSI standard "[Digital Program Insertion Cueing Message for Cable](https://www.scte.org/documents/pdf/Standards/Top%20Ten/ANSI_SCTE%2035%202013.pdf)" (SCTE 35:2013) defines (among other things) the standard method for cable TV systems to include EIDR DOI names in-band with the programs being broadcast. It uses a compact lossless EIDR representation rather than the full ASCII DOI string (Table 8-7). This also makes use of the resolvability of DOI names, suggesting that IDs so carried can be resolved via an out-of-band mechanism to collect more data.

#### 2.6.5 Principles {#2.6.5}

Since most publication of content is via a mix of digital and print media, there are often requirements for a DOI name to be reproduced in print. A publisher might put the DOI name in the document it names, and insure that the DOI name appears whenever the item is downloaded or printed. It also might appear in the print version of a digital version. If the DOI name is represented by a button on a Web page, the Web browser will display the full DOI name at the base of the browser window when the cursor is moved over the button.

Whereas in a digital context a DOI name might be assumed to be contextualized and updated (the active link it is referencing can be "wired" correctly), a print version cannot be updated or changed once released. For example, showing DOI names in print for journal articles tells people what an article's DOI name is, but it doesn't tell people how to access it on the Web; readers will not necessarily know that the DOI name is actionable. To do that, one may print the DOI name in a readily recognised form such as the http proxy server URL form e.g. https://doi.org/10.1002/prot.9999. There are however a couple of reasons to hesitate showing the URL form: the URL is not the article's identifier, the DOI name is; and maybe the doi.org form of the URL will not be the most persistent form, keeping in mind that these print copies will be around and immutable for many decades, even centuries.

In practice one can feel safe in using the doi.org formulation. It should continue to work for many years even if and when it is common to use DOI names in some other formulation. But if we are talking about centuries we will have moved beyond http:// as the most recognised route of access. So while it may be awkward, we recommend some convention of showing both the plain DOI name and a way to resolve it online (a shorthand way of saying "the DOI name for this article is 10.1002/prot.999 and current information may be found on the web through https://doi.org/10.1002/prot.999" or "...available via https://doi.org/...".

Specific DOI system implementations and Registration Agencies may make additional recommendations appropriate to the particular applications concerned.

### 2.7 Relationship between the DOI system and other ISO identifier schemes {#2.7}

An aim of the DOI system is to allow existing numbering systems to be retained, if desired, and the functionality of DOI names added to them easily. See the following factsheets for additional information:

*   [DOI System and Internet Identifier Specifications](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications)
*   [DOI System and the ISBN System](../factsheets/ISBN-A.html)
*   [Identifier Interoperability](/the-identifier/resources/factsheets/identifier-interoperability)

#### 2.7.1 A brief outline {#2.7.1}

The occurrence of multiple identifiers for a single resource (co-reference) creates potential problems in the linked data world, semantic web applications, etc., which rely on interoperability between diverse systems. Problems can occur if the existence of another common identifier is not known; a potentially greater problem is if two identifiers are claimed to have the same referent but in fact they do not (which will fundamentally break interoperability). The successful convergence of multiple ontologies and referencing schemes requires clear declaration and integration of schemes where possible. An important exemplar of this issue is the relationship between the DOI system and other ISO identifier schemes.

Consider a DOI application registry, which we will call DOI-X, and an existing ISO standard registry, which we will call ISXI. Each has a registration authority (DOI-X RA and ISXI RA respectively). If DOI-X thinks it is identifying something that has an ISXI, and this is likely to be a common thing, the DOI-X RA should ask the ISXI RA (or ask IDF to ask them) if they want to agree a standard way for indicating ISXIs in DOI names (either metadata alone or syntax+metadata). If ISXI says yes, and such a mechanism can be agreed, then this should be used; if ISXI says no then DOI-X should where practical still indicate the ISXI in the DOI Kernel (as referentIdentifier(s)). Key issues which will need to be considered: (1) are the thing the ISXI identifies and the thing DOI-X specifies really the SAME thing (the above only applies if the answer is yes); (2) do the ISXI RA and the DOI-X RA wish to establish an agreement for the exchange of records and if so under what terms? In the case when ISXI RA and DOI-X RA are the same body, this use case of course collapses into a simple internal decision.

A list of other ISO TC46/SC9 standards is provided in the [Bibliography](/the-identifier/resources/handbook/bibliography).

#### 2.7.2 Principles {#2.7.2}

A DOI name shall not be used as a replacement for other identifier schemes such as ISAN, ISBN, ISRC, ISSN, ISTC, ISNI and other commonly recognized identifiers, but when used with them it can enhance the identification functionality provided by those systems with additional DOI system functionality.

The guiding principles for referencing other identifier schemes within the DOI system are to maximize utility to potential users and to maximize its internal management efficiency.

#### 2.7.3 Expressing the relationship of DOI names to other identifier schemes {#2.7.3}

##### 2.7.3.1 Existing identifier within other identifier schemes {#2.7.3.1}

Where the referent of a DOI name also has an existing identifier within a commonly recognized identifier scheme or schemes, at least one of the following methods is used to express the relationship.

a. The other existing identifier(s) is indicated in the DOI metadata field "referentIdentifier(s)" \[other identifier(s) commonly referencing the same referent\], irrespective of whether the identifier(s) is(are) incorporated into the syntax of the DOI name.

b. An existing identifier can be incorporated as an explicit part of the DOI name for the referent.

Examples 1 and 2 show the incorporation of an ISBN and an ISSN into a DOI name. Other agreed syntaxes for integration are also possible. The International DOI Foundation maintains information on current agreed schemes (found in the factsheet [DOI System® and Standard Identifier Schemes](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-schemes). Example 3 shows that the DOI name is not a replacement for the other identifier scheme.

{{% example %}}
**EXAMPLE 1**

`10.978.86123/45678` shows a possible incorporation of an ISBN (978-86-123-4567-8) into a DOI prefix and suffix.
{{% /example %}}

{{% example %}}
EXAMPLE 2

`10.1038/issn.1476-4687` shows a DOI suffix using an ISSN.
{{% /example %}}

{{% example %}}
**EXAMPLE 3**

`10.97812345/99990` is a DOI name; it cannot be validly submitted to an ISBN point-of-sale ordering system, or converted to a GS1 bar code for use as an ISBN bar code; it does not conform to the ISBN syntax.

`978-12345-99990` is an ISBN. It cannot be validly submitted to a DOI resolution service; it does not conform to the DOI syntax.

However both identifier strings have the same referent.
{{% /example %}}

##### 2.7.3.2 Incorporation of an existing identifier into a DOI name {#27.3.21}

Where syntax rules permit the incorporation of an existing identifier from another scheme as part of the DOI name, such rules shall not form part of this International Standard. In such cases, attention is drawn to the following points.

a. The same referent shall be denoted by both the DOI name and the included identifier string, to the degree that is necessary to distinguish it as a separate entity within each identifier scheme.

b. Within the DOI system itself, the DOI name is an opaque string. No definitive information relating to the other identifier scheme should be inferred from the specific character string used for a DOI name, and the DOI name is not guaranteed to be usable in any non-DOI applications designed for the other identifier scheme (see Example 3 above).

c. The existence of multiple (third, fourth, etc.) identifiers should be recognized in the DOI metadata field "referentIdentifier(s)" (other identifier(s) commonly referencing the same referent by multiple values), rather than by incorporation in the DOI name.

d. Specific syntax rules for the incorporation of an existing identifier from another scheme shall be maintained by the ISO 26324 Registration Authority.

##### 2.7.3.3 Additional functionality {#2.7.3.3}

The DOI system functionality can be offered to complement other identifier services which are available through other parties, e.g. for the resolution of identifiers in a variety of contexts. Services using an identifier can be offered by multiple providers. Rules of certain identifier systems can necessitate the use of only specified preferred service providers; in such cases, the application of the identifier shall follow the rules of the relevant registration authority. Each registration authority for an identifier scheme retains autonomy in determining rules for usage within its own scheme or community. The International DOI Foundation maintains current information on agreed specific mechanisms for use with other identifier schemes.

### 2.8 Relationship between the DOI system and other (non-ISO) identifier schemes {#2.8}

The same principles as for ISO schemes hold for non-ISO schemes. An existing standard identification system number may be incorporated into a DOI name, if the registrant finds it convenient to do so; alternatively an existing standard identification system number may be incorporated into DOI metadata. If an existing standard identification system number is incorporated into a DOI name, it should still also be incorporated into the DOI metadata. In all cases it is essential that precisely the same entity be identified by the DOI and other systems. The DOI system is not alone in being a system that can incorporate existing identifiers: for example, physical bar codes can be used to express ISBNs.

Since any existing legacy identifier can be used within a DOI name or record, a specific DOI system implementation can create interoperability where none existed before. For example, in the Crossref implementation of the DOI system, some publishers create their DOI names by incorporating PII as a suffix; others incorporate SICI as a suffix; others may in future use ISTC as a suffix, and yet others may use entirely proprietary internal production numbers as a suffix. By using DOI names, each publisher gains the benefit of interoperability of its data within the Crossref system yet does not have to "re-number" entities which have already been assigned identifiers in another scheme.

Note that the kernel metadata for a DOI name mandates the inclusion of "Identifier": "A unique identifier (e.g. from a legacy scheme) applied to the entity...it is normal to include a legacy identifier if one exists". Consideration of datasets which already include existing (legacy) identifiers shows why this requirement exists: it is so that the existing legacy scheme may be used by any automated processes which pick up structured metadata from a DOI system service, using the kernel declaration of this element. Since, as we have stated earlier, DOI names are inherently opaque non-parsable strings, the legacy identifier will not be securely recovered from the DOI name suffix itself (consider for example the heterogeneous collection of suffixes in the Crossref application). Yet including the legacy identifier, additionally, as the suffix may be convenient, make the DOI name more easily human readable, and be administratively desirable, even though it is not a requirement of DOI name creation.

#### 2.8.1 Using DOI names to express relationships with existing legacy identifiers {#2.8.1}

Relationships between entities may be expressed via metadata. For example a single chapter of an abstract work is an excerpt (as expressed in ISTC metadata) of that work, and (if it needs to be identified as a work) can also have an ISTC. Once a specification is made of the entities, the relationship between them may be expressed as an item of metadata ("a relationship that someone claims exists between two entities"). Any desired relationship may be expressed providing the appropriate metadata or specification is available. The DOI system detailed technical architecture of Application Profiles and DOI system services could be used to instantiate this.

#### 2.8.2 Benefits of using legacy identifiers with DOI names {#2.8.2}

In addition to the benefits common to any DOI name there are some benefits specific to the incorporation of an existing standard numbering scheme into a DOI name:

*   DOI names have a common, controlled prefix structure but allow complete domain-specific structures at the suffix. They can have multiple registration authorities, and can incorporate established identifiers (like ISBN, ISAN, ISWC, PII, or any proprietary ID) to allow integration with existing systems. Use of DOI name allows ready interoperability with existing abstraction identifiers, with associated manifestation identifiers and other metadata; with rights metadata; and builds on what is practical in each sector.
*   Users building applications of these DOI names are free to invoke all or only some of available multiple resolution options — e.g., a DOI name may have recorded with it all the publisher/manifestations of a textual work; if a user has its own exclusive or preferred relationship with only one of the publishers, it could show only those options. Therefore the whole downstream distribution and retail chain is still empowered to strike its own relationships and use the DOI names for its own purposes — the Registration Agency offers registration of the full superset of options.

#### 2.8.3 Representation of DOI in other identifier schemes {#2.8.3}

Specific application sectors may choose to define formal representations to enable DOI names to be used within their systems: for example, the [Society of Motion Picture & Television Engineers](http://standards.smpte.org) (SMPTE) Recommended Practice 2079 (SMPTE RP 2079:2013: "Digital Object Identifier (DOI) Name and Entertainment ID Registry (EIDR) Identifier Representations") defines representation of DOI names within the SMPTE domain. A related SMPTE RP 2021-5:2013 "Using Ad-ID and EIDR as Alternate Identifiers in SMPTE BXF and ATSC PMCP" allows DOI names from the EIDR registration agency to flow into TV sets and cable content management systems.

### 2.9 DOI names and check digits {#2.9}

A DOI name is an opaque string. The DOI system does not itself make use of check digits. This is deliberate, for a number of reasons:

*   the ability to include an existing identifier string as a prefix in a DOI without any alteration: some common strings like ISO identifiers already have a check digit in them which act as aids to readability or keyboard data entry in the absence of any automated protocol correction;
*   performance considerations if a check sum is calculated at each resolution;
*   identifier schemes such as URL and URI have no check digit: the underlying TCP/IP protocol they use has an error-correction component. This aids creation and use.

However, other applications may make use of check digits, so a checksum digit may be inserted into a DOI name if it would be useful for some other application. Use of checksums in a particular DOI system application can be introduced as a rule of that application by the Registration Agency concerned. An example is the EIDR application, where the check character is computed only over the DOI suffix. It does not include the prefix because if the prefix is wrong, it is highly probable that the DOI will go to an incorrect resolution system anyway. The EIDR registry separately validates the prefix of any DOI sent through its API.

### 2.10 shortDOI service {#2.10}

The IDF runs two services based on handles: the DOI service and the shortDOI service. The [shortDOI](http://shortdoi.org) service is a public service, open to anyone, that creates shortcuts to DOI names which are often very long strings. The shortDOI service provides a function similar to that which URL shortening services do for URLs. The service creates short handles of the form 10/abcde and enables short HTTP URIs of the form http://doi.org/abcde that are ideal for use in email, blogs, mobile messaging and more. (Note that shortDOIs are not themselves DOIs and therefore do not conform to the ISO standard syntax and other requirements. A shortDOI can only be created for an existing DOI.)

The shortDOI service proxy server only resolves the shortcuts, identically to the way the DOI System Proxy Server only resolves full DOI names. (Error pages for both proxies will offer links to the other proxy when appropriate.) The service will either create a new shortcut, or return the existing shortcut if one has already been created.

For automated purposes, the shortDOI service can also be used by simply appending the original DOI name to the URL for the service. A format parameter can be used to specify how information is to be returned. For further information see the [shortDOI](http://shortdoi.org) service web page.

### 2.11 The DOI system and Internet identifier specifications {#2.11}

A factsheet is available which discusses the relationship between the DOI system and generic identifiers such as URL, URN and URI. See "[DOI® System and Internet Identifier Specifications](/the-identifier/resources/factsheets/doi-system-and-internet-identifier-specifications)".
