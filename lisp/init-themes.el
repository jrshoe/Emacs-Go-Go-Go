(paradox-require 'tao-theme)
(paradox-require 'doom-themes)

(load-theme 'doom-nova t)
;; (load-theme 'tao-yin t)
;; set font
(set-frame-font "Source Code Pro 14" nil t)

(paradox-require 'default-text-scale)
(add-hook 'after-init-hook 'default-text-scale-mode)


(provide 'init-themes)
