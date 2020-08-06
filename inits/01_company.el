(use-package company
  :straight t
  :init (add-hook 'after-init-hook 'global-company-mode))

(use-package company-lsp
  :straight t)

(use-package company-prescient
  :straight t
  :hook (company-mode . company-prescient-mode)
  :config
  ;; NOTE prescient config duplicated with `ivy'
  (setq prescient-save-file (concat cache-dir "prescient-save.el"))
  (prescient-persist-mode +1))

(add-hook 'after-init-hook 'global-company-mode)
