;; stuff for coding

;; python
(setq python-indent-guess-indent-offset t)  
(setq python-indent-guess-indent-offset-verbose nil)

;; js
(setq js-indent-level 2)
(add-hook 'go-mode-hook
	  (lambda ()
	    (setq-default)
	    (setq tab-width 2)
	    (setq standard-indent 2)
	    (setq indent-tabs-mode nil)))
