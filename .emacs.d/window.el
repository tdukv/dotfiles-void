;; *********************************************************
;; window stuff
;; *********************************************************

(defun select-next-window ()
  "Switch to the next window"
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window"
  (interactive)
  (select-window (previous-window)))

(global-set-key [(meta shift up)] 'enlarge-window)
(global-set-key [(meta shift down)] 'shrink-window)
(global-set-key [(meta shift left)] 'enlarge-window-horizontally)
(global-set-key [(meta shift right)] 'shrink-window-horizontally)
(global-set-key [(meta up)] 'select-next-window)
(global-set-key [(meta down)]  'select-previous-window)
