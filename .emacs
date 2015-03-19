(load-file "~/.emacs.d/keys.el")
(load-file "~/.emacs.d/undo-tree-0.6.4.el")

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

(setq show-parent-mode 'expression)
(show-paren-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)

(defun say-hi ()
  (interactive)
  (message "Hi!!1"))

(global-set-key (kbd "<f12>") 'say-hi)

(setq vc-follow-symlinks nil) ; Don't want any prompt because symlink
(setq make-backup-files nil) ; Don't want any backup ~ files
(setq auto-save-list-file-name nil) ; Don't want any .saves files
(setq auto-save-default nil) ; Don't want any auto saving
(setq create-lockfiles nil) ; Don't want any .# symlink lock files

;; MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;; Yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
