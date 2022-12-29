+++
title = "DOI® System and the ISBN System"
date = "2022-04-15"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and the ISBN System

[< back to the Resources page](../)

### ISBN and ISBN-A

The ISBN (International Standard Book Number) is a 13-digit identification number and system, widely used in the international book trade for over 35 years and assigned through a network of international ISBN Registration Agencies. ISBNs are used to identify each unique publication whether in the form of a physical book or related materials such as eBooks, software, mixed media etc.

The DOI® System offers a persistent actionable identifier for use on digital networks. A "DOI name" refers to the syntax string within the "DOI System". The ISBN-A ("the actionable ISBN") is a service powered by DOI®, in which an existing ISBN is expressed in the DOI System.

### Why express an ISBN through the DOI System?

ISBN is adequate for trading physical products, but cannot easily take advantage of new possibilities digital networks offer, e.g.:

*   Combining a publication's identity with a preferred quality-controlled Internet destination where fuller descriptive information, additional or related content or e-commerce options can be provided;
*   Variable licensing dependent on the user;
*   Locating the optimal fastest URL for downloading large files;
*   Dynamic tracking of digital-product sales.

As the Internet develops, new technologies are likely to offer further opportunities to publishers (e.g. peer to peer, resource sharing, additions to VoIP applications).

Publishers' internal systems and bibliographic agency databases use ISBN as the key identifier. Introducing additional identifiers adds complexity, cost and potentially confusion; it therefore makes sense to continue using the ISBN as a principal identifier for digital publications, rather than add a new number. By including the ISBN in the DOI syntax in a standard way, a DOI is obtained which is derived from an ISBN. The ISBN International agency and the International DOI Foundation have agreed a way of doing this.

### About ISBN-A

ISBN-A ("the actionable ISBN") is a DOI name derived from an existing ISBN, by including the ISBN in the syntax string of the DOI. An ISBN-A can only be registered for a 13-digit ISBN. Previous editions of the ISBN Standard allowed a 10-digit version. To register an ISBN-A from a legacy 10-digit ISBN it is first necessary to convert it to the 13-digit format, which will usually involve adding the appropriate GS1 prefix at the beginning (978) and recalculating the check digit. Note that the calculation method for the check digit for a 13-digit ISBN is different to that for a 10-digit ISBN. National ISBN Agencies can provide advice about converting ISBNs.

*   By definition, an ISBN-A identifies the same referent as that ISBN. It incorporates, but does not replace, the corresponding ISBN. The referent is determined by the ISBN agency.
*   ISBN-As do not automatically exist for every ISBN; they exist only once the agency has registered them in the DOI System.
*   The ISBN-A and the ISBN are used in different systems for different purposes:
	*   In particular, current supply chain ordering procedures do not use ISBN-A but only ISBN, ISBN-derived bar code etc.
	*   An ISBN on its own cannot be resolved in the DOI System. It must be expressed and registered as an ISBN-A.
*   ISBN-As are only assigned by DOI Registration Agencies which are also ISBN agencies (if they choose to offer this service).
	*   Publishers may obtain DOI names from other DOI-RAs if they so wish.
*   The purpose of creating a ISBN-A is to make an existing ISBN useful in a DOI application.
*   Publishers, registration agencies, bibliographic databases and web-based systems only need one number-string (the ISBN) to manage and utilise a corresponding DOI name, so development of new applications for the book supply-chain can be made efficiently.
*   The DOI metadata model enables provision of compatible and mutually supportive information to that provided from the ISBN system (such as bibliographic information in ONIX for Books standard format.)

### Syntax of ISBN-A

The ISBN-A is constructed by incorporating an ISBN into the allowed DOI syntax:

Example: 10.978.12345/99990

The syntax specification, reading from left to right, is:

*   Handle System DOI name prefix = "10."
*   ISBN (GS1) Bookland prefix = "978." or "979."
*   ISBN registration group element and publisher prefix = variable length numeric string of 2 to 8 digits
*   Prefix/suffix divider = "/"
*   ISBN Title enumerator and checkdigit = maximum 6 digit title enumerator and 1 digit check digit.

Note:

*   the total length of the "Bookland prefix", the "ISBN registration group/publisher prefix" plus the "ISBN Title enumerator and checkdigit" will always equal 13 digits.
*   the check digit from the ISBN remains unchanged; the DOI System prefix addition does not affect the check digit, nor is this used by the DOI System.

### Examples of applications

