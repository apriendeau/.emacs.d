(use-package go-mode
	:straight t
	:config
	(setq gofmt-command "goimports")
	(add-hook 'before-save-hook 'gofmt-before-save))

(add-hook 'go-mode-hook
    (lambda ()
	'lsp-deffered  
        (set (make-local-variable 'company-backends) '(company-go))
        (company-mode)))
(require 'go-mode)
