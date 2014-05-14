;;; init.el --- Startup emacs file for emacs
;; Copyright (C) 2014 Josiah Knoll
;; Author: Josiah Knoll <josiahknoll@gmail.com>
;; Created: 12 May 2014
;; Keywords: startup-script

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; This Emacs file includes the initalization script used to get up
;; and running with Emacs.

;;; Code:
;; Adds /lisp to the load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Require Emacs' package functionality
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'graphene)

(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)
(custom-set-faces)

(require 'evil)
(evil-mode 1)

;; setup slime-mode
(require 'slime-autoloads)
(setq inferior-lisp-program "/opt/local/bin/sbcl")
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)

;;Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

;;Set the location for backup files and configure
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(custom-set-variables
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil))

;; Add emacs game score files
(setq tetris-score-file "~/.emacs.d/scores/tetris-scores")
(setq snake-score-file "~/.emacs.d/scores/snake-scores")

(provide 'init)
;;; init.el ends here
