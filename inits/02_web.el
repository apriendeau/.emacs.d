(use-package web-mode
  :straight t
  :init
  (add-hook 'web-mode-hook 'prettier-js-mode)
  :config
  (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.hbs?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.(cs|vb)*html?\\'" . web-mode))
  (setq web-mode-enable-auto-closing t
	web-mode-css-indent-offset 2
	web-mode-enable-auto-quoting t
	web-mode-markup-indent-offset 2))

(use-package company-web
  :straight t)

(use-package counsel-css
  :straight t)

(use-package scss-mode
  :straight t
  :mode (("\\.scss$" . scss-mode))
  :init
  (add-hook 'scss-mode-hook 'prettier-js-mode))

(use-package rainbow-mode
  :straight t)
