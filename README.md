# Emacs Go! Go! Go!

![](https://github.com/xuuexu/Emacs-Go-Go-Go/blob/master/image/Emacs-Go-Go-Go.jpg)

**Who are you?   I'm Emacs Hacker**

### Usage

```shell
git clone https://github.com/xuuexu/Emacs-Go-Go-Go.git ~/.emacs.d
cd ~/.emacs.d
cask install
```

### How to use this config?

#### Package Install

This cask use `cask` + `pallet` + `paradox`  to manage package from `elpa` `melpa` or somewhere.  

Edit `Cask` file to change your `source`.

let me give your some code snippets.

```lisp
(paradox-require 'evil) 
;; It will load evil if it exists, or it will install it and save it in your Cask file
```

#### Module

This configuration has been heavily inspired from pucell's `emacs.d`, which is easy to extend.

Check the `init.el` and `lisp/`  and you will know what I'm saying.

### ScreenShot

![](https://github.com/xuuexu/Emacs-Go-Go-Go/blob/master/image/screenshot.png)

###   Things we should know

1. If you are use `Emacs mac port`, try following code.

```shell
defaults write org.gnu.Emacs Emacs.ToolBar -string no
defaults write org.gnu.Emacs Emacs.ScrollBar -string no
defaults write org.gnu.Emacs Emacs.MenuBar -string no
```

2. 



