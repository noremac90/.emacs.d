
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
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8ed752276957903a270c797c4ab52931199806ccd9f0c3bb77f6f4b9e71b9272" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (evil-escape evil-surround solarized-theme monokai-theme neotree evil-leader linum-relative evil which-key default-text-scale ace-window magit))))
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

;; (powerline-center-theme)
;; (powerline-center-evil-theme)


(load-theme 'monokai)
(which-key-setup-side-window-bottom)


(setq which-key-idle-delay 1.0)
(which-key-mode)

;; modes

(guru-global-mode +1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode 1)
(linum-relative-global-mode)
(global-evil-leader-mode)
(evil-mode 1)

;; keybinds


(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))

(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(global-set-key (kbd "C-S-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))

(global-set-key (kbd "C-S-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

(setq inhibit-splash-screen t)


(load "custom.el" t)
;; Evil mode setup
(evil-leader/set-leader ",")

(evil-leader/set-key "ev"
  (lambda ()
    (interactive)
    (find-file "~/.emacs.d/init.el")))

(evil-leader/set-key "n" 'neotree-toggle)
(evil-leader/set-key "m s" 'magit-status)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(define-key evil-normal-state-map (kbd "<left>") 'evil-window-left)
(define-key evil-normal-state-map (kbd "<right>") 'evil-window-right)
(define-key evil-normal-state-map (kbd "<up>") 'evil-window-up)
(define-key evil-normal-state-map (kbd "<down>") 'evil-window-down)

(require 'evil-surround)
(global-evil-surround-mode 1)

(setq-default evil-escape-key-sequence "jj")
(setq-default evil-escape-delay 0.2)
