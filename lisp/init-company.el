(paradox-require 'company)
(paradox-require 'company-statistics)
(paradox-require 'company-c-headers)
(paradox-require 'company-posframe)


(eval-after-load 'company
  '(progn
     (company-statistics-mode)
     ))


(add-hook 'after-init-hook 'global-company-mode)

;; copy from somewhere
;; for better experience
(if (fboundp 'evil-declare-change-repeat)
    (mapc #'evil-declare-change-repeat
	  '(company-complete-common
	    company-select-next
	    company-select-previous
	    company-complete-selection
	    company-complete-number)))
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 3)


;; set up posframe
(company-posframe-mode 1)

(when (featurep 'robe)
  (add-to-list 'company-backends 'company-robe))

(provide 'init-company)
