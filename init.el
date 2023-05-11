(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize) ;; situations where this causes 'End of file during parsing' error when loading if uncommented, not sure why

(defun ncx-package-install (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

(add-to-list 'load-path "~/.emacs.d/xah-fly-keys")
(load-file "~/.emacs.d/ncx-theme.el")
(load-file "~/.emacs.d/ncx-basics.el")
(load-file "~/.emacs.d/ncx-bindings.el")
(load-file "~/.emacs.d/ncx-coding.el")


;; jump to and from definitions with M-. / M-,
(ncx-package-install 'dumb-jump)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(remove-hook 'xref-after-return-hook 'xref-pulse-momentarily)
(remove-hook 'xref-after-jump-hook 'xref-pulse-momentarily)

;; completion filter for vertico
(ncx-package-install 'orderless)
(setq completion-styles '(orderless basic))
(setq completion-category-overrides '((file (styles basic partial-completion))))

;; a bit nicer than ido
(ncx-package-install 'vertico)
(vertico-mode)
(set-face-background 'vertico-current "#3B3F4D")
(define-key vertico-map (kbd "C-j") 'vertico-next)
(define-key vertico-map (kbd "C-i") 'vertico-previous)
(define-key vertico-map (kbd "C-o") 'vertico-previous)
(setq vertico-cycle t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(anaconda-mode vertico orderless dumb-jump)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
