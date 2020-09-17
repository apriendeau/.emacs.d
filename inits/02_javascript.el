(use-package typescript-mode
  :straight t
  :mode (("\\.ts$" . typescript-mode))
  :mode (("\\.tsx$" . typescript-mode))
  :init
  (add-hook 'typescript-mode-hook 'prettier-js-mode))

(use-package js2-mode
  :straight t
  :mode (("\\.js$" . js2-mode))
  :init
  (add-hook 'js2-mode-hook 'prettier-js-mode))

(use-package rjsx-mode
  :straight t
  :init
  (add-hook 'rsjx-mode-hook 'prettier-js-mode))

(use-package prettier-js
  :straight t)

(setq-default js2-indent-level 2
	      rsjx-indent-level 2
              css-indent-offset 2
	      sass-indent-offset 2
              typescript-indent-level 2)
