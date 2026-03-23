---
layout: post
title:  "NHS Accessibility lab"
date:   2025-12-09 13:31:47 +0100
categories: jekyll update
tags: nhs cgi accessibility
---

## Quick disclaimer
> This post captures my approach for designing and running a team session, where we tested our newest version in the `NHS Accessibility lab`. This post does not include any sensitive or internal data. While some specifics will be covered, the tool itself is publicly available and so too are the specifics I reference.

## Project Context
NHS better health StopTober campaign 2025. New version of the `Personal Quit Smoking plan (PQP)` approaching release. Campaigns are driven and heavily supported by the NHS, with paid advertisements, posters in GP offices etc.

!! Something about NHS values

As part of the NHS commitment to principle [TODO: link to service standard], all sites, tools and services should be WCAG 2.2 AA compliant with a published accessibility statement.

Around the same time a different tool the team owns underwent an external accessibility audit, and we had the report as an invaluable oracle. Many lessons from that had already been applied in the context of PQP, when compared to the audit findings.

## Testing context
I won't cover in great detail the "how we tested" everything within the team before we went to the lab. But in short, during sprints I'd look at changes and their risks, identify a good set of test heuristics, and run an `Accessibility SBET`. Sharing my findings with the team, so we can make changes and iterate quickly.

Broadly speaking the approach still aligns with [Something linked to my MoT article].

In sprint testing made use of the tools available to the team:
- iOS and MacOS voiceOver
- Android Talkback 
- Automated tools like Axe (which also ran on our CI pipelines)


## Goals 
- Expand testing breadth and depth in NHS lab
    - Personas
    - Access to other assistive technology
    - Multi disciplinary pairs so we can look at different things
- Identify issues needed for our accessibility statement  
- Prioritise learning
    - Other user journeys
    - User experiences we couldn’t do or better done in lab
        - E.g. Jaws and dragonspeak
        - NHS personas loaded onto test kit with support information, practice exercises

## Challenges

- We were not experts or people who have additional needs
    - We are ultimately poor proxies, who cannot and will not replace REAL USER TESTING
    - But we have knowledge, skills and a can-do attitude
- Familiarisation with lab
    - Dragonspeak picking up background noise and learning time
    - Unsure if observed behaviours were
        - User error
        - Misconfiguring of tools
        - Problems with our app
    - Reiterating need to test with real users

## Results
- Observed genuine issues we didn’t see before, or hadn’t seen reliably
    - e.g. focus state as we progressed through the app
- Compared tools side by side. Improving our practices
    - e.g. Dragonspeak vs Mac voice control
- Some designs not friendly to specific user groups
    - e.g. results page “hour glass” shape meant missed content for users with high Zoom
- Good things!
    - Empathy and collaboration
    - Most components and design elements responded well
        - Icons and images responded to high contrast modes
        - Layout, links, expanders, embedded content reacted well to settings outside the team norms
        - Initial investigation and fixes for issues while still in the lab
- Personas gave us different way to think about the way we built our app
- Lots of questions we as a team weren’t best suited to answer
    - Reach out to NHS contacts for expertise
    - User testing!!

[1]: https://www.nhs.uk/better-health/quit-smoking/ready-to-quit-smoking/personal-quit-plan/