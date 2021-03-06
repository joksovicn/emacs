;; tabs and indentation
(setq standard-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; always a newline at the end
(setq require-final-newline t)

;; mousing
(setq mac-emulate-three-button-mouse nil)

;; UTF-8 everywhere
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; highlight URLs in comments/strings
(add-hook 'find-file-hooks 'goto-address-prog-mode)

;; use default Mac browser
(setq browse-url-browser-function 'browse-url-default-macosx-browser)

;; selection
(delete-selection-mode t)

;; show marks as selections
(setq transient-mark-mode t)

;; highlight matching parens
(show-paren-mode t)

;; no newlines past EOF
(setq next-line-add-newlines nil)

;; apply syntax highlighting to all buffers
(global-font-lock-mode t)

;; wrap lines in a tasteful way
(global-visual-line-mode 1)
