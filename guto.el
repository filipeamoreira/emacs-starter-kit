;; DESCRIPTION: guto settings

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
;; line numbers
(require 'linum)
(global-linum-mode)
(setq linum-format "%d ")

(require 'guto/css)

(require 'guto/php)

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
;; (require 'color-theme-subdued)
;; (color-theme-subdued)

;; (load (concat dotfiles-dir "vendor/color-theme-solarized.el"))
;; (require 'color-theme-solarized)
;; (color-theme-solarized)

;; Textmate like theme
;; (load (concat dotfiles-dir "vendor/color-theme-blackboard.el"))
;;(color-theme-blackboard)

;; Railscasts theme
;; (load (concat dotfiles-dir "vendor/color-theme-railscasts.el"))
;; (color-theme-railscasts)

;; Tango based theme
;; (load (concat dotfiles-dir "vendor/color-theme-tango.el"))
;(color-theme-tango)

;; Arjen theme
;; (load (concat dotfiles-dir "vendor/color-theme-arjen.el"))
;(color-theme-arjen)

;; Wombat theme
;; (load (concat dotfiles-dir "vendor/color-theme-wombat.el"))
;(color-theme-wombat)

;; Solarized Theme
(add-to-list 'load-path (concat dotfiles-dir "vendor/emacs-color-theme-solarized/"))
(load (concat dotfiles-dir "vendor/emacs-color-theme-solarized/solarized-definitions.el"))
(load (concat dotfiles-dir "vendor/emacs-color-theme-solarized/solarized-dark-theme.el"))
;; (load (concat dotfiles-dir "vendor/emacs-color-theme-solarized/solarized-light-theme.el"))
;; (require 'solarized-light-theme)
(require 'solarized-dark-theme)

;; (load (concat dotfiles-dir "vendor/color-theme-tangotango.el"))
;;(color-theme-tangotango)

;; Emacs server
;(server-start)
;; (setq server-socket-file "~/bin/tmp/emacs1000/server")
;; (unless (file-exists-p server-socket-file)
;;   (server-start))

(add-hook 'server-visit-hook 'call-raise-frame)
(defun call-raise-frame ()
  (raise-frame))

;(setq mac-command-modifier 'meta)
(require 'php-mode)

;;(set-default-font "Inconsolata-9")
(set-default-font "Meslo LG M DZ-9:normal")

;; Setting up html5 mode
(add-to-list 'load-path "~/scm/git/html5-el")

(eval-after-load "rgn-loc"
  '(add-to-list 'rgn-schema-locating-files "~/scm/git/html5-el/schemas.xml"))

;; (load (concat dotfiles-dir "vendor/nxhtml/autostart.el"))

(setq mumamo-background-colors nil)

;(require 'whattf-dt)

(require 'edit-server)
(edit-server-start)

;; Display the time in the mode line
(setq display-time-24hr-format t)
(display-time)

;; Kills all them buffers except scratch
;; optained from http://www.chrislott.org/geek/emacs/dotemacs.html
(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
	  (buffer-list))
  (delete-other-windows))

;; Backup directory

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
    version-control t)       ; use versioned backups
