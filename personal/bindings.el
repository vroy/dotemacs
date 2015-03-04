;; Fix "C-c C-k" to work for sass-mode
(global-set-key (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)
(define-key (current-global-map) (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)

;; @todo When opening a new window, ensure that the new window gets focus.
(global-set-key (kbd "C-x |") 'split-window-horizontally)
(global-set-key (kbd "C-x -") 'split-window-vertically)

(global-set-key [(control return)] 'vince-next-line)
(global-set-key (kbd "<s-return>") 'vince-next-line)

(global-set-key (kbd "C-S-k") 'vince-backward-kill-line)

(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key [(control tab)] 'other-window)
(global-set-key [(meta tab)] 'other-window)

(global-set-key (kbd "s-k") 'vince-kill-whole-line)

;; projectile
(global-set-key (kbd "s-t") 'projectile-find-file)
(global-set-key (kbd "s-p") 'projectile-switch-project)
(global-set-key (kbd "s-f") 'projectile-ag)

;; guru-mode
(global-set-key (kbd "<up>") 'nil)
(global-set-key (kbd "<left>") 'nil)
(global-set-key (kbd "<right>") 'nil)
(global-set-key (kbd "<down>") 'nil)

;; C-x C-r => prelude style file rename
(global-set-key (kbd "C-x C-r") 'vince-rename-file-and-buffer)


;; Some custom binding for rspec-mode. Note that the resulting
;; command are "C-i" as per the translation at the end.
;;
;; See also:
;;
;;     http://barelyenough.org/projects/rspec-mode/
;;     https://github.com/pezra/rspec-mode/
;;
(global-set-key (kbd "s-i C-f") 'rspec-verify)
(global-set-key (kbd "s-i C-a") 'rspec-verify-all)
(global-set-key (kbd "s-i C-t") 'rspec-toggle-spec-and-target)
(global-set-key (kbd "s-i C-r") 'rspec-rerun)
(global-set-key (kbd "s-i s-i") 'rspec-verify-single)

;; http://stackoverflow.com/a/4513683
(keyboard-translate ?\C-i ?\s-i)
