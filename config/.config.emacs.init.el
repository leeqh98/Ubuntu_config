;; Set the default font size


;; Enable line numbers globally
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(setq display-line-numbers-type 'relative)
(setq ispell-program-name "hunspell") ;; change ispell program
;; customize -> M-x customize

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t) ;; turn off startup screen

;; Configure clangd for eglot
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)


;; ELPA mirrors setting
(setq package-archives '(("gnu"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
 			 ("nongnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


(package-initialize) ;; You might already have this line

;; use-package settings
(use-package company :ensure t :defer t
  :hook (prog-mode . company-mode))
(use-package gruvbox-theme
  :ensure t
  :pin melpa
  :init (load-theme 'gruvbox-dark-soft t))

;; install package same name from different repositories


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
