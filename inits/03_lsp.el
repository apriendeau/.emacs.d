(use-package lsp-mode
  :straight t
  :hook (go-mode . lsp-deferred)
  :hook (ruby-mode . lsp-deferred)
  :commands (lsp lsp-deferred))
