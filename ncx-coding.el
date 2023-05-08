;; stuff for coding

;; python
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

(setq python-indent-guess-indent-offset t)  
(setq python-indent-guess-indent-offset-verbose nil)

(add-hook 'python-mode-hook
(lambda ()
  (ncx-package-install 'anaconda-mode) ;; works nicely with dumb-jump
  (anaconda-mode)))

;; js
(setq js-indent-level 2)
(add-hook 'go-mode-hook
	  (lambda ()
	    (setq-default)
	    (setq tab-width 2)
	    (setq standard-indent 2)
	    (setq indent-tabs-mode nil)))