*   IISBN-A resolving to a managed web page service providing descriptive detail about the book e.g. publisher, title, author, subject and product description, cover image, cataloguing data. Publishers could further customize their pages with hyperlinks they control.
*   ISBN-A associated by the publisher with an ad hoc set of relevant information and services (dynamically modifiable by the publisher at any time) to be displayed to the final user whenever a title assigned with an ISBN-A is cited and referenced over the Internet. Using DOI multiple resolution features, the ISBN may be turned into a one-click gateway to enhance the "book experience", e.g.
	*   to convey in a single access point reading samples, press releases, interviews, reviews;
	*   to provide direct purchase from selected on line retailers;
	*   to provide the reader with a choice of alternative formats of the same title;
	*   to build a reader-community by linking to the ISBN-A widgets, blogs, social networks add on tools, podcasting;
	*   to redirect to print on demand, rights clearance services and better exploit the long tail effect.
*   ISBN-A services are directly controlled by the publisher even when titles are hosted by third party platforms, e.g. on Google Book Search once users discover a title within Book Search, they get access to ad hoc information and services related to that title, selected and updated by the publisher himself, simply by clicking on the ISBN-A.
*   ISBN-A services may also collaborate with other, non-ISBN, DOI services. The International DOI Foundation will encourage this, to facilitate synergies between different services:
	*   Generically: DOI names may be grouped into Application profiles; any single DOI name can be a member of one or Application Profiles; RAs might therefore agree to offer ISBN-A registration which would enable the DOI name to participate in several application profiles and services offered by different RAs.
	*   By individual publishers: e.g. a publication using a DOI name in a citation linking service may also use an ISBN-A enabled service by resolving the citation to a ISBN-A
*   Structured relationships may be expressed through appropriate use of the DOI System, e.g. a ISBN-A might resolve to related ISTC data about the work and provide some automated data expressing the link.

### Industry recommendations on digital book publications

The Book Industry Study Group (BISG) ([www.bisg.org](http://www.bisg.org)) released its "Policy Statement for identifying Digital Products" in December 2011. The policy statement was the result of a careful initial survey of the existing situation in North America followed by discussions in a working group of supply chain representatives that examined practical use cases with a view to developing recommended future practices. The BISG Policy Statement supports key aspects of the ISBN Standard as well as of the International ISBN Agency Guidelines:

*   Digital publications should not be identified with the same ISBN as a printed edition;
*   If a digital publication is available in more than one format (e.g. EPUB, .pdf), then each format should be separately identified by its own ISBN;
*   If a digital publication is available in the same format but with different usage rights then each of the different usage rights should be identified by a separate ISBN;
*   In cases where intermediaries or other third parties create additional formats and versions on behalf of publishers they should assign ISBNs to each unique digital publication they produce, if the publisher chooses only to assign an ISBN to the initial version they provide;
*   The only valid ISBNs are those assigned to a publisher or intermediary by the respective national ISBN Agency operating in the territory where the publisher or intermediary is based;
*   A proprietary number should not be labelled "ISBN" even if it is in the same format as an ISBN. Only legitimate ISBNs issued by a national ISBN agency may be labelled as ISBN;
*   All ISBNs should be labelled "ISBN". There is no identifier called "e-ISBN".

Each of these ISBNs could be expressed as an ISBN-A if appropriate to an application. The International ISBN Agency issued a Press Release in January 2012 welcoming the BISG Policy Statement as an important contribution to the recommendations for assignment and management of appropriate identifiers to digital publications. In addition, within the Press Release the International ISBN Agency has also issued some further guidance covering in particular the more complex use cases related to the distinction between "products" and "transactions" in order to help supply chain partners make the right decisions on a day to day basis. If you have specific questions about how to use ISBNs, please contact the International ISBN Agency at [info@isbn-international.org](mailto:info@isbn-international.org) or your national ISBN Agency.

### DOI collaborations with other identifier systems

There are other similar examples of identifier system collaboration: notably the ISBN may be expressed as a bar-code to be processed by store electronic systems. The value of each system is enhanced if they work together.

The guiding principles for referencing other identifier schemes within the DOI System are to maximise utility to potential users, and to maximise efficiency among registration agencies. The ISO Standard for the DOI System states that "if an object or class of objects identified by DOI name(s) is already within the scope of another ISO standard identifier, the DOI registration authority shall consult with the registration authority of the other ISO identifier to agree a mechanism for the inclusion of the character string of the identifier within the DOI syntax. The character string of the other ISO identifier shall be integrated into the DOI syntax, unless the relevant Registration Authority of that standard identifier indicates otherwise, or another integration mechanism (such as referencing as part of DOI metadata) cannot be agreed".

The ISBN-A is the first example of such an agreement in action.