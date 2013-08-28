(global-eclim-mode)
(custom-set-variables
 '(eclim-eclipse-dirs '("~/work/tools/eclipse"))
 '(eclim-executable "~/work/tools/eclipse/eclim"))

;; enable company-mode for completion
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
