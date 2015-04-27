(setq-default mode-line-format
	      (list
	       '(:eval (get-current-mode))
	       ;; vallue of current buffer name
	       "buffer %b, "
	       ;; vallue of current lline number
	       "l %l "
	       "-- user: "
	       ;; vallue of user
	       (getenv "USER")))

(defun get-current-mode ()
  (concat "%4l" (upcase (substring dimhold-mode 0 1)) " "))
