---
layout: post
title:  "Capybara attributes"
date:   2020-09-01 14:31:47 +0100
categories: jekyll update
---

A few weeks ago I was helping out a project and writing some automated tests. Which I don't get to do enough, and is probably a story
for another time.

While I was writing some tests I needed to figure out a way to get a reference (not the Customer reference) from a row in a table.

![Standard table row of data](/images/2020-09-01-row.PNG)
*Fig.1 Image showing a row of data in a table*


The reference is only shown on screen to a user after they click on the `show/hide details` icon (+), which expands the view to show additional information.
Most importantly the reference we care about under the `The Reference I want` heading, which in this case is `123ABC`.

![Expanded table row of data](/images/2020-09-01-expanded_row.PNG)
*Fig.2 Image showing a the expanded row and reference heading*

That's pretty easy manually, but I wanted to implement something that would be pretty efficient and readable, without redundant clicks.
I had a snoop around the HTML to see if there was anything that could help.

In the HTML for the `show details` icon I found the `data-ref` attribute, which contained the reference I wanted.
Praise the [Omnissiah]!

{% highlight html %}
# HTML Code Snippet of the icon
<td id="toggleAppDetails0" class="tableSpacing" headers="viewDetails">
    <a href="#" data-ref="123ABC" data-expand="appDetails0" title="Show / hide details"> + </a>
</td>
{% endhighlight %}

With this bit if useful insight I could access the [capybara attributes] to get my reference, and do some testing.

{% highlight ruby %}
# Capybara snippet to get the value of the reference
my_precious_reference = find_by_id("toggleAppDetails0")['data-ref']
{% endhighlight %}


**Note**: The images and HTML code snippets are not the from the real application. They are mocks with details changed and/or removed for simplicity. 


[capybara attributes]: https://rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Elementhttps://rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Element
[Omnissiah]: https://warhammer40k.fandom.com/wiki/Machine_God
