;; DESCRIPTION: guto settings

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
;; line numbers
(require 'linum)
(global-linum-mode)
(setq linum-format "%d ")

(require 'guto/css)

(require 'guto/keyboard)

(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'html-mode-hook #'(lambda nil (setq sgml-xml-mode t)))
(add-hook 'html-mode-hook 'turn-off-auto-fill)

(require 'simplenote)
(setq simplenote-email "famoreira@gmail.com")
(setq simplenote-password nil)
(simplenote-setup)

;; haml-mode
(require 'haml-mode)

(require 'guto/markdown)

;; ejacs mode
(add-to-list 'load-path (concat dotfiles-dir "/vendor/ejacs"))
(autoload 'js-console "js-console" nil t)

(require 'guto/helper)

(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

;; Smooth scrolling
(require 'smooth-scrolling)

(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)

;; Add 'export TERM=xterm-256color' to ~/.profile
;;(require 'color-theme-subdued)
;;(color-theme-subdued)

;; Fullscreen mode
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;; Map Mac cmd as meta
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
