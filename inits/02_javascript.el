(use-package typescript-mode
  :straight t
  :ensure t)
(use-package js2-mode
  :straight t)
(use-package rjsx-mode
  :straight t)
(use-package prettier-js
  :straight t)

(setq-default js2-indent-level 2
	      rsjx-indent-level 2
              css-indent-offset 2
              typescript-indent-level 2)

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'rsjx-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)
