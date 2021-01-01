(use-package js2-mode
  :straight t
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode)))

(use-package prettier-js
  :straight t)
