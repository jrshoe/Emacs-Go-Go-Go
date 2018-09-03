(paradox-require 'hydra)

;;---------------------------------------------------------------
;; Counsel
;;---------------------------------------------------------------
(global-set-key (kbd "M-x") 'counsel-M-x)

(global-set-key (kbd "C-h b") 'counsel-descbinds)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h a") 'counsel-apropos)
;; describe-face ==>> counsel-describe-face
;; list-faces-display ==>> counsel-faces
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; find-library ==>> counsel-find-library
;; imenu ==>> counsel-imenu
;; load-library ==>> counsel-load-library
;; load-theme ==>> counsel-load-theme

(global-set-key (kbd "C-h S") 'counsel-info-lookup-symbol)

(global-set-key (kbd "C-x r b") 'counsel-bookmark)



(provide 'init-keybindings)
