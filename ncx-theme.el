;; alts: Iosevka Comfy Liberation Mono, Roboto Mono, Consolas, Cousine
;; (set-frame-font "Liberation Mono-14" nil t) 
(set-face-attribute 'default nil :font "Cousine-15:weight=normal")
(setq initial-frame-alist '((fullscreen . maximized) (font . "Roboto Mono-15:weight=book"))
      default-frame-alist '((fullscreen . maximized) (font . "Roboto Mono-15:weight=book")))

(setq fg-color "#c3c0b0") ;;a6c6b6
(setq xanadu "#738678")
(setq mystic "#D65282")
(set-background-color "#3C3F4F") ;;262832
(set-foreground-color fg-color)
(set-cursor-color fg-color)

(set-face-foreground 'font-lock-keyword-face mystic)
(set-face-foreground 'font-lock-type-face "#2EC09C")
(set-face-foreground 'font-lock-builtin-face "#2EC09C")
(set-face-foreground 'font-lock-constant-face "#d1b897")
(set-face-foreground 'font-lock-function-name-face fg-color)
(set-face-foreground 'font-lock-variable-name-face fg-color)
(set-face-foreground 'font-lock-string-face "grey65")
(set-face-foreground 'font-lock-comment-face "#44A368")

(set-face-foreground 'minibuffer-prompt "#41D1A1")
(set-face-foreground 'ido-subdir "#738678")

(set-face-attribute 'mode-line nil
                    :background "#1F262A"
		    :foreground fg-color
		    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :background "#1F262A"
		    :foreground xanadu
		    :box nil)
