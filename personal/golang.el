(defun go-rerun ()
  (interactive)
  (compile compile-command))

;; "go build -v -o ~/.go-out; and go test -v; and go vet; and ~/.go-out"))
(defun go-build ()
  (interactive)
  (compile (concat "go build " (buffer-file-name))))

(defun go-test ()
  (interactive)
  (compile (concat "go test -v" (buffer-file-name))))

(defun go-run ()
  (interactive)
  (compile (concat "go run " (buffer-file-name))))

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")

  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  (setq compilation-read-command nil)

  (local-set-key (kbd "s-i s-i") 'go-rerun)
  (local-set-key (kbd "s-i C-f") 'go-run)
  (local-set-key (kbd "s-i C-t") 'go-test)
  (local-set-key (kbd "s-i C-b") 'go-build))

(add-hook 'go-mode-hook 'my-go-mode-hook)


(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)




(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)
