(use-package go-mode
	:straight t
	:config
	(setq gofmt-command "goimports")
	(add-hook 'before-save-hook 'gofmt-before-save))

(add-hook 'go-mode-hook 'lsp-deferred)

(require 'go-mode)
