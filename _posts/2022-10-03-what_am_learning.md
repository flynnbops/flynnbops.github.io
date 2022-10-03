---
layout: post
title: "Bloggers club: What am I learning now? A bunch of stuff"
date: 2022-10-03 09:00:00 +0100
categories: jekyll update
tags: bloggers_club mot
---
[MOT Bloggers Club September 2022][1]

## Why am I learning about it?
While "everyday is a school day", I've been looking at a couple of things recently. Some more for what we're working on right now, and some looking forward.

## GraphQL
One of our third party integrations uses [GraphQL][4] to provide different API functionality, to their `REST API`. This is a new area to the whole team, so there's been lots of experimentation, and generally figuring stuff out. Due to some leave (which was great), I missed out on some of this early learning, so need to catch up.

## Prof profiling with performance testing

We're making changes to a core Go component, and we're focussed on understanding the performance impact of our changes. For this we're taking traces from the application and analyzing them with [Pprof][2]. To see how it all behaves under different circumstances, I'm generating different load with [Gatling][3]. This focus on performance and experiments is very exciting, and addictive.

## Contract testing
As I've already mentioned we work with third parties, generally through `REST APIs`. I've had a "TODO" on my own list for a long time to get a better understanding of how we could use Contract testing in our team. I've gathered a couple of things I want to checkout. Which can be hard, as it's often tool focussed.

So far:

- [Martin Fowler on contract testing][8] for good a overall picture
- [Postman space camps][5] look like a good starting place
- [Pact][6] for more tool / approach specific   
- [Open API spec][7] since its the bedrock of the contracts


[1]: https://club.ministryoftesting.com/t/bloggers-club-september-2022-share-your-learning/
[2]: https://github.com/google/pprof
[3]: https://gatling.io/
[4]: https://graphql.org/learn/
[5]: https://www.postman.com/events/postman-space-camp/
[6]: https://pact.io/
[7]: https://support.smartbear.com/swaggerhub/docs/tutorials/openapi-3-tutorial.html
[8]: https://martinfowler.com/bliki/ContractTest.html




