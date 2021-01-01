(use-package web-mode
  :straight t
  :hook ('web-mode . 'prettier-js-mode)
  :mode (("\\.tsx?\\'" . web-mode))
  :mode (("\\.html?\\'" . web-mode))
  :mode (("\\.hbs?\\'" . web-mode))
  :mode (("\\.as[cp]x?\\'" . web-mode))
  :mode (("\\.(cs|vb)*html?\\'" . web-mode))
  :config
  (setq web-mode-enable-auto-closing t
	web-mode-css-indent-offset 2
	web-mode-code-indent-offset 2
	web-mode-enable-auto-quoting t
	web-mode-markup-indent-offset 2))

(use-package company-web
  :straight t)

(use-package counsel-css
  :straight t)

(use-package scss-mode
  :straight t
  :hook ('scss-mode . 'prettier-js)
  :mode (("\\.scss$" . scss-mode)))

(use-package rainbow-mode
  :straight t)
