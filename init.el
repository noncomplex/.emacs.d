(add-to-list 'load-path "~/.emacs.d/xah-fly-keys")
(load-file "~/.emacs.d/ncx-basics.el")
(load-file "~/.emacs.d/ncx-bindings.el")
(load-file "~/.emacs.d/ncx-coding.el")
(load-file "~/.emacs.d/ncx-theme.el")

;; on rare occassion I need to download packages
;; ---------------------------------------------
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (package-initialize) ;; causes 'End of file during parsing' error when loading if uncommented
;; (package-refresh-contents)
