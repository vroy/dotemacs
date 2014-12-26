;; Fix "C-c C-k" to work for sass-mode
(global-set-key (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)

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

(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-t") 'projectile-find-test-file)
(global-set-key (kbd "s-g") 'projectile-grep)

(global-set-key (kbd "s-k") 'vince-kill-whole-line)

;; guru-mode
(global-set-key (kbd "<up>") 'nil)
(global-set-key (kbd "<left>") 'nil)
(global-set-key (kbd "<right>") 'nil)
(global-set-key (kbd "<down>") 'nil)


;; @todo This pelude style rename filw and buffer doesn't work - perhaps something to do with ido configs?
;; C-x C-r => prelude style file rename
(global-set-key (kbd "C-x C-r") 'vince-rename-file-and-buffer)

;; @todo
;; C-c C-f => default projectile find files
;; C-c C-t => Find test files
;; C-c C-c => Find coffee files
;; C-c C-v => Find view files
;; C-c C-s => Find stylesheet files
;; C-c C-r => Find ruby files
