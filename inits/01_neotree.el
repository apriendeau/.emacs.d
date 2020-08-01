(use-package neotree
	:straight t)

(require 'neotree)
(global-set-key (kbd "C-c C-t") 'neotree-toggle) ; Ctl+c + Ctrl+t neotree-toggle

(setq neo-theme (if (display-graphic-p) 'arrow))

(add-hook 'neotree-mode-hook
	(lambda ()
		(define-key neotree-mode-map (kbd "C-c C-h") 'neotree-enter-horizontal-split)
        (define-key neotree-mode-map (kbd "C-c C-v") 'neotree-enter-vertical-split)))
