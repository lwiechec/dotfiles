(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)
	    ; keybindings
	    (local-set-key "\C-x\C-e" 'slime-eval-last-expression)
	    (local-set-key "\C-cb" 'slime-eval-buffer)
	    ))
