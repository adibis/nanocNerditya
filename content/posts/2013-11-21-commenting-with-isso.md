---
title: "Commenting with Isso"
created_at: 2013-11-21 08:09:02 -0800
kind: article
link_cat: code
summary:
categories:
    - code
    - python
    - isso
    - nanoc
published: true
---

Finally, I found a commenting system for a static blog on Nanoc which is extremely lightweight and works perfect. I didn't want to use [Disqus][disqus] since it increases the page load times by a few seconds, you need to rely on them for storing comments and use their interface for all the moderation part. More than that though, it's too heavy for a simple blog such as this. I was looking at Disqus alternatives which I can host on the server and are lightweight. That's when I came across [Isso][isso].

Isso is written in Python and uses an sqlite database to store comments. That was perfect for me. The instructions to set it up seemed simple enough, so I decided to give it a try; and I failed miserably in getting the system going. I could only get the comment form to display but nothing happened as I clicked submit. I did what any other person in my position would have done at this point and headed over to the IRC channel for help.

The IRC was extremely helpful. Christian [cmur2] walked me through a few things about the setup and said that Isso has gone through massive development over the past few weeks. I could finally configure the comments without a moderation system in place. It looked great, worked great, yet the lack of ability to moderate comments and email notifications was bothering me.

<!-- more -->

At this point, I sent an email to the developer of Isso, [Martin][posativ] who goes by the name 'posativ' on the IRC. He replied back within a few hours and finally, our time-zones matched and I could talk with him over the IRC. He told me the steps to set-up the email notification system to get links to delete or moderate comments. I did what was needed and the 'delete comments' part was working. I couldn't, however, activate comments yet.

Martin did some digging through the code and realized a URL action for moderation was missing. He wrote a patch for that in less than 5 minutes after we discussed this and the patched version was up on 'pip' in another minute or two. That is the best experience I have ever had about any nascent FOSS project to date. Needless to say that everything was working at this point. I can now,

+ Comment on this blog, which puts the comment in a moderation queue.
+ I receive an email with links to either delete or approve the comment.
+ Depending on what action I take, the comments will either show up on the blog or get deleted.

That pretty much gives me everything I needed. Isso, even though lightweight, comes with abundance of features such as up-voting or down-voting comments, threaded replies and - something I found really funny and geeky - automatically generated avatars in comments. Of course, it has some minor issues. Comment delete or moderation links, for example, take the action immediately, without any confirmation. There is no interface/dashboard where the comments can be managed. I am not aware whether that is planned or not but that is something which would tremendously improve the usability.

Ultimately, this has been a wonderful experience with the help and support from the developers and I am sticking with it. I will write a follow up post about the entire setup on [Nanoc][nanoc] with [Nginx][nginx] as the server so come back for more.

[disqus]: http://disqus.com
[isso]: https://github.com/posativ/isso
[posativ]: http://posativ.org
[nanoc]: http://nanoc.ws/
[nginx]: http://wiki.nginx.org/Main
