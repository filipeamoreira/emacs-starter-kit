;; Markdown mode

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))

(provide 'guto/markdown)
