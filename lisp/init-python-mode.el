(paradox-require 'pip-requirements)
(paradox-require 'anaconda-mode)

(with-eval-after-load 'python
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))


(paradox-require 'company-anaconda)

(add-to-list 'company-backends 'company-anaconda)

(provide 'init-python-mode)
