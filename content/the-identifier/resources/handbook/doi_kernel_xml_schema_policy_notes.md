+++
title = "DOI® Handbook"
date = "2013-10-16"
showdate = true
draft = false
# the following section is for the header
imagetop = "DOI Handbook"
imagemain = "DOI Kernel XML Schema"
type = "handbook"
+++

DOI Kernel XML Schema Policy Notes
---------------------
 
The elements of the DOI Kernel are described in the DOI Handbook, Chapter 4, Data Model, Section 4.3 DOI metadata.

DOI Kernel XML Schema, Version 2.2, is maintained by the IDF, at [http://doi.org/10.1000/276](http://doi.org/10.1000/276).

The allowed value sets (AVS) are in a separate namespace, at [http://doi.org/10.1000/282](http://doi.org/10.1000/282).

See also [Release Notes](/the-identifier/resources/handbook/doi_schema_release_notes_2.2/) for schema version 2.2.
 
### Policy notes on deprecated structures and values

#### (a) XSD structures

Where an XML element is deprecated and replaced by new elements, the general approach is to add an XML choice that switches between the deprecated element(s) and the new element(s), so backward compatibility is preserved as far as possible.

#### (b) Allowed Values

Where an Allowed Value is deprecated, the general approach is to move the deprecated value to a second Allowed Value Set and to preserve it there. It continues to be recognised by the schema through an XML union with the active Allowed Value Set. A deprecated value should not be re-used as a new value with a new meaning in the active Allowed Value Set. There will occasionally be cases where this rule is breached and is out of the control of the IDF. In such cases the breach will be recorded so that local rules can be applied.