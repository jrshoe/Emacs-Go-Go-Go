;; -*- lexical-binding: t -*-
(setq debug-on-error t)
(defalias 'yes-or-no-p 'y-or-n-p)
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
;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'after-init-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))
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
;;---------------------------------------------------------------
;;---------------------------------------------------------------
;;---------------------------------------------------------------
;;---------------------------------------------------------------
;;---------------------------------------------------------------


(provide 'init)



