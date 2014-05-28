# My Emacs config for everyday editing

This is my emacs configuration that I started on May 12 2014. It
takes the following functionality from [/purcell/emacs.d](https://github.com/purcell/emacs.d):

* Package management without committing the elpa package
* Ruby / Ruby on Rails
* Common Lisp (with Slime)
* Solarized theme switching
* Other bootstrap initialization

It also includes the
[graphene](https://github.com/rdallasgray/graphene) package that adds
some other functionality to emacs such as:

* project-persist
* smartparens
* auto complete
* web-mode
* smex
* ido
* flycheck
* better looking defaults

There are other useful defaults that graphene adds that you should check
out over on their github. 

My emacs.d also includes evil-mode by default. This can be easily
disabled by commenting out its require line in `init.el`.

## Installation
To install, clone this repo into your home directory with the
following command:

```
git clone https://github.com/jdknoll/.emacs.d.git ~/.emacs.d
```

As in purcell's emacs.d, when you start Emacs for the first time, it
will install all of the additional packages into `~/.emacs.d/elpa`.
