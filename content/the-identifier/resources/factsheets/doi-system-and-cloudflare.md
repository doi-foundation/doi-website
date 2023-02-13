+++
title = "DOI® System and Cloudflare"
date = "2023-02-12"
showdate = true
draft = false
imagetop = "Resources"
imagemain = "Factsheets"
+++

## DOI® System and Cloudflare

[< back to the Resources page](/the-identifier/resources/)

To provide as good a service as possible, the doi.org resolver uses [Cloudflare](https://www.cloudflare.com) as a provider of authoritative DNS service and as a Content Distribution Network (CDN). When a user accesses doi.org, the Cloudflare DNS resolver will route the request to a nearby node on Cloudflare's globally distributed network of edge nodes. That Cloudflare edge node will then contact a geographically nearby doi.org backend server. This approach allows us to distribute the doi.org backend servers around the world, with each user in general accessing only those servers which are geographically close to them. The result is considerably improved response times. In addition, the edge nodes will greatly improve any failover situation and redirect queries to other doi.org backend servers if the geographically closest server is unreachable for any reason.
We have attempted to configure our use of Cloudflare to be minimally intrusive. However, there are two issues to be aware of.

1. In exceptionally rare cases, Cloudflare may require a user to pass a CAPTCHA challenge in order access the site. If this happens to you, it means that your IP address (your computer on the Internet) is on a list of suspicious addresses. It may be that your computer, unknown to you, is part of a botnet used for generating spam or something similar. Completing the CAPTCHA proves you are a human. Note that this is quite rare; fewer than one in a million requests to doi.org results in a Cloudflare challenge.

2. Cloudflare may store a [cookie](https://developers.cloudflare.com/fundamentals/get-started/reference/cloudflare-cookies/). This cookie does not store any personally identifiable information, but can be used by Cloudflare to distinguish distinct users using a shared IP address in case different security responses are appropriate; for instance the cookie can determine which clients behind a suspect IP address have successfully passed a challenge.
If you believe our use of Cloudflare is interfering with an automatically generated resolution request, please send us an [email](mailto://info@doi.org) for advice.