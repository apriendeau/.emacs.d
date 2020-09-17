(use-package typescript-mode
  :straight t
  :mode (("\\.ts$" . typescript-mode))
  :mode (("\\.tsx$" . typescript-mode))
  :hook (typescript-mode . set-js-indentation))

(use-package js2-mode
  :straight t
  :mode (("\\.js$" . js2-mode))
  :hook (js2-mode . set-js-indentation))

(use-package rjsx-mode
  :straight t
  :hook (rjsx-mode . set-js-indentation)
  :mode ("\\.jsx$" . rjsx-mode)
  :init
  (add-hook 'rsjx-mode-hook 'prettier-js-mode))

(use-package prettier-js
  :hook (rsjx-mode js2-mode typescript-mode)
  :straight t)

(defun set-js-indentation()
  (setq indent-tabs-mode nil
	;; indent-line-function 'insert-tab
	tab-width 2
	c-basic-offset 2
	js2-indent-level 2
	rsjx-indent-level 2
        css-indent-offset 2
        sass-indent-offset 2
        typescript-indent-level 2))
