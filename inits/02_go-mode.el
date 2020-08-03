(use-package go-mode
  :straight t
  :ensure t
  :config
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package company-go
  :straight t)

(use-package flycheck-golangci-lint
  :straight t
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))

(add-to-list 'auto-mode-alist '("\\.mod" . fundamental-mode))

(add-hook 'go-mode-hook
    (lambda ()
	'lsp-deffered
        (set (make-local-variable 'company-backends) '(company-go))
        (company-mode)))
