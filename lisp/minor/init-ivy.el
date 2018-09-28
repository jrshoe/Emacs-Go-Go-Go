(paradox-require 'ivy)
(setq ivy-height 8)
(add-hook 'after-init-hook 'ivy-mode)

(paradox-require 'counsel)
(setq-default counsel-mode-override-describe-bindings t)

(paradox-require 'swiper)

(provide 'init-ivy)
