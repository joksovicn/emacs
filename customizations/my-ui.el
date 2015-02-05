;; no splash
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; no scrollbar
(scroll-bar-mode -1)

;; no toolbar
(tool-bar-mode -1)

;; no menu bar
(menu-bar-mode -1)

;; blink cursor
(blink-cursor-mode t)

;; highlight current line
(global-hl-line-mode t)

;; force new frames into existing window
(setq ns-pop-up-frames nil)

;; no bell
(setq ring-bell-function 'ignore)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)

;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

;; scroll window under mous
(setq scroll-step 1)

;; set time format
(setq display-time-format "%a %Y-%m-%d %H:%M")

;; show time mode
(display-time-mode 1)

;; hide line number mode
(line-number-mode 0)

;; hide column number mode
(column-number-mode 0)

;; hide size indication mode
(size-indication-mode 0)

;; hide display battery mode
(display-battery-mode 0)
