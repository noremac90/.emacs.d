(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ace-window magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install-selected-packages)

(add-to-list 'load-path "~/.emacs.d/vendor")

(require 'guru-mode)
(require 'ace-window)
;; (require 'w3)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(load-theme 'deeper-blue)

(guru-global-mode +1)

(menu-bar-mode -1)
(tool-bar-mode -1)

(ido-mode 1)
