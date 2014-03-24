(defun open-src-and-h()
	(interactive)
	(call-interactively 'find-file)
	(split-window)
	(ff-find-other-file)
	(other-window 1)
)

(provide 'open-src-and-h)


