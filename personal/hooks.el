;; Set the web-mode tab width to 2.
;; (add-hook 'web-mode-hook '
;;           (lambda()
;;             "web mode hook"
;;             (setq web-mode-markup-indent-offset 2)))

;; Set the coffeescript tab width to 2.
(add-hook 'coffee-mode-hook '
          (lambda()
            "coffee-mode-hook"
            (set (make-local-variable 'tab-width) 2)))

;; Set the javascript tab width to 2.
(add-hook 'javascript-mode-hook '
          (lambda()
            "javascript-mode-hook"
            (set (make-local-variable 'tab-width) 2)))

;; Automatically go to the right place on haml new lines.
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))
