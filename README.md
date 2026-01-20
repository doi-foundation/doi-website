# Welcome to the DOI Foundation's website repository
[![build status](https://github.com/doi-foundation/doi-website/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/doi-foundation/doi-website/actions/workflows/build.yml)
[![open issues](https://img.shields.io/github/issues-raw/doi-foundation/doi-website)](https://github.com/doi-foundation/doi-website/issues)
[![issues closed](https://img.shields.io/github/issues-closed-raw/doi-foundation/doi-website)](https://github.com/doi-foundation/doi-website/issues?q=is%3Aissue+is%3Aclosed)

![githubworkflow]

This is where the DOI community manages the organization's main website. 
CNRI is the sysadmin and Cazinc is the webadmin. Roles refined as:

## Management of the site

### Sysadmin - responsible if the website is unreachable
- DNS
- Hosting - endpoints - www.doi.org + staging.doi.org
- APIs such as stats (no. DOIs, no. resolutions)
- Certificate 
### Webadmin - responsible if the website is reachable but scrambled or broken
- Programming 
- CSS
- Editorial support
- Tech support
- Analytics 

## Deployment
Deployment will be managed by a github action - depending on the branch pushed it will be to either of the S3 bucket endpoints that represent the staging and 'new-live' websites.

There is a line in the github actions build file [build.yml](https://github.com/doi-foundation/doi-website/blob/main/.github/workflows/build.yml) that will need edited for when we are ready to build to the live URL.
When running hugo you can supply the URL that the site is being build for and this will be utilized in various internal links on the site. At the moment this is set to https://www-new.doi.org - it should be changed to whatever the live URL is expected to be so any future pushes to the main branch are directed to the correct url

```run: hugo -v --baseURL "https://www-new.doi.org/"```

should probably be changed to 

```run: hugo -v --baseURL "https://www.doi.org/"```

This can be done at any time in the run up to making the new site live as the only thing it affects is the URLs in the live build - it does not deploy it anywhere else but may result in some missing links etc on the www-new.doi.org.

### Handbook XML Process
Late 2025, early 2026 the DOI Handbook pages became automatically generated via an XSLT file that takes the xml contents and formats them in an easily navigable interactive HTML structure.
Any updates to the source handbook XML can be dropped into the repo at 

[```/themes/doi-theme/static/data```](https://github.com/doi-foundation/doi-website/tree/development/themes/doi-theme/static/data)

replacing the existing ```DOIHandbook.xml``` and the following build/deploy will update onto the staging/live site.
New features in the XML file itself (eg specific highlighting of a term/paragraph) would need coded for in the ```handbook-html.xslt``` file.

[githubworkflow]: https://img.shields.io/github/workflow/status/bcgwebdesign/timetable/GitHub%20Pages?style=flat-square
