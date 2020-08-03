(use-package ruby-mode
  :ensure t
  :mode "\\.\\(?:a?rb\\|aslsx\\)\\'"
  :mode "/\\(?:Brew\\|Fast\\)file\\'"
  :interpreter "j?ruby\\(?:[0-9.]+\\)"
  :config
  (setq ruby-insert-encoding-magic-comment nil))

(use-package inf-ruby
  :straight t)

(use-package company-inf-ruby
  :straight t)
