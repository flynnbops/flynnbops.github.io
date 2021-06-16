---
layout: post
title:  "To the HMLR test community"
date:   2021-06-16 11:30:00 +0100
categories: jekyll update
---

Hi folks, I've had lots of things rattling around my brain when it comes to the community, and stuff in general. I've decided to share it here in case people are interested. At the very least it will clear my head and possibly make me look ridiculous when it gets out of date. Let's give it a go!

I'm gonna speak in broad terms here, so no doubt some people/teams won't relate to all of my thoughts. There is a lot of great work being done.

## Community

I still think the community is the most valuable thing we have. It's currently in the best place I've seen it in my 5+ years with LR. Although at times it may not feel that way. Ultimately a community is organic. It ebbs and flows over time. Please keep sharing ideas. Getting lots of ideas together produces good ones. I've learned loads from working with everyone. Keep learning from each other.

I often plug the [Ministry of Testing][1], and being involved with their global community has supported me, and helped me grow. Even just reading what other people are taking about in other places can expand your thinking, and help you here. It certainly did for me. Getting more involved in forums / discussions only accelerates that learning.

Keep learning and you can't be stopped!

## Testing

> All That Testing Is Getting in the Way of Quality - James Whittaker 2011(ish)

This line has stuck with me ever since I've heard it. It’s the tagline behind one of James' conference talks. I won't go into detail but in short, we shouldn't let the activity of testing stop us from creating quality services. So, we shouldn't "just do testing" blindly, but should make sure it adds value.

I think it can be easy to keep doing the same activities and not reflect on if it’s the right thing to do. I know I've certainly done it, and it takes real effort to shake yourself out of it.

We should think about what we are testing, how we could test it, what’s the pros/cons, then test. No point starting every testing task by writing automation. Let’s take a sec to think critically about the task.

I think we(testers) should probably:

- do more session based exploratory testing (SBET)

- ask more questions

- get involved earlier

- do less UI automation

- and maybe less automation in general

### Session based exploratory testing (SBET)

Exploratory testing is something that we could all do more of and do more effectively. I don't claim to be an SBET expert. It takes time and practice to get good at anything.

You may be familiar with the idea of exploratory testing, charters, etc. To me the real power is sharing those sessions with the team(s) to talk about what you've seen. This can be legit issues, questions, bad smells, or future ideas. This plays to the skills and experiences of testers, so to me is a no brainer.

[Explore It!][2] is a great book to learn more. I've not read it cover to cover, but I've been able to take something away from each chapter to improve how I do things.

It's on my reading list before I start my next job.

I believe if the community gets more skilled / disciplined with using SBET and heuristics, they can provide value, and quick feedback.

Automation isn't the answer to everything

### Talk more

> Teamwork makes the dream work

Teams that work closely are the bestest teams. The sooner different perspectives look at a problem / task the better. Ask questions, even if they feel stupid. If you aren't sure about something, I guarantee you aren't the only one. Whether you want to say  `shift left` or something  else doesn't matter too much to me. But test being active in teams is the best use of testers time. Why spend time finding bugs when we can help prevent them in the first place?

### Test automation

Less UI automation in general. It's hard to do well, and harder to maintain. Let’s keep the critical flows and think about the rest.

If using UI: lets follow and share patterns / ideas, so we can all improve. The DRS May 2021 forum is a great example.

#### Acceptance tests in general

Firstly, I think we should stop calling our automated tests repos "acceptance tests repos". From what I've seen across teams, the repo contains: acceptance tests, functional tests, some API stuff etc. Why not rename it to something that better describes what we are writing? Like "automated-functional-tests" or something else. It can include actual "acceptance" and "system" tests of course.

#### Decouple Chrome from the Ruby base image

In short, our [Ruby base image][3] includes a version of Chrome. That’s handy for us doing testing, but leaves tests anchored to older versions of Chrome.

We should explore the idea of running tests inside "browser-only" containers. The test-skeleton container still handles the Ruby side of things. But the browser isn't inside the same container.

This could be done with [standalone browser containers][4] or a small [Selenium grid][5]. When adopting Chromedriver I explored this option, but it caused some issues for downloading files. This feels like something that can be overcome with some better Docker kung-Fu.

#### Other approaches

There are a bunch of other platforms which could replace / supplement current UI testing. Record and playback tools are far more advanced with AI, and cloud options. These could provide UI automation for some key flows. e.g. Test Project

Visual testing is the thing which is more likely to fit with current LR UI approaches and support testing. e.g. Percy (via BrowserStack)

#### Are our tools the right thing?

Controversial perhaps. Plenty of reasons to change and not change. I've had some impassioned conversation about it. Not banged my hands on the table level of passion. Funnily enough, me doing exactly that led to our POM standard.

We should look at it seriously (one for Geoff to lead on?). Devs use multiple languages (java, JS, python), none of which are Ruby. This leaves us in a place where our language choice limits support options. While we couldn't guarantee our testing language would be the same as the dev lang for any project, it could at least be one of them. Better chance to reuse assets, share knowledge and support, and better understand our apps. Python is a jack of all lang, JS is the "language of the internet" and Java has tonnes of info.

The cost of changing is most likely gonna be high, with new skills and capabilities needed.

#### Take technical testing / engineering more seriously

It's bloody hard, and needs proper attention, skills and support. Hopefully the new Lead test engineer (LTE) role is a step towards this. I hope to see test engineer roles at LR in future.

## Recommendations

Books, links to useful stuff.

[Ministry of testing events][6] Keep your eye out for sessions, workshops and more.

[AB Testing Podcast][8] Alan and Brent's podcast. Both have lots of good experiences in testing and tech. [Modern testing principles][7] sum up what they and many others see.

[Agile Testing][9] Janet and Lisa's mighty books.

[Test Guild][10] Joe runs the guild, with podcasts and conferences. Tonnes of content and he gets

[1]: https://www.ministryoftesting.com/
[2]: https://pragprog.com/titles/ehxta/explore-it/
[3]: https://github.com/LandRegistry/docker-base-images/blob/master/dev_base_ruby/4/Dockerfile
[4]: https://hub.docker.com/r/selenium/standalone-chrome
[5]: https://hub.docker.com/r/selenium/hub
[6]: https://www.ministryoftesting.com/events
[7]: https://www.moderntesting.org/
[8]: https://anchor.fm/abtesting
[9]: https://agiletester.ca/
[10]: https://testguild.com/
