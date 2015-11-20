(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))


(defhydra hydra-error (global-map "<f12>")
  "goto-error"
  ("h" first-error "first")
  ("j" next-error "next")
  ("k" previous-error "prev")
  ("v" recenter-top-bottom "recenter")
  ("q" nil "quit"))

;; TODO: needs to be further expanded
(defhydra hydra-multiple-cursors (:color pink)
  "
    :Magnars' Multiple Cursors:

    _N_ext symbol like this  _n_ext like this
    _P_rev symbol like this  _p_rev like this
    _o_k
"
  ("n" mc/mark-next-like-this nil)
  ("p" mc/mark-previous-like-this nil)
  ("N" mc/mark-next-symbol-like-this nil)
  ("P" mc/mark-previous-symbol-like-this nil)
  ("o" nil nil))
(global-set-key (kbd "C-c m c") 'hydra-multiple-cursors/body)

;; from http://oremacs.com/2015/02/25/rectangle-hydra/
(defun ora-ex-point-mark ()
  (interactive)
  (if rectangle-mark-mode
      (exchange-point-and-mark)
    (let ((mk (mark)))
      (rectangle-mark-mode 1)
      (goto-char mk))))

(defhydra hydra-rectangle (:body-pre (rectangle-mark-mode 1)
                           :color pink
                           :post (deactivate-mark))
  "
  ^_k_^     _d_elete    _s_tring     |\\     _,,,--,,_
_h_   _l_   _o_k        _y_ank       /,`.-'`'   ._  \-;;,_
  ^_j_^     _n_ew-copy  _r_eset     |,4-  ) )_   .;.(  `'-'
^^^^        _e_xchange  _u_ndo     '---''(_/._)-'(_\_)
^^^^        ^ ^         _p_aste
"
  ("h" backward-char nil)
  ("l" forward-char nil)
  ("k" previous-line nil)
  ("j" next-line nil)
  ("e" ora-ex-point-mark nil)
  ("n" copy-rectangle-as-kill nil)
  ("d" delete-rectangle nil)
  ("r" (if (region-active-p)
           (deactivate-mark)
         (rectangle-mark-mode 1)) nil)
  ("y" yank-rectangle nil)
  ("u" undo nil)
  ("s" string-rectangle nil)
  ("p" kill-rectangle nil)
  ("o" nil nil))
(global-set-key (kbd "C-x SPC") 'hydra-rectangle/body)
