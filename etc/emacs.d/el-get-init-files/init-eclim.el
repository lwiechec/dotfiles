; setting where Eclipse and eclim is installed
(custom-set-variables
 '(eclim-eclipse-dirs '("~/work/tools/eclipse"))
 '(eclim-executable "~/work/tools/eclipse/eclim"))

(setq eclimd-executable "~/work/tools/eclipse/eclimd")

; start eclimd in the buffer
(start-process "eclimd" "*eclimd*" eclimd-executable)

; enable eclim mode in all buffers
(global-eclim-mode)

;; enable company-mode for completion
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
