(paradox-require 'projectile)


(projectile-global-mode)

(setq projectile-completion-system 'ivy)

(setq projectile-globally-ignored-file-suffixes '("~"))

(provide 'init-projectile)
