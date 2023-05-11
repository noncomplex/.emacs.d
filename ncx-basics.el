(require 'org)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(fringe-mode -1)
(blink-cursor-mode 0) ;; may not work in GNU/Linu
(setq inhibit-startup-screen t)
(setq-default truncate-lines t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(show-paren-mode 1)

;; frame size
(when window-system
  (set-frame-position (selected-frame) 900 500)
  (set-frame-size (selected-frame) 160 40))
(setq initial-frame-alist '((width . 100)
                            (tool-bar-lines . 0) 
                            (vertical-scroll-bars . nil)
                            (internal-border-width . 0)))
(setq default-frame-alist '((tool-bar-lines . 0) 
                            (vertical-scroll-bars . nil)
                            (width . 100) (height . 40) 
                            (internal-border-width . 0)))
(setq-default left-margin-width 1 right-margin-width 1)

;; undo limits
(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

;; (require 'ido)
;; (ido-mode 1)
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (setq ido-show-dot-for-dired t) ;; access dired with /.

(setq temporary-file-directory "a:/temp/")
;; (format-time-string "---------------- %a, %d %b %y: %I:%M%p")

(defun open-terminal ()
  (interactive)
  ;; (shell-command "cmder"))
  (cond ((eq system-type 'windows-nt) (shell-command (concat "wt -w _quake -d" default-directory)))
	((eq system-type 'darwin) (shell-command (concat "open -a iTerm " default-directory)))
	((eq system-type 'gnu/linux) nil))) ;; adding these as necessary

(global-set-key (kbd "M-S") 'open-terminal)
