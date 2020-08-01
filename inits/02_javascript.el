;; Major modes
(use-package coffee-mode
	:straight t)
(use-package js2-mode
	:straight t)
(use-package rsjx-mode
	:straight t)
(use-package typescript-mode
	:straight t)
(use-package prettier-js
  :straight t)

(setq-default web-mode-markup-indent-offset 2
              web-mode-code-indent-offset 2
              web-mode-css-indent-offset 2
              js-indent-level 2
              js2-indent-level 2
			  rsjx-indent-level 2
              css-indent-offset 2
              typescript-indent-level 2)

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'rsjx-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)
