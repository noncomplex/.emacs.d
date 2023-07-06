;; alts: Iosevka Comfy Liberation Mono, Roboto Mono, Consolas, Cousine
;; (set-frame-font "Liberation Mono-14" nil t) 
(set-face-attribute 'default nil :font "Jetbrains Mono-13:weight=normal")
(setq initial-frame-alist '((fullscreen . maximized) (font . "Jetbrains Mono-13:weight=book"))
      default-frame-alist '((fullscreen . maximized) (font . "Jetbrains Mono-13:weight=book")))

(set-face-attribute 'mode-line nil :font "Jetbrains Mono-14")
(set-face-foreground 'mode-line "fg-color")
(set-face-background 'mode-line "#2e2e3d")
(set-face-attribute 'mode-line nil
                    :box nil)
(set-face-foreground 'mode-line-inactive "fg-color")
(set-face-background 'mode-line-inactive "#1e1e27")
(set-face-attribute 'mode-line-inactive nil
                    :box nil)

(setq fg-color "#B2BDB6")
(setq xanadu "#738678")
(setq mystic "#D65282") ;; use for errors
(set-background-color "#3B3F4D") ;; forgot what, but based on #262832
(set-background-color "#262632")
(set-foreground-color fg-color)

(set-cursor-color fg-color)
(set-face-background 'fringe "#262632")

(set-face-foreground 'font-lock-keyword-face mystic) ;; #8ae234
(set-face-foreground 'font-lock-type-face "lightblue")
(set-face-foreground 'font-lock-builtin-face "#2EC09C")
(set-face-foreground 'font-lock-constant-face "#d1b897")
(set-face-foreground 'font-lock-function-name-face "#B1D2D6")
(set-face-foreground 'font-lock-variable-name-face fg-color)
(set-face-foreground 'font-lock-string-face "#94a398")

(setq ncx-comment-regular-face xanadu)
(setq ncx-comment-highlight-face "#80FD87")
(set-face-foreground 'font-lock-comment-face ncx-comment-regular-face)
;; (set-face-background 'vertico-current "#80FD87")

(set-face-foreground 'minibuffer-prompt "#41D1A1")
;; (set-face-foreground 'ido-subdir "#738678")

(set-face-background 'region "#3B3F4D")
(set-face-foreground 'region fg-color)

;; high comments
;; changes comment colors
(defun ncx-highlight-comments ()
  (interactive)
  (if (string= (face-attribute font-lock-comment-face :foreground) ncx-comment-regular-face)
      (set-face-foreground 'font-lock-comment-face ncx-comment-highlight-face)
    (set-face-foreground 'font-lock-comment-face ncx-comment-regular-face)))

