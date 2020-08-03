(use-package lsp-mode
  :straight t
  :hook (go-mode . lsp-deferred)
  :hook (ruby-mode . lsp-deferred)
  :hook (rjsx-mode . lsp-deferred)
  :hook (typescript-mode . lsp-deferred)
  :hook (css-mode . lsp-deferred)
  :hook (sass-mode . lsp-deferred)
  :commands (lsp lsp-deferred))


(use-package lsp-ui
  :straight t)
