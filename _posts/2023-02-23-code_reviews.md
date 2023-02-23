---
layout: post
title: "Course notes: Code Review: Best Practices"
date: 2023-02-23 10:30:00 +0000
categories: jekyll update
tags: notes course
---
> By Andrejs Doronins
- [Pluralsight course][1]

Mix of course notes, and my own thoughts.

## My summary
Good intro and reminders of how we should work together. Nice to see what we’re already doing, and somethings we can expand. Trust and respect are key. If the team works well together, then comments are less likely to be taken badly. We can assume everyone means well.

Make the reviewers life easier; small PRs, you’ve added comments, linted the code, etc. Consider what sort of review you want, e.g. wip structure,  refactoring, “normal” change.

Make the comments about the code, and not personal attacks. Comments with OIR & examples are pretty great. Consider standard labels to show the importance of comment. e.g. `pedantic`, `personal preference`, `blocker`. Comment on the good things too!

Some reviews might lead to bigger conversations, which should be taken offline.

Seek ways forward. If there are two different options, discuss and make a choice. Team votes if needed, escalate if *really* needed.

## Why Code reviews exist

- Catch bugs
- Code quality
- Learning
    - Exchange ideas and better practices
    - Requestor and reviewer(s)
- Check in with other work

> Good culture and people = Good reviews

> Opposite is also true

Course focusses on the “soft skills” of code review. 
- How to raise a Good MR
- How to do a good job reviewing
- How to approach MRs


## Fundamental process
> Code styling issues can make it harder for people to read and understand.

1. Create a style guide
2. Make IDE config(s) for the rules.
    1. Lots of options to do it automagically
    2. e.g. pre commit hooks
3. IDE plugins for static analysis
    1. e.g. sonarlint
4. Use automated tools to check the rules for you
    1. e.g. Sonarque
5.  Two reviewers is generally good
    1. Someone needs to the business domain and logic well
6. PRs are always a chance for others to learn
    1. Even reading and asking questions is useful
7. Make personal preferences clear in comments
    1. Different valid ways to do things. 

## Submitting a great Pull Request

> No comment on a non-trivial change? Doesn’t smell right

> **You** don’t own the code. **The team** does.

Exceptions to all rules

1. Small PRs
    1. If bigger change, try break them up
    2. And/or raise earlier as a ”draft”
2.  Change is split into atomic commits
    1. Commit should contain related changes
3. Review your code in `diff view`
    1. You’ll likely spot things, and can fix quickly
4. Feel you need to clarify things?
    1. Suggests the code could be improved
    2. Add comments to code
5. PR comments make sense for short term info
    1. e.g. “as discussed with X, we did Y because of Z change”
6. Respond to every comment
    1. Even if not accepting the comment

## Providing effective feedback as reviewer

1. Don’t be an arsehole
2. Use requests or questions
3. Feedback is about the code, not the person
4. OIR rule (Observe, Impact, Request)is useful for comments
    1. Explains why you’re asking for a change
5. Examples are great addition to OIR
6. Make it clear that comment is minor/major
7. Add praise comments too!
8. Don’t let the review drag on. We want to provide fast feedback.

[1]:https://app.pluralsight.com/library/courses/3d958842-4804-425b-ad24-7a8d2ccaff3c
