+++
title = "DOI® System and Standard Identifier Schemes"
date = "2013-03-04"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and Standard Identifier Schemes

This factsheet discusses the relationship between the DOI System and other standard identifier schemes (also known as registries of identifiers).

### Identifier Registries

An identifier registry is a compilation of unique identifiers, with some information on each item so identified, registered through an organization which maintains it. The registry follows a syntax specification for the identifiers (typically a formal standard), and the agency provides a means of registering identifiers.

Usually the agency focuses on a particular field of interest and the items registered are of one content type, so the resulting registry achieves scale as the recommended, definitive, or most widely used list of identified entities of that content type. A good example is the ISBN for books (ISO 2108:2005; the ISBN registration authority is [www.isbn-international.org](http://www.isbn-international.org)).

Less commonly, sometimes a standard identifier syntax is defined without an implementation to build a registry (e.g. ANSI/NISO Z39.56 – Serial Item and Contribution Identifier, SICI). Without a single registry these schemes are less likely to be comprehensive and are not as useful for interoperable applications.

### Differences between DOI System and most standard identifier registries

While the DOI System is a registry, it has significant differences compared to traditional single content-type registries:

*   _Purpose_: The purpose of an identifier registry is to manage a given collection of identifiers; the primary purpose of the DOI System, on the other hand, is to make a collection of identifiers actionable and interoperable, where that collection can include identifiers from many other controlled collections.
*   _Coverage_: A registry aims to be definitive and comprehensive across its content type; the DOI System is not intended to be a comprehensive identifier registry of all items falling potentially within its scope, but any such item may be registered as a DOI name.
*   _Scope_: The scope of a standard registry is defined and fixed by content type (e.g. books and ISBN). The scope of the DOI System is potentially any resource involved in an intellectual property transaction; hence the coverage of DOI names is extensible (actual use expands continually as new areas of application are created): _"The scope of the DOI system is not defined by reference to the type of content (format, etc) of the referent, but by reference to the functionalities it provides and the context of use"._ (ISO 26324 FDIS, Introduction)
*   _Granularity_: The granularity of a content registry is typically defined and fixed by content type. The DOI System may be applied at any desired level of functional granularity, which may be modified by creating supersets or sub sets (including related types).

Registries may be of many different types, and are used in many applications, so it is difficult to generalise across all cases. This factsheet focuses principally on illustrating how the DOI System works with standard, accepted and widely implemented identifier registries in the information and documentation sectors, typified by those in ISO TC46/SC9 (where the DOI System is also standardised); the principles may be applicable elsewhere. (For the relation of the DOI System to general Internet registry mechanisms such as URI, see [DOI System and Internet Identifier Specifications](../doi-system-and-internet-identifier-specifications).)

### The DOI System does not replace other schemes

_"The DOI name does not replace, nor is an alternative for, an identifier used in another scheme"_ (ISO 26324 FDIS, Scope). Example:

*   10.97812345/99990 is a DOI name (an identifier in the DOI scheme); it cannot be validly submitted to an ISBN point-of-sale ordering system, or converted to a GS1 bar code for use as an ISBN bar code; it does not conform to the ISBN syntax.
*   978-12345-99990 is an ISBN (an identifier in the ISBN scheme). It cannot be validly submitted to a DOI name resolution service; it does not conform to the DOI syntax.

However, both identifier strings have the same referent.

### Recognition of standard identifier schemes in the DOI System

The DOI System explicitly recognises other schemes. The ISO DOI specification (ISO 26324) sets out the specifications for recognising existing schemes. At minimum, the DOI Kernel metadata must record the fact that another registry identifier exists. Additional optional steps are possible, including:

*   a consistent way of including the other scheme in the DOI syntax;
*   a business relationship to facilitate this, by collaboration between the IDF and the relevant registry. Where such collaboration is agreed, new potential may be unlocked: the [ISBN-A](../doi-system-and-the-isbn-system) application is an example of the linkage of DOI names to an existing registry.

The DOI System is designed to assist identifier interoperability (see the other factsheets on this issue: "[Identifier Interoperability](../identifier-interoperability)"; "[DOI System and Internet Identifier Specifications](../doi-system-and-internet-identifier-specifications)"; "[The ISBN System in Relation to the DOI System](../doi-system-and-the-isbn-system)").

IDF has supported the development of new single content type registries where none exist (e.g. ISTC, ISNI); these can often provide a useful means of constructing a suitable DOI name syntax for such entities, and provide a specific community focus for applications. IDF does not advocate developing a new single content type registry where one already exists: multiple registries may confuse users, and a new registry is unlikely to be an economically successful entrant where an established registry already exists.

Other (non-DOI) schemes exist which can be used to build persistent identifiers (e.g. URN; URI; ARK; PURL, etc.). Only the DOI System mandates that other standard identifier schemes must be explicitly recognised and noted as part of metadata and or syntax. Hence only the DOI System explicitly promotes the use of identifiers from other accepted schemes.

### An illustration

Consider as an example the most widely used DOI service, Crossref: _"Crossref's specific mandate is to be the citation linking backbone for all scholarly information in electronic form. Crossref is a collaborative reference linking service that functions as a sort of digital switchboard."_ ([www.crossref.org](http://www.crossref.org/))

Crossref assigns DOI names to "scholarly information". "Scholarly information" is not one homogenous type of information entity. In the digital world, people can and will cite anything. The main items cited are articles, but scholarly information can include other things besides articles. Consider an example of a music journal citing a sound recording as a reference: Crossref cannot use the existing ISO sound recording scheme (ISRC) alone, so Crossref assigns a DOI name (an ISRC is not resolvable to the Crossref database; a DOI name does not resolve to the ISRC database. _"The DOI name does not replace, nor is an alternative for, an identifier used in another scheme"_: ISO 26324 FDIS, Scope).

If an ISRC for the item does not exist, the new DOI name for that recording has no relation to the ISRC system. If an ISRC for the item exists, Crossref records the ISRC as part of the DOI metadata. Optionally, if this is likely to occur often, IDF agrees a consistent way of including ISRC syntax in DOI names. Also optionally, Crossref establishes a business relationship to facilitate this.

The same is true for other information objects, and in other DOI applications. It is also true between DOI applications - there may be "overlap" (and yet no interference with proprietary applications, without agreement), e.g. Crossref assigns DOI names to cited items, while DataCite ([www.datacite.org](http://www.datacite.org)) assigns DOI names to datasets, which might be cited items. Interoperability between registration agencies on the basis of the DOI infrastructure assures that these applications are compatible, but cannot access _full_ data from other applications unless so agreed.

### De facto identifier registries created by the DOI System

There are some examples where DOI applications in a particular sector have become useful as a de facto registry of a particular content type where none previously existed. Examples are [Crossref](http://www.crossref.org/) (scholarly articles) and [DataCite](http://www.datacite.org) (scientific data sets). The development of a DOI application then provides a registry as a spin-off from the application.

When a single accepted registry or standard identifier does not exist, many different schemes may be in use. The creation of a DOI name then provides a means to quickly make these interoperable in the DOI System: e.g. Crossref publishers might use PII, SICI, or internal schemes, but the resulting DOI names using these syntaxes in the DOI suffix become interoperable in Crossref:

*   Registrant using PII: `doi:10.2345/S1384107697000225`
*   Registrant using SICI: `doi:10.4567/0361-9230(1997)42:<OaEoSR>2.0.TX;2-B`
*   Registrant using internal scheme: `doi:10.6789/JoesPaper56`

All these DOI names have similar behaviour in the DOI System.

### Multimedia objects and identifier registries

Digital multimedia objects will contain heterogeneous material, and have significant relationships across multiple content types. To deal with this, identifiers need to be [interoperable](../identifier-interoperability) at various levels: syntax, semantics, and community. Registries need to interact with Internet identifier specifications\[[1](#1)\] and with other registries in a structured manner: this was recognised in SC9's 2004 Technical Report on functional requirements for identifiers and descriptors across content industries\[[2](#2)\], and the 2005 SC9 Registration Authorities work on Identifier Interoperability\[[3](#3)\]. Data relationships between objects in different registries can be managed through DOI applications.

### Notes

\[1\] <a name="1"></a>Some SC9 registries have developed specifications for use with URN: ISSN (RFC 3044) ISBN (RFC 3187) and ISAN (RFC 4246). These do not preclude other uses in URIs.

\[2\] <a name="2"></a>ISO/TR 21449:2004, "Content Delivery and Rights Management: Functional requirements for identifiers and descriptors for use in the music, film, video, sound recording and publishing industries" discusses identification and description schemas for intellectual content and products to express the relationships involved in production, distribution, and rights management. The functional requirements for identifiers and descriptors set out in ISO/TR 21449:2004 are centred on intra- and inter-industry business transactions relating to production, distribution, and rights management in the content industries (i.e., the music, film, video, sound recording and publishing industries).

\[3\] <a name="3"></a>The SC9 identifier interoperability working group report is summarised as part 2 of [http://www.dlib.org/dlib/april06/paskin/04paskin.html](http://www.dlib.org/dlib/april06/paskin/04paskin.html).