(use-package dash
  :straight t)

(use-package s
  :straight t)

(use-package origami
  :straight t
  :bind (:map origami-mode-map
	      ("C-c f" . origami-toggle-node)))
