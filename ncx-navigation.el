;; navigation - model editing and bindings

(add-to-list 'load-path "~/.emacs.d/xah-fly-keys/")
(require 'xah-fly-keys) ;; https://github.com/xahlee/xah-fly-key
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)

;; xah-fly-keys bindings
;; "S-SPC" only works in GUI and not through terminal
(global-set-key (kbd "S-SPC") 'xah-fly-command-mode-activate)

(with-eval-after-load 'xah-fly-keys
  (define-key dired-mode-map (kbd "S-SPC") 'xah-fly-command-mode-activate)
  (define-key xah-fly-command-map (kbd "e") 'xah-fly-insert-mode-activate)
  (define-key xah-fly-command-map (kbd "<") 'beginning-of-buffer) ;; similar to default
  (define-key xah-fly-command-map (kbd ">") 'end-of-buffer) ;; similar to default
  (define-key xah-fly-command-map (kbd "3") 'split-window-right) ;; similar to default
  
  ;; right hand: up-down
  (define-key xah-fly-command-map (kbd "j") 'next-line)
  (define-key xah-fly-command-map (kbd "i") 'previous-line)

  ;; left hand equivalent: search and insert  
  ;; beginning of line and end of line
  (define-key xah-fly-command-map (kbd "h") 'move-beginning-of-line)
  (define-key xah-fly-command-map (kbd ";") 'move-end-of-line)

  (define-key xah-fly-command-map (kbd "k") 'save-buffer)
  (define-key xah-fly-command-map (kbd "K") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "q") 'ncx-quit)

  (define-key xah-fly-command-map (kbd "u") 'backward-char)
  (define-key xah-fly-command-map (kbd "o") 'forward-char)
  (define-key xah-fly-command-map (kbd "O") 'other-window)

  (define-key xah-fly-command-map (kbd "y") 'backward-word)
  (define-key xah-fly-command-map (kbd "r") 'forward-word)

  (define-key xah-fly-command-map (kbd "b") 'switch-to-buffer)
  (define-key xah-fly-command-map (kbd "B") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "p") 'forward-word)

  (define-key xah-fly-command-map (kbd "a") 'set-mark-command)
  (define-key xah-fly-command-map (kbd "f") 'isearch-forward)
  
  (define-key xah-fly-command-map (kbd "F") 'python-black-buffer) ;; TODO: possibly turn this into a generic formatting command in the future
  
  (define-key isearch-mode-map (kbd "C-i") 'isearch-repeat-backward)
  (define-key isearch-mode-map (kbd "C-j") 'isearch-repeat-forward)

  (define-key isearch-mode-map (kbd "S-SPC") 'ncx-quit)

  (define-key xah-fly-command-map (kbd "t") 'goto-line)
  (define-key xah-fly-command-map (kbd "J") 'newline)
  (global-set-key (kbd "C-n") 'newline))
(global-set-key (kbd "S-SPC") 'xah-fly-command-mode-activate)


(defun unmapped-binding-msg ()
  (interactive)
  (message "UNMAPPED BINDING"))

;; (add-hook 'prog-mode-hook 'xah-fly-keys)
(defun ncx-quit ()
  (interactive)
  (if (active-minibuffer-window)
      (minibuffer-keyboard-quit)
    (keyboard-quit)))

