(paradox-require 'json-mode)
(paradox-require 'js2-mode)

;; Change some defaults: customize them to override
(setq-default js2-basic-offset 2
	      js2-bounce-indent-p nil)
(with-eval-after-load 'js2-mode
  ;; Disable js2 mode's syntax error highlighting by default...
  (setq-default js2-mode-show-parse-errors nil
		js2-mode-show-strict-warnings nil)


  (with-eval-after-load 'js2-mode
    (js2-imenu-extras-setup)))

(provide 'init-js-mode)
