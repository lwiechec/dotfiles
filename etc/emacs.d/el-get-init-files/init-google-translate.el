;; google-translator from Emacs! :)
(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-ct" 'google-translate-smooth-translate)
(setq google-translate-translation-directions-alist
      '(("de" . "en") ("en" . "de") ("en" . "pt") ("pt" . "en")))
