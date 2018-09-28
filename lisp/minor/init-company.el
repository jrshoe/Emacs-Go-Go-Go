(paradox-require 'company)
(paradox-require 'company-statistics)
(paradox-require 'company-c-headers)
(paradox-require 'company-posframe)


(eval-after-load 'company
  '(progn
     (company-statistics-mode)
     ))


(add-hook 'after-init-hook 'global-company-mode)


;; more fluent when typing
(setq company-require-match nil)

;; delay setup
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 3)

;; I like C-n C-p
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
  (define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1))))

;; set up posframe
(company-posframe-mode 1)

(when (featurep 'robe)
  (add-to-list 'company-backends 'company-robe))





(provide 'init-company)
