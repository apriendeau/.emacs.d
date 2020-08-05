(use-package all-the-icons
  :straight t)

(use-package treemacs
  :straight t
  :init
  (treemacs-resize-icons 20)
  (treemacs-load-theme "custom-theme")
  :config
  (setq treemacs-width 30
	treemacs-indentation 1
        treemacs-indentation-string " "))

(require 'treemacs-custom-theme)
(global-set-key (kbd "C-c C-t") 'treemacs) ; Ctl+c + Ctrl+t neotree-toggle

(use-package projectile
  :straight t)

(use-package treemacs-projectile
  :straight t
  :after treemacs projectile
  :ensure t)

(use-package treemacs-magit
  :straight t
  :after treemacs magit
  :ensure t)
