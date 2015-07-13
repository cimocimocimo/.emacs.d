(add-hook 'haml-mode-hook
	  (lambda ()
	    (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(provide 'setup-haml-mode)
