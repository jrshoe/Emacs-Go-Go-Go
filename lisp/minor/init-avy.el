(paradox-require 'avy)
(paradox-require 'bind-key)

;; most priority
(bind-key* "C-j" 'avy-goto-char-in-line)


(provide 'init-avy)
