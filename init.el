(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d")
(load "personal/configs.el")
(load "personal/functions.el")
(load "personal/modes.el")
(load "personal/bindings.el")
(load "personal/hooks.el")
