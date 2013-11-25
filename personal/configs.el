;; no startup msg
(setq inhibit-startup-message t)


;; no toolbar in GUI mode
(tool-bar-mode -1)


;; Enable ido / flx-ido
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)


;; Enable projectile
(projectile-global-mode)


;; Strip trailing whitespace before saving files.
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; Configure theme
(load-theme 'zenburn t)


;; Enable shift+arrows to switch windows.
(windmove-default-keybindings)


;; Set default font size to 16pt.
(set-face-attribute 'default (selected-frame) :height 160)


;; Refresh buffers automatically when file changed on disk.
(global-auto-revert-mode t)


;; Turn off bell completely.
(setq ring-bell-function 'ignore)
