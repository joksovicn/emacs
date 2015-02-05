;; default input method
(setq default-input-method "MacOSX")

;; don't use Lion press-and-hold
(ns-set-resource nil "ApplePressAndHoldEnabled" "NO")

;; option/alt is meta key
(setq mac-command-key-is-meta nil)

;; yes-or-no answerable with 'y' or 'n'
(fset 'yes-or-no-p 'y-or-n-p)

;; always indent
(electric-indent-mode 1)

;; easily move lines up and down using utility functions
(global-set-key [(meta up)]  'move-line-up)
(global-set-key [(meta down)]  'move-line-down)

;; switch to shell
(global-set-key (kbd "s-0") 'visit-ansi-term)

;; open file
(global-set-key [(super o)] 'find-file)

;; buffer switching
(global-set-key [(super {)] 'previous-buffer)
(global-set-key [(super })] 'next-buffer)

;; frame switching
(global-set-key (kbd "s-`") 'other-window)

;; commenting
(global-set-key (kbd "s-/") 'comment-or-uncomment-region-or-line)

;; close window
(global-set-key [(super w)] (lambda ()
  (interactive)
  (kill-buffer (current-buffer)
)))

;; navigating through errors
(global-set-key [(meta n)] 'next-error)
(global-set-key [(meta p)] 'previous-error)
