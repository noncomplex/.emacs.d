(add-to-list 'load-path "~/.emacs.d/xah-fly-keys")
(load-file "~/.emacs.d/ncx-basics.el")
(load-file "~/.emacs.d/ncx-bindings.el")
(load-file "~/.emacs.d/ncx-coding.el")
(load-file "~/.emacs.d/ncx-theme.el")

;; ---------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize) ;; causes 'End of file during parsing' error when loading if uncommented
;; (package-refresh-contents)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package dumb-jump
  :ensure t)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package vertico
  :ensure t
  :bind (:map vertico-map
	      ("C-j" . vertico-next)
	      ("C-i" . vertico-previous)
	      ("C-o" . vertico-exit))
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode)
  (set-face-background 'vertico-current "#3B3F4D")
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(orderless vertico dumb-jump use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
