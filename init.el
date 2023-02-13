(add-to-list 'load-path "~/.emacs.d/xah-fly-keys")
(load-file "~/.emacs.d/ncx-basics.el")
(load-file "~/.emacs.d/ncx-navigation.el")
(load-file "~/.emacs.d/ncx-coding.el")
(load-file "~/.emacs.d/ncx-theme.el")

;; on rare occassion I need to download package
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(racket-mode solidity-mode scala-mode pyvenv python-black lua-mode highlight-indentation elpygen doom-modeline-now-playing doom company clojure-mode ada-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
