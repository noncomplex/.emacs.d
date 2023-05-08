;; navigation - model editing and bindings
;; believe that common actions should be generally relegated to the top row of keys
;; less common keys on the bottom row
;; text editing/navigation on the right hand, other things on the left hand

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
  (define-key xah-fly-command-map (kbd "q") 'ncx-quit) ;; general key when something wrong happens
  (define-key xah-fly-command-map (kbd "<") 'beginning-of-buffer) ;; corresponds to default
  (define-key xah-fly-command-map (kbd ">") 'end-of-buffer) ;; corresponds to default
  
  ;; window movement
  (define-key xah-fly-command-map (kbd "0") 'delete-window) ;; corresponds to default
  (define-key xah-fly-command-map (kbd "3") 'split-window-right) ;; corresponds to default
  (define-key xah-fly-command-map (kbd "r") 'other-window)
  
  ;; don't like vim's jk for moving up and down lines, feels less natural
  (define-key xah-fly-command-map (kbd "j") 'next-line)
  (define-key xah-fly-command-map (kbd "i") 'previous-line)

  ;; intuitively 1 key from left char and right char
  (define-key xah-fly-command-map (kbd "h") 'move-beginning-of-line)
  (define-key xah-fly-command-map (kbd ";") 'move-end-of-line)

  (define-key xah-fly-command-map (kbd "k") 'save-buffer)
  (define-key xah-fly-command-map (kbd "K") 'kill-this-buffer)

  (define-key xah-fly-command-map (kbd "u") 'backward-char)
  (define-key xah-fly-command-map (kbd "o") 'forward-char)

  (define-key xah-fly-command-map (kbd "y") 'backward-word)

  (define-key xah-fly-command-map (kbd "b") 'switch-to-buffer)
  (define-key xah-fly-command-map (kbd "B") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "p") 'forward-word)
  (define-key xah-fly-command-map (kbd "w") 'execute-extended-command)
  (define-key xah-fly-command-map (kbd "f") 'isearch-forward)
  (define-key xah-fly-command-map (kbd "n") 'find-file)

  ;; region stuff
  (define-key xah-fly-command-map (kbd "a") 'set-mark-command)
  (define-key xah-fly-command-map (kbd "D") 'kill-region)
  
  (define-key xah-fly-command-map (kbd "F") 'python-black-buffer) ;; TODO: possibly turn this into a generic formatting command in the future
  
  (define-key isearch-mode-map (kbd "C-i") 'isearch-repeat-backward)
  (define-key isearch-mode-map (kbd "C-j") 'isearch-repeat-forward)

  (define-key isearch-mode-map (kbd "S-SPC") 'ncx-quit)

  (define-key xah-fly-command-map (kbd "t") 'goto-line)
  (define-key xah-fly-command-map (kbd "J") 'newline)

  (define-key xah-fly-command-map (kbd "P") 'run-python)

  ;; future stuff
  (define-key xah-fly-command-map (kbd "I") 'unmapped-binding-msg) ;; some kind of insert command?
  (define-key xah-fly-command-map (kbd "A") 'unmapped-binding-msg) ;; some kind of append command?
  (define-key xah-fly-command-map (kbd "Q") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "W") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "E") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "R") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "T") 'unmapped-binding-msg)
  (define-key xah-fly-command-map (kbd "Y") 'unmapped-binding-msg)
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

