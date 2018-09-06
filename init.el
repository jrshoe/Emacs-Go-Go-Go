;; -*- lexical-binding: t -*-
(setq debug-on-error t)
(defalias 'yes-or-no-p 'y-or-n-p)
;; no beep
(setq ring-bell-function 'ignore)
;;---------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))
;;---------------------------------------------------------------
;; custom.el
;; check: package-autoremove
(package-initialize)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
;;---------------------------------------------------------------
;; set your cask.el
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
;;---------------------------------------------------------------
;; record  package-install in Cask file
(require 'pallet)
(pallet-mode t)
;;---------------------------------------------------------------
;; make list-packages & require more powerful
(require 'paradox)
(paradox-enable)
;;---------------------------------------------------------------
;; easy to load .emacs.d/lisp/init-*.el flie
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;---------------------------------------------------------------
(paradox-require 'dash)
;;---------------------------------------------------------------
;; Set up $PATH
(require 'init-exec-path) 
;;---------------------------------------------------------------
;; no littering!!!
(require 'init-no-littering)
;;---------------------------------------------------------------
;; load custom.el
(when (file-exists-p custom-file)
  (load custom-file))
;;---------------------------------------------------------------
(require 'init-gui-frames)
(require 'init-themes)
;;---------------------------------------------------------------
(require 'init-dired)
(require 'init-isearch)
(require 'init-uniquify)
;;---------------------------------------------------------------
(require 'init-smex)
(require 'init-ivy)
;;---------------------------------------------------------------
(require 'init-company)
(require 'init-projectile)
(require 'init-yasnippet)
(require 'init-git)
(require 'init-rg)
;;---------------------------------------------------------------
(require 'init-cc-mode)
(require 'init-python-mode)
(require 'init-ruby-mode)
(require 'init-js-mode)
(require 'init-web-mode)
(require 'init-org-mode)
;;---------------------------------------------------------------
(require 'init-editing-utils)
;;---------------------------------------------------------------
(require 'init-keybindings)
;;---------------------------------------------------------------
;; diminish mode
;; put it to the bottom
(require 'init-modeline)

(provide 'init)



