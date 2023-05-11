;; alts: Iosevka Comfy Liberation Mono, Roboto Mono, Consolas, Cousine
;; (set-frame-font "Liberation Mono-14" nil t) 
(set-face-attribute 'default nil :font "Roboto Mono-14:weight=book")
(setq initial-frame-alist '((fullscreen . maximized) (font . "Roboto Mono-14:weight=book"))
      default-frame-alist '((fullscreen . maximized) (font . "Roboto Mono-14:weight=book")))
(set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-14")
(setq fg-color "#c3c0b0")
(setq xanadu "#738678")
(setq mystic "#D65282") ;; use for errors
(set-background-color "#3B3F4D") ;; forgot what, but based on #262832
(set-background-color "#1F262A") ;; switch between this and the above
(set-background-color "#262632")
(set-foreground-color fg-color)
;; (set-foreground-color "#8bc6a2")
(set-cursor-color mystic)


(set-face-foreground 'font-lock-keyword-face mystic) ;; AA96AA
(set-face-foreground 'font-lock-type-face "#2EC09C")
(set-face-foreground 'font-lock-builtin-face "#2EC09C")
(set-face-foreground 'font-lock-constant-face "#d1b897")
(set-face-foreground 'font-lock-function-name-face fg-color)
(set-face-foreground 'font-lock-variable-name-face fg-color)
(set-face-foreground 'font-lock-string-face "#62ac88") ;; #A6AA9A

(setq ncx-comment-regular-face xanadu)
(setq ncx-comment-highlight-face "#80FD87")
(set-face-foreground 'font-lock-comment-face ncx-comment-regular-face) ;; #44A368 56ac77 #80FD87

(set-face-foreground 'minibuffer-prompt "#41D1A1")
;; (set-face-foreground 'ido-subdir "#738678")

(set-face-background 'region "#3B3F4D")
(set-face-foreground 'region fg-color)

(set-face-attribute 'mode-line nil
                    :background "#1F262A"
		    :foreground fg-color
		    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :background "#1F262A"
		    :foreground xanadu
		    :box nil)

;; high comments
;; changes comment colors
(defun ncx-highlight-comments ()
  (interactive)
  (if (string= (face-attribute font-lock-comment-face :foreground) ncx-comment-regular-face)
      (set-face-foreground 'font-lock-comment-face ncx-comment-highlight-face)
    (set-face-foreground 'font-lock-comment-face ncx-comment-regular-face)))
