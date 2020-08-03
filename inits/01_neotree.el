(use-package neotree
  :straight t
  :ensure t
  :init
  (setq neo-autorefresh nil
	neo-confirm-create-file 'off-p
	neo-show-hidden-files nil
	neo-theme (if (display-graphic-p) 'arrow)))


(global-set-key (kbd "C-c C-t") 'neotree-toggle) ; Ctl+c + Ctrl+t neotree-toggle

(add-hook 'neotree-mode-hook
	  (lambda ()
	    (define-key neotree-mode-map (kbd "C-c C-h") 'neotree-enter-horizontal-split)
	    (define-key neotree-mode-map (kbd "C-c C-v") 'neotree-enter-vertical-split)))
