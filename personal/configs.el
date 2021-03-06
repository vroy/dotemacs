;; no startup msg
(setq inhibit-startup-message t)


;; no toolbar in GUI mode
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))


;; Disable blinking cursor...
(blink-cursor-mode -1)

;; Enable ido with a config similar to prelude
(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)
(ido-mode +1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(ido-ubiquitous-mode +1)
(flx-ido-mode +1) ;; smarter fuzzy matching for ido
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights

;; Turn off pinging / find file at point:
;; https://github.com/technomancy/emacs-starter-kit/issues/39
(setq ido-use-filename-at-point nil)



;; Enable projectile
(projectile-global-mode)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)


;; Strip trailing whitespace before saving files.
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; Enable shift+arrows to switch windows.
(windmove-default-keybindings)


;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)


;; Turn off bell completely.
(setq ring-bell-function 'ignore)


;; Disable scss compilation on save.
(setq scss-compile-at-save nil)


;; Disable default tab mode.
(setq-default indent-tabs-mode nil)


;; Set default tab width
(setq-default tab-width 2)

(setq nginx-indent-level 2)


;; highlight the current line
(global-hl-line-mode +1)


;; Shorten mode names
(require 'diminish)
(diminish 'projectile-mode "Prjl")


;; mode line settings
(line-number-mode t)
(column-number-mode t)


;; Smaller fringe (left and right side gutters)

(if (fboundp 'fringe-mode)
    (fringe-mode 4))


;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)



;; meaningful names for buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers


;; @todo saveplace (https://github.com/bbatsov/prelude/blob/b9000702b2ac8216a8bfeea645fde6bb0c1fc7bc/core/prelude-editor.el#L130)

;; @todo smartparens (https://github.com/bbatsov/prelude/blob/b9000702b2ac8216a8bfeea645fde6bb0c1fc7bc/core/prelude-editor.el#L105)

;; @todo bracket auto completion


;; Move auto-saved files to a temp directory.
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(provide 'configs)


(setenv "SHELL" "/usr/local/bin/fish")

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))




(global-relative-line-numbers-mode)
