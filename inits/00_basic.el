(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(delete-selection-mode)

(setq user-full-name "Austin Riendeau")
(setq user-mail-address "austin@apriendeau.com")

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; C-x 1 full window
;; C-x 2 vertical window
;; C-x 3 horizontal window
;; C-x o jump windows
;; C-x 0 close window
;; M-x Command == :Command
(defvar austin/tweaking t)

(defun austin/reload ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(when austin/tweaking
  (global-set-key (kbd "C-|") 'austin/reload))

(setq-default cursor-type 'bar)

(global-set-key (kbd "C-/") 'comment-or-uncomment-region)

;; because typing yes or no sucks
(defalias 'yes-or-no-p 'y-or-n-p)
