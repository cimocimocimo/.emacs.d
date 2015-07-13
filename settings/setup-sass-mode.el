;; prevents haml-mode snippets from loading for sass-mode
;; http://stackoverflow.com/questions/22116999/prevent-haml-snippets-loading-when-using-sass-mode-and-yasnippet
;; https://github.com/capitaomorte/yasnippet/issues/465
(eval-after-load "yasnippet"
  '(progn (defadvice yas--modes-to-activate (after my-simple-advise)
           (when (eq major-mode 'sass-mode)
             (setq ad-return-value (remove 'haml-mode ad-return-value))))

         (ad-activate 'yas--modes-to-activate)))

(provide 'setup-sass-mode)
