;; Maps Ctrl-z to undo
(global-set-key (kbd "C-z") 'undo)

;; Maps Ctrl-x-m to M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Maps Ctrl-w to kill backward word
(global-set-key "\C-w" 'backward-kill-word)

;; Maps Ctrl-c Ctrl-k to kill-region
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\C-cs" 'ansi-term)

(global-set-key "\C-c#" 'comment-or-uncomment-region)
(global-set-key "\C-c/" 'comment-or-uncomment-region)

;; Maps do C-cr
(global-set-key (kbd "C-c r") 'rename-file-and-buffer)




(provide 'guto/keyboard)
