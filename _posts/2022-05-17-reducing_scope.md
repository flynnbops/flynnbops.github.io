---
layout: post
title: "Bloggers club: Reducing scope"
date: 2022-05-17 12:00:00 +0100
categories: jekyll update
tags: bloggers_club mot
---
[MOT Bloggers Club April 2022](https://club.ministryoftesting.com/t/bloggers-club-april-2022-how-do-you-reduce-scope/57851)
>  How do you reduce scope?

Another overdue post from me. I started writing notes for this post while camping, and forgot where I put them. 
Like a [Standard Template Construct][2] they've been found and put to use.

## What does "scope" mean to me?
I'll start with a psuedo definition.

I think of scope as:
>  goals + risks + constraints

These don't exist as an [iron triangle][3] where we can only have two. Rather a rough guide to aid decision-making.
Depending on our focus we generally have more than one scope.

Scopes:
- Project
- Epic
- Story
- Testing phase
- etc

## Define the scope
Like the adage “prevention is better than cure”,  "defining is better than reducing" scope. Which isn’t as snappy.
In my experience, spending time to understand scope gives you the best chance to prevent scope creep and therefore the need to reduce scope.

Techniques like [example mapping][5], [ensembles][4] and [amigos][6] are great ways to build shared understanding.
It's important to question unclear requirements and the value that work brings. 
I'm not suggesting we do too much work upfront. But rather invest team time and effort into creating a shared understanding of what we’re doing, and why.
Like all things there is a balance.

### TLDR (Too long didn't read)
> Scope it right in the first place! And you won't need to reduce the scope.
 
I appreciate that’s a bit snarky. But it is the crux of my point.

## Things have changed. Now what?
After all your great work to define and refine your work, something has happened, and now you must adapt.
Odds are, lots of things are changing and everyone is reacting. 
This is the situation where you really need to rethink and (possibly) reduce scope.
But how?

### Get talking, and find a way forward
Get the right people together to look at the situation together. See how that impacts your work and your values. 
Collaborate to figure out multiple options, and agree what's the best (or least terrible) way to move forward.

### Do something to help future you
[Louise Gibbs' article][1] shared practical advice about using brief automated tests. 
There is likely a time pressure at play, and writing lots of automated tests probably seems decadent. But that makes future change harder.

Maybe an imperfect automated test that covers some, but not all risks is an acceptable way forward.
It lets the team move forward with a little more confidence, and gives you something to improve on later when you're not reacting.
Perhaps delaying the feature, and related work is the way forward. Doing nothing can be a valid approach.

[1]: https://louisegibbstest.wordpress.com/2022/04/29/reducing-scope-lets-test-less/
[2]: https://wh40k.lexicanum.com/wiki/Standard_Template_Construct
[3]: https://www.prince2.com/uk/blog/project-triangle-constraints
[4]: https://visible-quality.blogspot.com/2021/11/ensemble-programming-and-behaviors-for.html
[5]: https://cucumber.io/blog/bdd/example-mapping-introduction/
[6]: https://www.agilealliance.org/glossary/three-amigos/