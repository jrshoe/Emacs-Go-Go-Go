(paradox-require 'pip-requirements)
(paradox-require 'anaconda-mode)

;; useful pkg
;; Live Coding in Python
(paradox-require 'live-py-mode)
;; personal config
;; must be absolute path
(add-hook 'live-py-mode-hook (lambda () (setq live-py-version  "/usr/local/bin/python3") (live-py-update-all)))

;; format python code on save
(paradox-require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)


(with-eval-after-load 'python
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))


(paradox-require 'company-anaconda)

(add-to-list 'company-backends 'company-anaconda)

(provide 'init-python-mode)
