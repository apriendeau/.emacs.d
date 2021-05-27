(use-package all-the-icons
  :straight t)

(use-package treemacs
  :straight t
  :after 'all-the-icons
  :config
  (treemacs-load-theme "all-the-icons")
  (treemacs-resize-icons 12)
  (setq treemacs-width 30
	treemacs-recenter-after-tag-follow nil
	treemacs-recenter-after-file-follow nil
	treemacs-recenter-after-project-jump nil
	treemacs-recenter-after-project-expand nil
	treemacs-recenter-distance 0
	treemacs-indentation 1
        treemacs-indentation-string " "
	treemacs-git-mode 'deferred))



(global-set-key (kbd "C-c t") 'treemacs) ; Ctl+c + Ctrl+t treemacs toggle

(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(use-package treemacs-projectile
  :straight t
  :after treemacs projectile)

(use-package treemacs-magit
  :straight t
  :after treemacs magit)
