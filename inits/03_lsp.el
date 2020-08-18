(setq lsp-keymap-prefix "s-l")

(use-package lsp-mode
  :straight t
  :hook (go-mode . lsp)
  :hook (ruby-mode . lsp)
  :hook (rjsx-mode . lsp)
  :hook (typescript-mode . lsp)
  :hook (css-mode . lsp)
  :hook (sass-mode . lsp)
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands (lsp)
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

(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode)

(use-package company-lsp
  :straight t
  :commands company-lsp)
