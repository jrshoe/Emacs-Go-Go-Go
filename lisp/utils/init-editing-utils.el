(when (fboundp 'electric-pair-mode)
  (add-hook 'after-init-hook 'electric-pair-mode))
(when (eval-when-compile (version< "24.4" emacs-version))
  (add-hook 'after-init-hook 'electric-indent-mode))

(paradox-require 'list-unicode-display)

;;----------------------------------------------------------------------------
;; Expand region
;;----------------------------------------------------------------------------
(paradox-require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;;----------------------------------------------------------------------------
;;; A simple visible bell which works in all terminal types
;;----------------------------------------------------------------------------

(paradox-require 'mode-line-bell)
(add-hook 'after-init-hook 'mode-line-bell-mode)

;;----------------------------------------------------------------------------
;; Show matching parens
;;----------------------------------------------------------------------------

(add-hook 'after-init-hook 'show-paren-mode)

;;----------------------------------------------------------------------------
;; auto indent a block
;;----------------------------------------------------------------------------

(paradox-require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;;----------------------------------------------------------------------------
;; clean up all the needless whitespace before save the buffer
;;----------------------------------------------------------------------------
(paradox-require 'whitespace-cleanup-mode)
(add-hook 'after-init-hook 'global-whitespace-cleanup-mode)

;;----------------------------------------------------------------------------
;; some ways to adjust the parens
;;----------------------------------------------------------------------------

(paradox-require 'adjust-parens)
(add-hook 'after-init-hook 'adjust-parens-mode)

;;----------------------------------------------------------------------------
;; highlight current line
;;----------------------------------------------------------------------------

(global-hl-line-mode 1)

;;----------------------------------------------------------------------------
;; highlight the symbol
;;----------------------------------------------------------------------------
(paradox-require 'symbol-overlay)

(dolist (hook '(prog-mode-hook html-mode-hook css-mode-hook yaml-mode-hook conf-mode-hook))
  (add-hook hook 'symbol-overlay-mode))
(with-eval-after-load 'symbol-overlay
  (define-key symbol-overlay-mode-map (kbd "M-i") 'symbol-overlay-put)
  (define-key symbol-overlay-mode-map (kbd "M-n") 'symbol-overlay-jump-next)
  (define-key symbol-overlay-mode-map (kbd "M-p") 'symbol-overlay-jump-prev))


;;----------------------------------------------------------------------------
;; M-return
;;----------------------------------------------------------------------------
(defun newline-without-break-of-line ()
  "1. move to end of the line.
  2. insert newline with index"
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))

(global-set-key (kbd "<M-return>") 'newline-without-break-of-line)

;;----------------------------------------------------------------------------
;; Move Text
;;----------------------------------------------------------------------------
(paradox-require 'move-text)
(move-text-default-bindings)
;;----------------------------------------------------------------------------
;; Highlight TODO
;;----------------------------------------------------------------------------
(paradox-require 'hl-todo)
(hl-todo-mode)

;;----------------------------------------------------------------------------
;; pop win
;;----------------------------------------------------------------------------
(paradox-require 'popwin)
(popwin-mode 1)



(provide 'init-editing-utils)

