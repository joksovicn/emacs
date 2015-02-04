;; can't write over prompt
(setq comint-prompt-read-only)

;; colorful shell
(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
