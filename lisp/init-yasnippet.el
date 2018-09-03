(paradox-require 'yasnippet)
(paradox-require 'auto-yasnippet)

(yas-global-mode 1)


;; use M-/ to expand
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "M-/") yas-maybe-expand)


(provide 'init-yasnippet)
