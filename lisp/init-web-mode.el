(paradox-require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.cmp\\'" . web-mode)) ; salesforce
(add-to-list 'auto-mode-alist '("\\.app\\'" . web-mode)) ; salesforce
(add-to-list 'auto-mode-alist '("\\.page\\'" . web-mode)) ; salesforce
(add-to-list 'auto-mode-alist '("\\.component\\'" . web-mode)) ; salesforce
(add-to-list 'auto-mode-alist '("\\.wp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.module\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ftl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xul?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eex?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.\\(jst\\|ejs\\|rhtml\\)\\(\\.erb\\)?\\'"  . web-mode)) ; ruby



(eval-after-load 'web-mode
  '(progn
     (setq web-mode-enable-auto-closing t)
     (setq web-mode-enable-auto-pairing t)
     (setq web-mode-enable-css-colorization t)
	 ;; highlight matching tag
	 (setq web-mode-enable-current-element-highlight t)
     ))

(provide 'init-web-mode)
