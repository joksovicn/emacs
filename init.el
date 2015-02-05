;; environment.
(setq explicit-shell-file-name "/bin/bash")
(setq exec-path (append '(
                          "~/bin"
                          "/usr/local/sbin"
                          "/usr/local/bin"
                          "/sbin"
                          "/opt/local/bin"
                          "/usr/local/share/npm/bin"
                          )
                        exec-path))
(setenv "TMPDIR" "/tmp")
(setenv "PATH"
        (mapconcat 'identity exec-path path-separator))
(setenv "PAGER" "cat")
(setenv "EDITOR" "emacsclient")
(setenv "ALTERNATE_EDITOR" "emacs")
(setenv "PROMPT_COMMAND" "")
(setenv "GPG_AGENT_INFO" nil)
(setenv "SSH_AUTH_SOCK" (expand-file-name "~/.ssh/agent.sock"))
(setenv "PS1" "${debian_chroot:+($debian_chroot)}\\u@\\h:\\w \\$ ")

(setenv "GIT_EDITOR" "emacsclient")
(setenv "GIT_COMMITTER_NAME" "Nemanja Joksovic")
(setenv "GIT_COMMITTER_EMAIL" "joksovicn@gmail.com")
(setenv "GIT_AUTHOR_NAME" "Nemanja Joksovic")
(setenv "GIT_AUTHOR_EMAIL" "joksovicn@gmail.com")

;; add directories to the load path
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/utilities")

;; function to load all elisp files in a directory
(load-file "~/.emacs.d/utilities/load-directory.el")

;; load all utility functions
(mapc 'load-directory '("~/.emacs.d/utilities"))

;; load personal customizations
(mapc 'load-directory '("~/.emacs.d/customizations"))

;; load packages via Pallet and Cask
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)

;; initialize modes
(mapc 'load-directory '("~/.emacs.d/mode-inits"))
