---
title: "Using Vundle with Vim"
created_at: 2014-02-06 19:26:03 -0800
kind: article
link_cat: code
summary:
categories:
    - code
    - vim
    - linux
published: true
---

I've been using [vim][vim] for editing code for the last 6 years or so. This post and the rest of the blog are written with vim. By itself, vim doesn't have everything that I want from a text editor. The way to get around this is to use plugins for various tasks, such as a file browser to the side, or a fuzzy search. There are many plugins for vim that you can use. However, there is a problem with the way vim manages plugins.

If you know the way vim manages plugins by default, you also know that it's broken. Vim expects you to put files from one plugin into multiple directories under the ~/.vim directory (for *nix systems). This can get really cumbersome to manage as the number of plugins you use increases.

[Tim Pope][tpope] wrote a plugin to tackle this problem, [pathogen][pathogen]. It solves the issue by changing vim's runtime directory and loading plugins from their own directories. The problem with pathogen, however, is that if you use git to track your .vim directory, each plugin is now a submodule. This is better than the solution vim offers by default but it's not the ideal one.

<!-- more -->

This is where [vundle][vundle] comes in. Vundle is inspired from Ruby's bundle. You just track vundle configuration in git and then install (git clone) all of your plugins with a single command. This makes managing things really very easy.

I won't go into much details about the setup since there are a few very [good][vundle_1] [tutorials][vundle_2] out there. You can get my setup from [my github profile][adibis]. Enjoy.

[vim]: http://vim.org
[tpope]: https://github.com/tpope
[pathogen]: https://github.com/tpope/vim-pathogen
[vundle]: https://github.com/gmarik/Vundle.vim
[vundle_1]: http://rmitc.org/2013/04/modern-vim-plugin-management-pathogen-vs-vundle/
[vundle_2]: http://jameslaicreative.com/moving-up-upgrading-from-pathogen-to-vundle/
[adibis]: https://github.com/adibis/.vim
