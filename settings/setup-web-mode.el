
(setq web-mode-engines-alist
      '(("django"    . "\\.tmpl.html\\'"))
      )

;; Indentation
;; HTML offset indentation
(setq web-mode-markup-indent-offset 2)
;; CSS offset indentation
(setq web-mode-css-indent-offset 4)
;; Script offset indentation (for JavaScript, Java, PHP, etc.)
(setq web-mode-code-indent-offset 4)

;; Left padding
;; For <style> parts
(setq web-mode-style-padding 4)
;; For <script> parts
(setq web-mode-script-padding 4)
;; For multi-line blocks
(setq web-mode-block-padding 0)

(provide 'setup-web-mode)
