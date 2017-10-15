
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/vendor")

(require 'guru-mode)
(require 'ace-window)
;; (require 'w3)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(load-theme 'deeper-blue)

(guru-global-mode +1)


