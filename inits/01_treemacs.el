(use-package all-the-icons
  :straight t)

(use-package treemacs
  :straight t
  :init
  (treemacs-resize-icons 20)
  (treemacs-load-theme "custom-theme")
  :config
  (setq treemacs-width 30
	treemacs-recenter-after-tag-follow nil
	treemacs-recenter-after-file-follow nil
	treemacs-recenter-after-project-jump nil
	treemacs-recenter-after-project-expand nil
	treemacs-recenter-distance 0
	treemacs-indentation 1
        treemacs-indentation-string " "
	treemacs-git-mode 'deferred)
  (define-key treemacs-mode-map (kbd "C-c C-f") 'treemacs-find-file))

(require 'treemacs-custom-theme)

(global-set-key (kbd "C-c t") 'treemacs) ; Ctl+c + Ctrl+t treemacs toggle

(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

(use-package treemacs-projectile
  :straight t
  :after treemacs projectile)

(use-package treemacs-magit
  :straight t
  :after treemacs magit)
