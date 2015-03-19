(global-set-key (kbd "C-l") 'forward-char)
(global-set-key (kbd "C-h") 'backward-char)
(global-set-key (kbd "C-k") 'previous-line)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-j") 'next-line)
(global-set-key (kbd "C-w") 'forward-word)
(global-set-key (kbd "C-b") 'backward-word)
(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "<f5>") 'pp-eval-last-sexp)

(global-set-key (kbd "C-o") 'find-file)

(global-set-key (kbd "S-M-j") 'windmove-up)
(global-set-key (kbd "S-M-k") 'windmove-down)
(global-set-key (kbd "S-M-h") 'windmove-left)
(global-set-key (kbd "S-M-l") 'windmove-right)
(global-set-key (kbd "S-M-q") 'kill-this-buffer)

(global-set-key (kbd "C-u") 'undo-tree-undo)
(global-set-key (kbd "C-r") 'undo-tree-redo)
(global-set-key (kbd "S-M-u") 'undo-tree-visualize)

