(use-package company
  :straight t
  :commands company-complete-common company-manual-begin company-grab-line
  :init
  (setq company-idle-delay 0.25
        company-minimum-prefix-length 2
        company-tooltip-limit 14
        company-tooltip-align-annotations t
        company-require-match 'never
        company-global-modes
        '(not erc-mode message-mode help-mode gud-mode eshell-mode)
        company-backends  '(company-capf)
        company-frontends '(company-pseudo-tooltip-frontend
                            company-echo-metadata-frontend)))
(use-package company-dict
  :straight t)
(use-package company-prescient
  :straight t
  :hook (company-mode . company-prescient-mode)
  :config
  ;; NOTE prescient config duplicated with `ivy'
  (setq prescient-save-file (concat cache-dir "prescient-save.el"))
  (prescient-persist-mode +1)))

(add-hook 'after-init-hook 'global-company-mode)
