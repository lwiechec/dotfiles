; on Emacs 24+ we can make all programming modes rainbow-delimiters enabled
(when (>= emacs-major-version 24)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
