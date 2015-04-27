(defmacro run-in-read-mode (&rest command)
  `(lambda ()
     (interactive)
     (if (string= dimhold-mode "read")
      (,@command)
    (self-insert-command 1))))

;; Macros usage examaple:
;(macroexpand '(run-in-read-mode next-line))
;(macroexpand '(run-in-read-mode delete-forward-char 1))

(setq dimhold-mode "read")

(defun set-write-mode ()
  (interactive)
  (setq dimhold-mode "write"))

(defun set-read-mode ()
  (interactive)
  (setq dimhold-mode "read"))
    
(global-set-key (kbd "C-i") 'set-read-mode)


; Navigation:
(global-set-key (kbd "i") (run-in-read-mode set-write-mode))
(global-set-key (kbd "l") (run-in-read-mode forward-char))
(global-set-key (kbd "h") (run-in-read-mode backward-char))
(global-set-key (kbd "k") (run-in-read-mode previous-line))
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "j") (run-in-read-mode next-line))
(global-set-key (kbd "w") (run-in-read-mode forward-word))
(global-set-key (kbd "b") (run-in-read-mode backward-word))
(global-set-key (kbd "d") (run-in-read-mode kill-whole-line))
(global-set-key (kbd "x") (run-in-read-mode delete-forward-char 1))
(global-set-key (kbd "X") (run-in-read-mode delete-backward-char 1))

(global-set-key (kbd "C-<f5>") 'execute-extended-command)

(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "<f5>") 'pp-eval-last-sexp)

(global-set-key (kbd "C-o") 'find-file)

(global-set-key (kbd "S-M-j") 'windmove-up)
(global-set-key (kbd "S-M-k") 'windmove-down)
(global-set-key (kbd "S-M-h") 'windmove-left)
(global-set-key (kbd "S-M-l") 'windmove-right)
(global-set-key (kbd "S-M-q") 'kill-this-buffer)

(global-set-key (kbd "u") (run-in-read-mode undo-tree-undo))
(global-set-key (kbd "C-u") (run-in-read-mode undo-tree-redo))
(global-set-key (kbd "S-M-u") 'undo-tree-visualize)

;TODO:
;(global-set-key (kbd ".") (run-in-read-mode repeat))
