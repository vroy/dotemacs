
(global-set-key (kbd "C-C C-K") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-x |") 'split-window-horizontally)
(global-set-key (kbd "C-x -") 'split-window-vertically)
(global-set-key [(control return)] 'textmate-next-line)
(global-set-key (kbd "<s-return>") 'textmate-next-line)

(global-set-key (kbd "C-S-k") 'backward-kill-line)

(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key [(control tab)] 'other-window)
(global-set-key [(meta tab)] 'other-window)

(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-t") 'projectile-find-test-file)
(global-set-key (kbd "s-g") 'projectile-grep)

(global-set-key (kbd "s-k") 'prelude-kill-whole-line)
