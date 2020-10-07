(setq lsp-keymap-prefix "s-l")

(use-package lsp-mode
  :straight t
  :hook ((go-mode . lsp-deferred)
	 (ruby-mode . lsp)
	 (typescript-mode . lsp)
	 (dockerfile-mode . lsp)
	 (css-mode . lsp)
	 (sass-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
  :init
  (setq
   lsp-enable-file-watchers nil
   lsp-idle-delay 0.500
   lsp-completion-provider :capf) ;; 1mb
  (dolist (dir '(
               "[/\\\\]build"
               "[/\\\\]node_modules"))
    (push dir lsp-file-watch-ignored)))


(setq
 read-process-output-max (* 1024 1024)
 gc-cons-threshold 100000000)

(use-package lsp-ivy
  :straight t
  :commands lsp-ivy-workspace-symbol)

(use-package company-lsp
  :straight t
  :commands company-lsp)
