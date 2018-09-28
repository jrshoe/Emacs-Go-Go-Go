(setq-default dired-dwim-target t)

(paradox-require 'diredfl)
(with-eval-after-load 'dired
  (diredfl-global-mode))


(paradox-require 'diff-hl)

(with-eval-after-load 'dired
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode))


(provide 'init-dired)
