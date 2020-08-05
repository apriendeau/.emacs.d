;; emacs/electric/config.el -*- lexical-binding: t; -*-
(defvar-local +electric-indent-words '()
  "The list of electric words. Typing these will trigger reindentation of the current line.")

(add-hook 'electric-indent-functions
	   (defun +electric-indent-char-fn (_c)
	     (when (and (eolp) +electric-indent-words)
	       (save-excursion
		 (backward-word)
		 (looking-at-p (concat "\\<" (regexp-opt +electric-indent-words)))))))
