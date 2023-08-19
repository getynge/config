(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
	'(custom-safe-themes
		 '("34af44a659b79c9f92db13ac7776b875a8d7e1773448a8301f97c18437a822b6" default))
	'(package-selected-packages
		 '(cargo-mode rust-mode company lsp-mode go-mode leuven-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'notmuch)
(require 'lsp-mode)
(require 'rust-mode)
(setq-default tab-width 2)
(setq lisp-indent-offset 2)
(setq browse-url-browser-function 'browse-url-generic browse-url-generic-program "firefox")
(setq rust-format-on-save t)
(add-hook 'emacs-startup-hook
	(lambda ()
		(load-theme 'leuven-dark)
		))
(add-hook 'go-mode-hook 'lsp-deferred)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'rust-mode-hook
	(lambda () (setq indent-tabs-mode nil)))
(add-hook 'rust-mode-hook 'lsp-deferred)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
