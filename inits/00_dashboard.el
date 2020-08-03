(use-package dashboard
  :straight t
  :ensure t
  :init
  (setq dashboard-center-content t
	dashboard-startup-banner 'logo
	dashboard-banner-logo-title "This is emacs...")
  :config
  (dashboard-setup-startup-hook))
