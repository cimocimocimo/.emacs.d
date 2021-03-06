(defun myorg-update-parent-cookie ()
  (when (equal major-mode 'org-mode)
    (save-excursion
      (ignore-errors
        (org-back-to-heading)
        (org-update-parent-todo-statistics)))))

(defadvice org-kill-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(defadvice kill-whole-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map (kbd "M-<f6>") 'org-capture)
(define-key global-map (kbd "C-c l") 'org-store-link)
(define-key global-map  (kbd "C-c a") 'org-agenda)

;; org-journal
(setq org-journal-dir "~/Dropbox/journal/")
(setq org-journal-date-format "%A %B %e, %Y - (y%Ym%md%d)")

(provide 'setup-org)
