(use-package dockerfile-mode
  :mode (("Dockerfile\\$" . dockerfile-mode))
  :straight t)

(use-package docker
  :bind ("C-c d" . docker)
  :straight t)

(use-package docker-tramp
  :straight t)
