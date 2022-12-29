+++
title = "The indecs Framework"
date = "2015-11-15"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## The indecs Framework

[< back to the Resources page](../)

The DOI® System uses work based on the indecs Framework as the basis for its semantic interoperability model. This factsheet is provided as background information on indecs.

### indecs project

[indecs](http://cordis.europa.eu/econtent/mmrcs/indecs.htm) (an acronym of "interoperability of data in e-commerce systems"; written in lower case) was a project part funded by the European Community _Info 2000_ initiative and by several organisations representing the music, rights, text publishing, authors, library and other sectors in 1998-2000, which has since been used in a number of metadata activities. A final report and related documents were published; the document "[Principles, model and data dictionary](http://www.doi.org/topics/indecs/indecs_framework_2000.pdf)" is a concise summary.

indecs provided an analysis of the requirements for metadata for e-commerce of "content" (intellectual property) in the network environment, focussing on semantic interoperability. Semantic interoperability deals with the question of how one computer system knows what the terms from another computer system mean (e.g. if A says "owner" and B says "owner", are they referring to the same thing? If A says "released" and B says "disseminated", do they mean different things?).

indecs was built from a simple generic model of commerce (the "model of making"): a model of the life cycle of any kind of content or intellectual property from conception to the final physical or digital copies. The top-level model is summarised as "people make stuff; people use stuff; and (for commerce to take place) people make deals about the stuff". If secure machine-to-machine management of commerce is to be possible, the stuff, the people and the deals must all be securely identified and described in standardised ways that machines can interpret and use. Central to the analysis is the assumption that it is possible to produce a generic mechanism to handle complex metadata for all different types of content. So, for example, instead of treating sound carriers, books, videos and photographs as fundamentally different things with different (if similar) characteristics, they are all recognised as creations with different values of the same higher-level attributes, whose metadata can be supported in a common environment.

### The indecs Framework

The indecs analysis supports interoperability of at least five different types:

*   Across media (such as books, serials, audio, audiovisual, software, abstract works, visual material).
*   Across functions (such as cataloguing, discovery, workflow and rights management).
*   Across levels of metadata (from simple to complex).
*   Across semantic barriers.
*   Across linguistic barriers.

The indecs project developed a framework, described in detail in the final project documents, within which such interoperability could be achieved. indecs proposed four principles as key to the management of identification:

*   _The principle of Unique Identification:_ every entity should be uniquely identified within an identified namespace.
*   _The principle of Functional Granularity:_ it should be possible to identify an entity whenever it needs to be distinguished
*   _The principle of Designated Authority:_ the author of an item of metadata should be securely identified.
*   _The principle of Appropriate Access:_ everyone requires access to the metadata on which they depend, and privacy and confidentiality for their own metadata from those who are not dependent on it.

indecs also produced a useful _definition of metadata_:

*   An item of metadata is a relationship that someone claims to exist between two entities.

The indecs framework stresses the significance of relationships, which lie at the heart of the indecs analysis. It underlines the importance of unique identification of all entities (since otherwise expressing relationships between them is of little practical utility). Finally, it raises the question of authority: the identification of the person making the claim is as significant as the identification of any other entity.

### Use of indecs

The indecs Framework does not presuppose any specific business model or legal framework; it can accommodate any (e.g. it can be used to describe transactions of copyrighted, open source, or freely available material).

The framework has been developed further as a generic ontology-based approach dealing with defined types of entity and attribute, and the relators that link them within a contextual model structure (where context is defined as an intersection of _time_ and _place_, in which _entities_ may play roles). Its main use to date has been in applications of commercial transactions of content and in some library-related applications. Examples of applications using this approach include:

*   [Linked Content Coalition](http://www.linkedcontentcoalition.org/)
*   [RDA/ONIX Framework for Resource Categorization](http://dx.doi.org/10.1045/january2007-dunsire)
*   [Vocabulary Mapping Framework](http://www.doi.org/VMF/index.html)
*   [DDEX (Digital Data Exchange)](http://www.ddex.net) Music industry messaging and data dictionary applications
*   ONIX (Online Information Exchange) standards for the use of publishers in distributing digital metadata about their products (See also [EDItEUR: ONIX for Books](http://www.editeur.org/onix.html))
*   [Digital Object Identifier System](http://www.doi.org/) metadata schemes

Further developments are active, both through community activities (e.g. [VMF](../VMF/index.html)) and independent tools and services (e.g. [Ontologyx](http://www.rightscom.com/)).

### Mapping of terms

Different models of the life cycle of content may have important differences, not least in the specific meaning attached to the names of terms they employ. The indecs approach also has much in common with the CIDOC Conceptual Reference Model (CRM), an ontology for cultural heritage information, and the Functional Requirements for Bibliographic Records report (FRBR) in the library world. CRM, FRBR, and indecs were each informed by different functional requirements, and so evolved different mechanisms for dealing with the issues that seemed most important to them. Broadly, they are compatible, and effective integration of metadata from schemes based on them should be achievable, but they must be handled with care. As an example: the terms abstraction, manifestation, item and expression are often used in considering content life cycles (e.g. a sound recording is the expression of a musical work during a recording session at a particular place and time, and is distinct from, say, the master tape made, which is a manifestation). These were dealt with in indecs, but may have slightly different meanings in other schemes. Such an analysis of meaning of a term from a scheme is possible in indecs by mapping the precise definitions into further terms with precise definitions within the indecs Framework. indecs and other frameworks continue to be developed and refined through the process of implementation.