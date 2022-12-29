+++
title = "How Tos"
date = "2022-11-22"
draft = false
noindex = true
# the following section is for the header
imagetop = "Editors Docs"
imagemain = "How-Tos"
maintext = "This page provides general help on adding and styling content."
+++

## Key concepts

### Frontmatter
"Frontmatter" is the metadata contained at the top of content pages like this one, within the `+++` ... `+++` blocks. It is used to specify certain information about the page like its title or if it is in draft mode (hidden), and in some cases to enable or disable certain options like setting the page to `noindex` (hidden just from search engines). Here is more detailed information on some of the frontmatter:

* `noindex = true` will hide the page from search engines
* `showdate = true` will show the last edited date (as set in the `date` frontmatter) at the bottom of the page

### Data versus pages
The "content" of this site is split between *data* and *pages*. Any content that is highly-formatted on the frontend is usually classed as **data**, for example the [list of existing registration agencies](http://localhost:1313/the-community/existing-registration-agencies/) or the [What is a DOI?](/the-identifier/what-is-a-doi/) page. This is because by classing this content as data we can more easily apply complex formatting without requiring editors to work with styling code. It also reduces the chances of editors breaking things 🙂. 

Data is contained in *yaml* format. If you look at one of the `.yaml` files in the `/data` folder you'll see that they typically contain one or more fields like `title` and `text`. Formatting is very important in a yaml file, so When editing a yaml file be sure to always follow previous examples and retain things like double-quotes exactly, as missing one out can break the site. 

Content that does not require complex formatting can be classed as **pages**, for example [Our Financials](/the-foundation/our-financials).  Note that "complex formatting" does not include things that can be easily configured by editors using shortcodes (for more on this [see below](#shortcodes)).

The distinction between data and pages comes into play when you are trying to find where to update text particularly. If something is classed as data, it will usually be found somewhere within the `/data` folder, whereas pages live in the `/content` folder. **When you need to make an edit you may find it helpful to just search for a particular string of text within your editor.** This should take you right to it, and will also answer the question of whether something is data or content. 

## How to update existing content
How you update existing content depends on whether it is classed as **data** or **pages**, as per the information just above. Here are some specific instructions for key data content: 

### Updating the homepage announcement
The **announcement** block on the [homepage](/) is a multi-purpose area where recent news or any other piece of information you wish to share can be placed. Update the text and image within this block by editing `/data/home/announcement.yaml`. You'll see that you can edit the `title`, text (`maintext`) and `image` here. You can also optionally assign a link (`linkurl`) to the block, and set the text used for the link button (`linktext`).

### Adding or updating a board member
[Board members](/the-foundation/our-board) are classed as **pages** content rather than data, so they are edited directly in `/content/the-foundation/our-board.md`. Simply update text as you would on any other page. For headshot images be sure to use the `figure` shortcode, which will among other things ensure they appear as roundels. 


### Adding or updating a Registration Agency
The list agencies on the [Existing Registration Agencies](/the-community/existing-registration-agencies) can be added to or updated by first going to the `/data/community/communities` folder. You'll see that each agency exists as a separate `.yaml` file. You can edit individual files in teh same way you can update the homepage announcement (see above). If you wish to add an agency, it's easiest to duplicate one of the existing `.yaml` files first, and then edit the content within. Note that you can control where an agency appears in the list using the `list` field (agencies are listed by weight, 0 being first).


## How to add a page
It's easy to add a second level page, but note that it is *not* possible to add a top level page (at the same level as The Foundation, The Community, etc.) without the assistance of a developer. The site does not support third level pages. 

To add a new second level page:

1. In your editor, go to the `/content` folder
2. Open the folder that corresponds to the section where you'd like to add a page. For example, to add a page in **The Foundation** section, open the folder `/content/the-foundation/`.
3. Create a new file here and name it as you'd like the page to appear in links, then append *.md* to it. In other words, if you want your New Page to be at `https://doi.org/the-foundation/new-page-about-whatever`, name the new file `new-page-about-whatever.md`.
4. Copy the **frontmatter** from an existing file in the same section into your new file. The frontmatter is the information contained between the two `+++` lines at the top of any page. 
5. Update the frontmatter accordingly, changing the title, date, etc. There are several special fields in the frontmatter that pertain to the larger header at the top of every second level page (text overlaying a yellow circle):
  	- `imagetop` is the small text that appears above the main title (optional but advised)
  	- `imagemain` is the main title of the page, which appears partly overlaying the yellow circle (required)
  	- `maintext` is the larger text that appears to the right of the yellow circle (optional but advised)
  	- `subtext` is the smaller text that appears under `maintext` (optional)
6. Add your content after the closing `+++`.
7. Note that you can create a page but hide it from visitors to the site, for example if it has yet to be finalised. Just set `draft = true` in the frontmatter. Remember to set `draft = false` later to publish the page. 
8. When you're ready, save your file. 

## How to style your content
For the most part, content is automatically styled. For example the font, font color, link color and other styles are set automatically site-wide. This ensures consistency. 

Basic styling such as **bold**, *italics* and headings are done via Markdown. Markdown is a very simple "language" for setting the style of content. For more information about how to use Markdown visit the [Markdown Guide](https://www.markdownguide.org/basic-syntax/).

Tables are styled automatically so you can use standard Markdown to add them to any page. See an example of this below, and a sample of a table on the [Samples page](/sampler).

<pre>
  heading | heading | heading
  ---|---|---
  cell 1|cell 2|cell 3
  cell 1|cell 2|cell 3
  cell 1|cell 2|cell 3
</pre>


### Shortcodes
Shortcodes provide a simple way for editors to apply more advanced formatting and layouts to content. For example, on the [Sampler page](/sampler#two-column-layout) you can see that its possible to create a two-column layout, or wrap a block of text with a grey or blue box. Shortcodes are custom to this site, though they may work similarly to other Hugo-based sites you've worked with. 

#### 2 column layout
Sometimes its helpful to arrange content into two side-by-side columns, for example if its a long list of short items (like the people that comprise [the Board](/the-foundation/our-board)).

To do this requires a combination of two shortcodes: `row` and `column`. Every set of 2 columns **must** be wrapped in a row. In addition, shortcodes must be opened and closed. For example:

<pre>
&#123;&#123;% row %&#125;&#125;
    &#123;&#123;% column %&#125;&#125;
      This content will end up in Column 1, the left column of two. You can format this like any other part of the page.
    &#123;&#123;% /column %&#125;&#125;
    &#123;&#123;% column %&#125;&#125;
	  This content will end up in Column 2, the right column of two. You can format this like any other part of the page.
    &#123;&#123;% /column %&#125;&#125;
&#123;&#123;% /row %&#125;&#125;  
</pre>

#### Grey and blue blocks
You may sometimes want to highlight certain text by setting it apart. The `block-grey` and `block-blue` shortcodes are for this purpose. You can see examples of these on the [Sampler page](/sampler#highlight-blocks). These work similarly to the 2-column shortcodes above:

<pre>
&#123;&#123;% block-blue %&#125;&#125;
    This content will end up in a full-width blue block. 
&#123;&#123;% /block-blue %&#125;&#125;  
</pre>


#### Social links in Bios
Links to the social networking presence (or any website) for any team member can be easily added using the `social-links` shortcode. Using this you can specify the link title (visible on the page), the URL of the link, and optionally the icon to use. It works like this:

<pre>
&#123;&#123;% social-link title="ORCID iD" url="https://orcid.org/0000-0001-9551-9662" %&#125;&#125;  
</pre>


the default icon is a <i class="fa fa-link"></i> but you can optionally specify any icon from the [FontAwesome free library](https://fontawesome.com/search?o=r&m=free) like so: 

<pre>
&#123;&#123;%social-link <strong>icon="linkedin"</strong> title="LinkedIn" url="http://www.linkedin.com/in/jonathanmtclark"%&#125;&#125;  
</pre>
