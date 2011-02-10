(add-to-list 'load-path "~/emacs/")

;; I don't always use Unicode. But when I do, I use the TeX input
;; method.
(setq default-input-method "TeX")

;; Set up file associations here
(add-to-list 'auto-mode-alist '("\\.org$'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.xml$'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.docbook$'" . nxml-mode))

;; Major mode hooks
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'flyspell-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'latex-math-mode)
(add-hook 'LaTeX-mode-hook 'reftex-mode)

(add-hook 'nxml-mode-hook '(lambda () (setq nxml-slash-auto-complete-flag t)))

;; Helpful functions/macros
(fset 'insert-date
   "\C-u\C-[!date '+%l:%M%P on %A, %D'\C-m\C-e\C-m")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(inhibit-startup-echo-area-message "clintonc")
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
