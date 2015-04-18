(load-theme 'zenburn t)

;; Set default font size to 16pt.
(set-face-attribute 'default (selected-frame) :height 160)

;; Custom mode line colors that helps show which buffer is active
(set-face-attribute 'mode-line nil
                 :foreground "#2e3330" :background "#88b090"
                 :box '(:color "#88b090" :line-width 1))

(set-face-attribute 'mode-line-inactive nil
                 :foreground "#acbc90" :background "#1e2320"
                 :box '(:color "#1e2320" :line-width 1))

(set-face-attribute 'mode-line-buffer-id nil
                    :foreground "#8c5353")


;; blue'ish mode-line when in god-mode, for active buffer only.
(defun my-god-mode-update-line ()
  (cond (god-local-mode (progn
                          (set-face-attribute 'mode-line nil :background "#0a2832")
                          (set-face-attribute 'mode-line-inactive nil :background "#1e2320")))
        (t (progn
             (set-face-attribute 'mode-line nil :background "#88b090")
             (set-face-attribute 'mode-line-inactive nil :background "#1e2320")))))


(add-hook 'god-mode-enabled-hook 'my-god-mode-update-line)
(add-hook 'god-mode-disabled-hook 'my-god-mode-update-line)


;; line cursor when in god-mode
(defun my-update-cursor ()
 (setq cursor-type (if (or god-local-mode buffer-read-only)
                       'bar
                     'box)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)
