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

Push `staging` and the Action in [`.github/workflows/build.yml`](https://github.com/doi-foundation/doi-website/blob/main/.github/workflows/build.yml) builds to https://staging.doi.org/. Push `main` and it goes to https://www.doi.org/. Each job passes `--baseURL` so links match that host. The `baseURL` in `config.toml` is only for local work.

The deploy will not delete more than 256 files from the bucket, and it stops if `public/` has fewer than 1500 files. A good build is a bit over 2400. We used to pass `--maxDeletes -1`, which would have emptied the live bucket if a build went thin. If you really need to delete a lot of files, raise `--maxDeletes` in that PR and put it back afterwards.

### How CI installs Hugo

Hugo 0.137 pulled `hugo deploy` out of the extended binary, so S3 deploys need the `extended_withdeploy` build. `peaceiris/actions-hugo` still cannot install that. We ran a fork (`deining/actions-hugo`) that could, but it is stuck on Node 20, and GitHub hosted runners drop Node 20 on 16 September 2026. After that the fork just fails. Upstream is on Node 24 now and still has no `withdeploy`.

The workflow grabs the official Linux tarball from [Hugo's releases](https://github.com/gohugoio/hugo/releases) and checks the SHA-256 against the sums file in that release. Checkout is `actions/checkout@v6`, which runs on Node 24. v2 and v4 still use Node 20.

`HUGO_VERSION` at the top of `build.yml` is the pin. Don't set it to `latest`. We already got caught once when a Hugo release changed the build (0.162 started blocking HTML content files). Try the new version locally first, then bump the pin.

### Handbook XML Process
Late 2025, early 2026 the DOI Handbook pages became automatically generated via an XSLT file that takes the xml contents and formats them in an easily navigable interactive HTML structure.
Any updates to the source handbook XML can be dropped into the repo at 

[```/themes/doi-theme/static/data```](https://github.com/doi-foundation/doi-website/tree/development/themes/doi-theme/static/data)

replacing the existing ```DOIHandbook.xml``` and the following build/deploy will update onto the staging/live site.
New features in the XML file itself (eg specific highlighting of a term/paragraph) would need coded for in the ```handbook-html.xslt``` file.

[githubworkflow]: https://img.shields.io/github/workflow/status/bcgwebdesign/timetable/GitHub%20Pages?style=flat-square
