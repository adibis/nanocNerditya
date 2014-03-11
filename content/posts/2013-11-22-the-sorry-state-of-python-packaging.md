---
title: "The Sorry State of Python Packaging"
created_at: 2013-11-22 22:57:45 -0800
kind: article
link_cat: code
summary:
categories:
    - code
    - python
    - ruby
published: false
---

When I started learning rails for a project, the thing that I liked the most about ruby was the Rakefile and Gemfile combination of managing your projects and then releasing them as gems to others. The idea is very simple. I am no ruby expert but from what I can gather:

+ Gemfile contains the dependencies your project needs in order to function.
+ Rakefile has tasks related to the project. This could range from compilation to file creation.

When I started digging into the two, I found some aspects that I really liked which were implemented very poorly in python. It is so simple to do certain things yet there is no known solution (known to me at least) that solves these gripes. Sure, there are hacks and ways around everything; but the problem is that they make managing your project a complete pain in the ass.

### Gemfile

Gemfile in ruby contains all the dependencies needed by your project. For example - I am serving some html files in my project and I only want to write html and not worry about the css part - I will use the bootstrap gem. Similarly, if I have some helper functions or libraries that I use for, say, complex mathematical calculations. I will use a gem for that. I can put these all in the Gemfile, with a version number. The part I like the most are the sections for various environments. If I only need some gems for testing, I don't care to put them in production environment - or I should say I want to avoid them on production machine since they are not needed. Similarly I can have a development section where I put gems that help me with debugging.

<!-- more -->

In python, there is the requirement.txt file that lets you do that. You can specify packages on pyPi along with the versions and use that. Why is there no way to specify groups as in Gemfile is beyond me. There is no way to have groups like this. So what do you do? Create multiple requirements.txt files.

Anyone who has worked on larger projects would know that managing multiple files such as these is not always the brightest idea. I am sure there would be people who advocate using multiple files. Guess what; you can use multiple Gemfiles in ruby if you want - it's not recommended and it's not the best practice but it's supported for obvious reasons. You can just pass a ``--gemfile FILENAME`` and that's it. What frustrates me more is why doesn't requirements.txt have groups so I can put everything in one file and manage it more effectively.

There are some other differences too. For instance, I could find a way to clone the entire git repository from requirements.txt but not from Gemfile. On the other hand I found a way to install a github gem from a specific branch in a Gemfile but no equivalent in requirements.txt. There might be ways but if I cannot find them in official documentation - then there is a problem.

## Rakefile

This has puzzled me for a long time.

## Conclusion

The fact is, there are too many good resources for packaging your code in ruby. There are very good official docs which are supplemented by great short videos on railscasts and a bunch of blogs. With python, finding the right way and correct instructions is hard, which is ironic considering the python philosophy of 'one way to do one thing'. Pip seems to be pretty much the standard now but it has long way to go. Ruby has got this one thing right and python was aronud way before ruby came into existence.
