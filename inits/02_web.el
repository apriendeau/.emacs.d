(use-package web-mode
  :straight t
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.hbs?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.(cs|vb)*html?\\'" . web-mode))
  (setq web-mode-enable-auto-closing t)
  (setq web-mode-enable-auto-quoting t)
  (setq web-mode-markup-indent-offset 2))
