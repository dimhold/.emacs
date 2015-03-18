(load-file "~/.emacs.d/keys.el")

(defun say-hi ()
  (interactive)
  (message "Hi!!1"))

(global-set-key (kbd "<f12>") 'say-hi)

(setq vc-follow-symlinks nil) ; Don't want any prompt because symlink
(setq make-backup-files nil) ; Don't want any backup ~ files
(setq auto-save-list-file-name nil) ; Don't want any .saves files
(setq auto-save-default nil) ; Don't want any auto saving
(setq create-lockfiles nil) ; Don't want any .# symlink lock files
