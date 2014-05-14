(add-to-list 'load-path "~/.emacs.d/lisp/")

;;Add emacs tetris score file
(setq tetris-score-file
      "~/.emacs.d/scores/tetris-scores")

;;Add Emacs snake score file
(setq snake-score-file
      "~/.emacs.d/scores/snake-scores")

;;Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

;;Set the location for backup files and configure
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;;(when window-system          ; start speedbar if we're using a window system
  ;;  (speedbar t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("479eba125f9e97a0208b642a99eee1d816fa208fe3a06f73e444504beb0b17f7" default)))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil))

(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
