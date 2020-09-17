(use-package yaml-mode
  :straight t
  :mode (("\\.yaml$" . yaml-mode))
  :mode (("\\.yml$" . yaml-mode))
  :config'
  (define-key yaml-mode-map "\C-m" 'newline-and-indent))
