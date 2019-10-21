;; CUED's C/C++ style for c++-mode
;; Insert the following lines in your .emacs file

(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.tcc\\'" . c++-mode))

;; start package.el with emacs
(require 'package)
;; add MELPA to repository list
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                                    ("elpa" . "http://tromey.com/elpa/")
                                                      ;; TODO: Maybe, use this after emacs24 is released
                                                                        ;; (development versions of packages)
                                                                                          ("melpa" . "http://melpa.milkbox.net/packages/")
                                                                                                            ))
    (add-to-list 'package-archives source t))
;; initialize package.el
(package-initialize)

;; Required packages
;; everytime emacs starts, it will automatically check if those packages are
;; missing, it will install them automatically
(when (not package-archive-contents)
    (package-refresh-contents))
(defvar tmtxt/packages
    '(auto-complete clang-format ecb yasnippet srefactor))
(dolist (p tmtxt/packages)
    (when (not (package-installed-p p))
          (package-install p)))

;; start auto-complete with emacs
(require 'auto-complete)
;; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
;; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

;; Setting c++ mode for .ipp and .tcc files  
(put 'upcase-region 'disabled nil)
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hh\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.tcc\\'" . c++-mode))

;; Setting stroustup style as the default indentation style for c++
;; with tab spacing of 2
(require 'cc-mode)
(setq c-default-style "Stroustrup")
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(add-hook 'c++-mode-hook '(lambda () (whitespace-mode 1)))

;; autocomplete
(add-to-list 'load-path "~/.emacs.d/packages")

;; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
;;(defun my:ac-c-header-init ()
;;    (require 'auto-complete-c-headers)
;;      (add-to-list 'ac-sources 'ac-source-c-headers)
;;      )

;; now let's call this function from c/c++ hooks
;; (add-hook 'c++-mode-hook 'my:ac-c-header-init)
;; (add-hook 'c-mode-hook 'my:ac-c-header-init)

;; Clang format 
(require 'cc-mode)
(require 'clang-format)
(global-set-key [C-tab] 'clang-format-region)

;; Show Paren Mode
;; (setq show-paren-delay 0)
;; (show-paren-mode 1)
;; 
;; ;; activate ecb
;; (require 'ecb)
;; ;(require 'ecb-autoloads)
;; 
;; (setq ecb-activate)
;; (setq ecb-layout-name "leftright2")
;; (setq ecb-show-sources-in-directories-buffer 'always)
;; (setq ecb-activate)
;; 
;; ;; activate and deactivate ecb
;; (global-set-key (kbd "C-x C-;") 'ecb-activate)
;; (global-set-key (kbd "C-x C-'") 'ecb-deactivate)
;; ;; show/hide ecb window
;; (global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
;; (global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)

;; To use cut-copy-paste using C-x C-c C-v
(cua-mode 1)

;; Load theme
(load-theme 'seti t)
;(load-theme 'radiance)
;(load-theme 'atom-one-light)

;; Initial Window size
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 25))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-newline ((t (:foreground "" :weight normal))))
 '(whitespace-space ((t (:background "" :foreground "")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("14267b0520445e7b2a6e37170fcfde1ede9d199bf584e827056bcb5c15fca903" "f44289e0a8200832749a4c5d5156ebc4a8cdd95ae511ded8dc971438f86e8f1f" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "03f28a4e25d3ce7e8826b0a67441826c744cbf47077fb5bc9ddb18afe115005f" "63743f5499643852e14bced8a0d089aa6c578a2e7bbae4d603b6f32c6fae367c" "c4d3da0593914fff8fd2fbea89452f1a767893c578b219e352c763680d278762" "e3a3b7d7fe89b5d57d40bc825ca2324875a6f37bd63da66f2a6fc68cc8b2ee95" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (go-complete spacemacs-theme yasnippet srefactor ecb clang-format ac-c-headers)))
 '(wakatime-api-key "baaea71b-3d92-4087-9349-9a0134b38344"))
(put 'scroll-left 'disabled nil)
(put 'downcase-region 'disabled nil)
