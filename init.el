(require 'package)

;; Org Emacs lisp Package Archive
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Color Theme
(load-theme 'tango-dark)

(global-font-lock-mode t)

;;; Highlight parenthesis
(show-paren-mode 1)

;;; Tab indentation for lisp code
(add-hook 'lisp-mode-hook '(lambda ()
			     (local-set-key (kbd "RET") 'newline-and-indent)))

;;; Lisp (SLIME) interaction
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)

;;; Multiple cursors keybindings
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Autocomplete
(global-auto-complete-mode t)
