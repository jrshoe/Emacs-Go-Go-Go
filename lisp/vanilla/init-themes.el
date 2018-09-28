(paradox-require 'tao-theme)
(paradox-require 'doom-themes)



;; my favorite themes
(load-theme 'doom-nova t)
;; (load-theme 'tao-yin t)
;; (load-theme 'github)
;; (load-theme 'eclipse)

;; my favorite fonts
(set-frame-font "Source Code Pro 14" nil t)
;; (set-frame-font "Hermit 14" nil t)

(paradox-require 'default-text-scale)
(add-hook 'after-init-hook 'default-text-scale-mode)


(provide 'init-themes)
