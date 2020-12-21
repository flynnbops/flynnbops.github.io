---
layout: post
title:  "UI Automation Outline"
date:  2020-12-21 15:00:44
categories: jekyll update
tags: mot
---

Outline for UI article from [MOT call for content](https://club.ministryoftesting.com/t/call-for-content-four-articles-on-ui-automation/45557)

# The Context

This article will cover my experience with UI testing over the last 5 years in the UK government department [HM Land Registry(HMLR)](https://www.gov.uk/government/organisations/land-registry).

I'll largely talk through my experiences on the [Local Land Charges(LLC) programme](https://www.gov.uk/government/publications/hm-land-registry-local-land-charges-programme/local-land-charges-programme). In short we are taking data from 300(ish) local authorities, and creating services to maintain and allow the public to search that data.

Many of the challenges we faced, have already been solved by others with good design, models, and principals.

I want to show how we learned and incorporated these ideas, while delivering as part of a large programme.

# Whats in it for you?

Over the 5 years, we encountered lots of challenges, and tried different ways to overcome them. Throughout the programme we changed our approaches to handle multiple services with their own UIs, tried different things to improve the stability of our tests and, reevaluated our approaches.

We shared this learning with the HMLR testing community and other departments, collaborating with other teams to share ideas. These experiences feed into the [HMLR UI standard.](https://github.com/LandRegistry/skeleton-acceptance-tests/wiki/Introduction)

I want to share the things I learned, how we got there, and what problems we were trying to address. So that you can follow the journey, and see if that can help you in your context.

It's important to me that I share the things that worked well and didn't, things we still struggle with, and what I think our next steps are.
