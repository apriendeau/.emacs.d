(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(toggle-scroll-bar -1)
(tool-bar-mode -1)


;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)
