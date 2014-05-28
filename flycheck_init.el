(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-packages)
(require 'init-evil)
(require 'init-graphene)
(require 'init-saves)
(require 'init-themes)
(require 'init-sr-speedbar)


(custom-set-variables
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#52676f" "#c60007" "#728a05" "#a57705" "#2075c7" "#c61b6e" "#259185" "#fcf4dc"))
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes (quote ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(fci-rule-color "#e9e2cb")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#c60007") (40 . "#bd3612") (60 . "#a57705") (80 . "#728a05") (100 . "#259185") (120 . "#2075c7") (140 . "#c61b6e") (160 . "#5859b7") (180 . "#c60007") (200 . "#bd3612") (220 . "#a57705") (240 . "#728a05") (260 . "#259185") (280 . "#2075c7") (300 . "#c61b6e") (320 . "#5859b7") (340 . "#c60007") (360 . "#bd3612"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces)
