(setq c-default-style "linux")

(defun my-common-cc-mode-setup ()
  "setup shared by all languages (java/groovy/c++ ...)"
  (setq c-basic-offset 4)
  ;make DEL take all previous whitespace with it
  (c-toggle-hungry-state 1)
  ;; give me NO newline automatically after electric expressions are entered
  (setq c-auto-newline nil))

(add-hook 'c++-mode-hook 'my-common-cc-mode-setup)

(provide 'init-cc-mode)
