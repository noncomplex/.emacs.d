(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize) ;; situations where this causes 'End of file during parsing' error when loading if uncommented, not sure why

(defun ncx-package-install (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

;; (ncx-package-install 'vertico)
;; (vertico-mode)
;; (set-face-background 'vertico-current "#3B3F4D")
;; (define-key vertico-map (kbd "C-j") 'vertico-next)
;; (define-key vertico-map (kbd "C-i") 'vertico-previous)
;; (define-key vertico-map (kbd "C-o") 'vertico-previous)
;; (setq vertico-cycle t)

(add-to-list 'load-path "~/.emacs.d/xah-fly-keys")
(load-file "~/.emacs.d/ncx-basics.el")
(load-file "~/.emacs.d/ncx-theme.el")
(load-file "~/.emacs.d/ncx-coding.el")
(load-file "~/.emacs.d/ncx-bindings.el")

