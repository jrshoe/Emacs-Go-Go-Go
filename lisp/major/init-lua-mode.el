(paradox-require 'lua-mode)
(paradox-require 'company-lua)

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))


(defun my-lua-mode-company-init ()
  (setq-local company-backends '((company-lua
				  company-etags
				  company-dabbrev-code
				  company-yasnippet))))

(add-hook 'lua-mode-hook #'my-lua-mode-company-init)

(provide 'init-lua-mode)
