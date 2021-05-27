;; -*- lexical-binding: t -*-
;; set up a separate location for backup and temp files
(setq package-enable-at-startup nil)

(defconst emacs-tmp-dir (expand-file-name "auto-save" user-emacs-directory))
(defvar --backup-directory (concat user-emacs-directory "backups"))

(if (not (file-exists-p --backup-directory))
    (make-directory --backup-directory t))

(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 20              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
  )

  (setq backup-directory-alist `(("." . ,(expand-file-name
                                          (concat user-emacs-directory "backups")))))

(defconst cache-dir (concat user-emacs-directory ".local/cache/"))

(defconst emacs-bootstrap-dir (expand-file-name "bootstrap" user-emacs-directory))
(defconst emacs-themes-dir (expand-file-name "themes" user-emacs-directory))

;; enable sourcing from init scripts in emacs.d/subinits
(push emacs-bootstrap-dir load-path)
(push emacs-themes-dir load-path)

(require 'package-management)

(use-package init-loader
  :straight t)

(require 'init-loader)
(init-loader-load (expand-file-name "inits" user-emacs-directory))
(init-loader-load)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#282a36" :foreground "#f8f8f2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco")))))
