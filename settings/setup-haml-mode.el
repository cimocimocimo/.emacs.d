(require 'haml-mode)
(add-hook 'haml-mode-hook
	  (lambda ()
	    (define-key haml-mode-map "\C-m" 'newline-and-indent)))
