(use-package hl-todo
	:straight t
	:hook (prog-mode . hl-todo-mode)
  	:config
  	(setq hl-todo-highlight-punctuation ":")
	(setq hl-todo-keyword-faces
          `(("TODO"       warning bold)
            ("FIXME"      error bold)
            ("HACK"       font-lock-constant-face bold)
            ("REVIEW"     font-lock-keyword-face bold)
            ("NOTE"       success bold)
            ("DEPRECATED" font-lock-doc-face bold))))
