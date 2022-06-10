---
layout: post
title: "Conference talk notes: All the little things (TDD)"
date: 2022-06-10 17:30:00 +0100
categories: jekyll update
tags: notes conference_talk
---

# [All the little things by Sandi Metz - RailConf 2014](https://www.youtube.com/watch?v=8bZh5LMaSmE)
Related article on [wrong abstracion](https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction)

> Applying TDD to “The guilded rose” kata

## Metrics about complexity
- Flog
- “Squint test” changes in
    - shape: conditionals
    - colour: different levels of abstractions

## Bad pattern
Make changes to the code, add more conditionals, try make tests pass. Code just gets bigger. Because we’re following a bad pattern.
We do more of whats already there.

## Better pattern
Refactor the code, so we can make changes later!

> In OO code, you have lots of little objects, and send messages between them. The messages give a level of indirection, so you can substitute different objects at the back. Messages create seams.

> Is to get to green as soon as possible. Get the lowest hanging fruit.
> Refactor once green.

During this you may notice similar algorithms in your code. Avoid the temptation to reduce that duplication (for now)

> Duplication is far cheaper than the wrong abstraction.
Tolerate some duplication, rather than abstract too early.

Small methods are simpler.


Tolerate the increases to complexity during refactor. Those intermediate steps will get you to a better place.

> Intermediate complexity leads to ultimate simplicity

## Adding new functionality

OO principles: Style guide for arranging code

> “Open/closed” : can add new behaviour editing existing code.

If prefixes differ, but similar suffixs. Should have a method with a method with the name of the suffix.

> Trust the refactorings

## Closing remarks

- Short term duplication rather than using the wrong abstraction
- Open/closed for adaptable code
  - Make it easier to make changes, then make the easy change
- Make small things
- Trust on OOD when going through refactoring
  - Particularly during the (temporary) increases of complexity