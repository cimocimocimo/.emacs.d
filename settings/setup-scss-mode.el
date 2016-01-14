(defun my-scss-mode-hook ()
  "Hooks for SASS mode."
  (setq-default scss-compile-at-save nil)
  ;; (setq-default scss-output-directory "/dev/shm")
  ;; (flymake-mode-on)
  )
(add-hook 'scss-mode-hook 'my-scss-mode-hook)
(add-hook 'scss-mode-hook 'turn-on-css-eldoc)

(provide 'setup-scss-mode)
