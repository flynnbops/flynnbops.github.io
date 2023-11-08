---
layout: post
title: "Learning about Playwright"
date: 2023-11-08 15:00:00 +0100
categories: jekyll update
---

## Playwright feature summary
- Built in browsers
    - mobile device viewport (emulation?)
- Built in retry functionality
    - Can use retries of failed tests to gather traces and record video
- Parallelism built in
- Reporting built in
- [Good examples for managing env vars for different environments][2]
- Can create `scripts` in the `package.json` to setup run configurations other useful commands
    - Lots of options to create different configurations to make running tests / subsets of tests
- Playwright recommends use of POM
- Good “rspec-like” hooks


## Introduction to Playwright
[TAU: Introduction to Playwright by Renata Andrade][1]

Overall great introduction, and fairly short course. You get a good tour of what Playwright can do just by watching the videos. Comes with additional resources and exercises to help you practice writing tests. So you can choose what you want out of it.

- `Chapters 1 -3` Gave a good overview of the features. Showing good practices like POM, CICD considerations, reporting.
- `Chapter 4` Integration with “applitools” eyes.
- `Chapter 5` looked at how to understand test failures using the logs and trace.

## Advanced Playwright

[TAU: Advanced Playwright by Renata Andrade][3]
- Authentication and reuse
- Dynamic POMs and fixtures
- APIs
- Data management

[1]: https://testautomationu.applitools.com/playwright-intro
[2]: https://github.com/raptatinha/tau-introduction-to-playwright/blob/chapter-2/playwright.config.ts#L116 
[3]: https://testautomationu.applitools.com/playwright-advanced/ 

