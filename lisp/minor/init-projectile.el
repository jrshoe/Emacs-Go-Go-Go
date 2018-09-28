(paradox-require 'projectile)

(projectile-global-mode)

(setq projectile-completion-system 'ivy)

(setq projectile-globally-ignored-file-suffixes '("~"))

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-projectile)
