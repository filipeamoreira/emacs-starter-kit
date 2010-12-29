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

;; Topfunky theme
;;(load (concat dotfiles-dir "vendor/topfunkytheme.el"))
;;(color-theme-topfunky)

;; Add 'export TERM=xterm-256color' to ~/.profile
(require 'color-theme-subdued)
(color-theme-subdued)

;; Textmate like theme
;;(load (concat dotfiles-dir "vendor/color-theme-blackboard.el"))
;;(color-theme-blackboard)

;; Railscasts theme
;(load (concat dotfiles-dir "vendor/color-theme-railscasts.el"))
;(color-theme-railscasts)

;; Tango based theme
;(load (concat dotfiles-dir "vendor/color-theme-tango.el"))
;(color-theme-tango)

;; Arjen theme
;(load (concat dotfiles-dir "vendor/color-theme-arjen.el"))
;(color-theme-arjen)

;; Wombat theme
;(load (concat dotfiles-dir "vendor/color-theme-wombat.el"))
;(color-theme-wombat)



;;(load (concat dotfiles-dir "vendor/color-theme-tangotango.el"))
;;(color-theme-tangotango)

;; Emacs server
;(server-start)
(setq server-socket-file "/tmp/emacs1000/server")
(unless (file-exists-p server-socket-file)
  (server-start))

