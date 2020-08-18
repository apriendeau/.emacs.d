(use-package magit
  :straight t
  :config
  (global-set-key (kbd "C-c m") 'magit-status))

(use-package git-gutter
  :straight t
  :init
  (global-git-gutter-mode +1)
  :config
  (custom-set-variables
   '(git-gutter:modified-sign " ") ;; two space
   '(git-gutter:added-sign " ")    ;; multiple character is OK
   '(git-gutter:deleted-sign " "))

  (set-face-background 'git-gutter:modified "#bd93f9")
  (set-face-background 'git-gutter:added "#50fa7b")
  (set-face-background 'git-gutter:deleted "#ff5555"))
