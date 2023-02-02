# Welcome to the DOI Foundation's website repository ![githubworkflow]

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

[githubworkflow]: https://img.shields.io/github/workflow/status/bcgwebdesign/timetable/GitHub%20Pages?style=flat-square
