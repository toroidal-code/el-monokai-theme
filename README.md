Monokai Color Theme for Emacs 24
================================

PROJECT DISCONTINUED
====================

This project is being discontinued. **No new patches or features requests will be accepted.**

Users are advised to switch to <https://github.com/oneKelvinSmith/monokai-emacs> which is also
available from [MELPA](http://melpa.milkbox.net/).

This repository will be deleted by December and its contents will be moved to the
[attic](https://github.com/lvillani/attic) repository.




Installation
============

This package is available from [Marmalade](http://marmalade-repo.org/). Refer
to its documentation to learn how to use Marmalade and `package.el` with your
version of Emacs.

To install the theme evaluate (`C-x C-e`) this elisp form in a scratch buffer:

    (progn
      (package-refresh-contents)
      (package-install 'monokai-theme))

Then enable it by adding this line to your `~/.emacs` or `~/.emacs.d/init.el`
file:

    (load-theme 'monokai t)




Screenshot
==========

![Screenshot](https://raw.github.com/lvillani/el-monokai-theme/master/screenshot/intel_panel.png)
