
;;Melpa config, it's important to have this first so if something goes wrong (like you don't have a package), you can still access melpa
;;==============================================================================
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packagles/")))
(package-initialize)

;; added from https://github.com/tuhdo/emacs-c-ide-demo
;;==============================================================================

;; (when (not package-archive-contents)
;;     (package-refresh-contents))

;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))

;; (require 'use-package)
;; (setq use-package-always-ensure t)

;; (add-to-list 'load-path "~/.emacs.d/custom")

;; (require 'setup-general)
;; (if (version< emacs-version "24.4")
;;     (require 'setup-ivy-counsel)
;;   (require 'setup-helm)
;;   (require 'setup-helm-gtags))
;; ;; (require 'setup-ggtags)
;; (require 'setup-cedet)
;; (require 'setup-editing)



;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(column-number-mode t)
 '(company-quickhelp-color-background "#e8e8e8")
 '(company-quickhelp-color-foreground "#444444")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "bea5fd3610ed135e6ecc35bf8a9c27277d50336455dbdd2969809f7d7c1f7d79" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "2dd51a71783f5b3aa6570e53d526350c8fe690ee7d13c26169a13a2e72436436" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "086970da368bb95e42fd4ddac3149e84ce5f165e90dfc6ce6baceae30cf581ef" "f2057733672d3b119791f5b7d1a778bf8880121f22ea122a21d221b45081f49e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "1fab355c4c92964546ab511838e3f9f5437f4e68d9d1d073ab8e36e51b26ca6a" "959a77d21e6f15c5c63d360da73281fdc40db3e9f94e310fc1e8213f665d0278" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "fc0c179ce77997ecb6a7833310587131f319006ef2f630c5a1fec1a9307bff45" "9d7e517b49068e9fef941fe4083ad3d2a4b040895dca5175b84be48739689707" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "b34636117b62837b3c0c149260dfebe12c5dad3d1177a758bb41c4b15259ed7e" "d9e811d5a12dec79289c5bacaecd8ae393d168e9a92a659542c2a9bab6102041" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "2ae4b0c50dd49a5f74edeae3e49965bf8853954b63c5712a7967ea0a008ecd5b" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "80a23d559a5c5343a0882664733fd2c9e039b4dbf398c70c424c8d6858b39fc5" "a02c000c95c43a57fe1ed57b172b314465bd11085faf6152d151385065e0e4b1" "b4fd44f653c69fb95d3f34f071b223ae705bb691fb9abaf2ffca3351e92aa374" "ff8c6c2eb94e776c9eed9299a49e07e70e1b6a6f926dec429b99cf5d1ddca62a" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "5eb4b22e97ddb2db9ecce7d983fa45eb8367447f151c7e1b033af27820f43760" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" "880f541eabc8c272d88e6a1d8917fe743552f17cedd8f138fe85987ee036ad08" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "2047464bf6781156ebdac9e38a17b97bd2594b39cfeaab561afffcbbe19314e2" "3ed2e1653742e5059e3d77af013ee90c1c1b776d83ec33e1a9ead556c19c694b" "3f4a874a75c0113d8e3964abcae7d9932c2b3242d689853cb547483cfaef7f40" "550187214e1e0cb24d7e7a40d0890905d4e37473d9752a2ba273ecd99838b98f" "9064771d4253e2f5cf0c877db57f7cf3482e7e227d4aab0aad595959dd61a7a6" "cdbf9450673bcafafe8d715fc2a1eae2084c7d9411e2d27ccfa18690cf9c920a" "cb473909b78086fac7be7889e73dcdee064568c9673825cfc58c1a91fc14ea21" "ddc3962e511a54b85b76fb35277acda9c6f34cc5a3a3c2c7bd037dc7141863e7" "9f774836b768d1c6beb33d23953503b07d0563baacbeef66c14f20e6d2124720" "5d09d8f12286679c7dc62565d8483a24200de96a92000391c790e44b9bd66d87" "37ccc6df2e01f1d511a33764be8c6dc4596345ae26cddb0e17698dfdf927d8fe" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" default)))
 '(fci-rule-color "#37474f")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#8f4e8b" "#8f684e" "#c3a043" "#397460" "#54ab8e" "#20a6ab" "#3573b1" "#DC8CC3")))
 '(org-agenda-files
   (quote
    ("~/.emacs.d/journal/icra.org" "~/Documents/notes/fall_2017.org")))
 '(org-format-latex-options
   (quote
    (:scale 1.0 :html-background "Transparent" :html-scale 1.0 :matchers
            ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (yaml-mode ample-zen-theme org-download evil elpygen anaconda-mode org-ref markdown-mode ein iedit anzu comment-dwim-2 ws-butler dtrt-indent clean-aindent-mode undo-tree volatile-highlights helm-gtags helm-projectile helm-swoop helm zygospore projectile ggtags zenburn-theme solarized-theme color-theme darkburn-theme matlab-mode smart-mode-line-powerline-theme anti-zenburn-theme doneburn-theme pdf-tools tao-theme haskell-mode yasnippet yasnippet-snippets spaceline spacemacs-theme use-package auctex adaptive-wrap arduino-mode multiple-cursors powerline material-theme hideshowvis fic-mode elpy company-irony auto-complete ace-jump-zap)))
 '(pdf-view-midnight-colors (quote ("#444444" . "#eeeeee")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-column-title ((t (:inherit org-column))))
 '(org-done ((t (:background "forest green" :foreground "gray100" :weight bold))))
 '(org-level-1 ((t (:inherit outline-1))))
 '(org-level-2 ((t (:inherit outline-2))))
 '(org-todo ((t (:background "dark red" :foreground "gray100" :weight bold)))))





;; added custom functions
;;==============================================================================
;;wrote this for fun, allows you to sign your name 
(defun sign()
  (interactive)
  (insert (user-real-login-name) (format-time-string "@%Y%M%d-%H:%M"))
  )

;;inserts a big line for your comments (78 chars 
(defun insert-line-dash()
  (interactive)
  (insert "------------------------------------------------------------------------------")
  )

(defun insert-line-equal()
  (interactive)
  (insert "==============================================================================")
  )


(defun copy-line()
  (interactive)
  (push-mark)
  (move-end-of-line nil)
  
  )


                                        

;; aesthetics
;;==============================================================================

(menu-bar-mode 0)
(tool-bar-mode -1);;on osx I actually slightly prefer to have the the menu bar visible , since it autohides anyway, but otherwise I keep it off.


;;adds line numbers everywhere
(setq column-number-mode t)
(global-linum-mode 1)

;; powerline!!!!
(require 'powerline)
;(powerline-default-theme)

;; make cursor the width of the character it is under i.e. full width of a TAB
(setq x-stretch-cursor t)

;;sg- hopefully will force the compiler tool to open up windows in a verticle split
(setq split-height-threshold 0)
(setq split-width-threshold nil)

(setq-default tab-width 4)

;;this controls the theme (colors etc

					;(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
					;)


;;magit shortcut
					;(global-set-key (kbd "C-x g") 'magit-status)



;;latex stuff
;;==============================================================================
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)


(require 'flymake)
(defun flymake-get-tex-args (file-name)
  (list "pdflatex"
	(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
(add-hook 'LaTeX-mode-hook 'flymake-mode)

(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
(getenv "PATH")



;;sgillen@20173510-22:35 this next bit of code will set the default pdf view to emacs itself, I found I didn't actually like this...
;; (unless (assoc "PDF Tools" TeX-view-program-list-builtin)
;;   (add-to-list 'TeX-view-program-list-builtin
;;                '("PDF Tools" TeX-pdf-tools-sync-view)))

;; ;; Use pdf-tools to open PDF files
;; (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
;;       TeX-source-correlate-start-server t)

;; ;; Update PDF buffers after successful LaTeX runs
;; (add-hook 'TeX-after-TeX-LaTeX-command-finished-hook
;;            #'TeX-revert-document-buffer)


;;misc
;;==============================================================================

(ido-mode 1)
;(setq ido-enable-flex-matching t)



(set-default 'truncate-lines t)
(setq truncate-partial-width-windows nil)


;;turns off the annoying bell
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)

;;SG 1/14/15 : added to enable spell check
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;;highlights matching parentheses when hovering over them
					;(show-paren-mode 1)

;;some other additions from here https://github.com/technomancy/better-defaults/blob/master/better-defaults.el
(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      require-final-newline t
					;       visible-bell t
      load-prefer-newer t
      ediff-window-setup-function 'ediff-setup-windows-plain
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))


;;spell check
(setq ispell-program-name "aspell") ; could be ispell as well, depending on your preferences
(setq ispell-dictionary "english") ; this can obviously be set to any language your spell-checking program supports
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)



(setq whitespace-style '(trailing lines space-before-tab
				  indentation space-after-tab)
      whitespace-line-column 80)

(setq mouse-wheel-scroll-amount '(0.01))

(put 'upcase-region 'disabled nil)

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(org-column-title ((t (:inherit org-column))))
;;  '(org-done ((t (:background "forest green" :foreground "gray100" :weight bold))))
;;  '(org-level-1 ((t (:inherit outline-1 :background "#455A64" :box nil :weight bold :height 1.3))))
;;  '(org-level-2 ((t (:inherit outline-2 :background "#35575b" :box nil :height 1.2))))
;;  '(org-todo ((t (:background "dark red" :foreground "gray100" :weight bold)))))


(require 'hideshowvis)
(autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")

(autoload 'hideshowvis-minor-mode
  "hideshowvis"
  "Will indicate regions foldable with hideshow in the fringe."
  'interactive)


(dolist (hook (list 'emacs-lisp-mode-hook
                    'c++-mode-hook))
  (add-hook hook 'hideshowvis-enable))

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



;; This stuff is to ansi-colorize the compilation buffer after a rails test so the terminal colors come through.
(define-derived-mode ansi-compilation-mode compilation-mode "ansi compilation"
  "Compilation mode that understands ansi colors."
  (require 'ansi-color)
  (toggle-read-only 0)
  (ansi-color-apply-on-region (point-min) (point-max)))

(defun colorize-compilation (one two)
  "ansi colorize the compilation buffer."
  (ansi-compilation-mode)
 )

(setq compilation-finish-function 'colorize-compilation)


;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


;; tramp mode (remote editing)
(setq tramp-default-method "ssh")


;;moving between windows more naturally
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)




;; tags/code completion (http://tuhdo.github.io/c-ide.html#orgheadline2)
;; ==============================================================================
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)


;; ==============================================================================
(defun my-dnd-func (event)
  (interactive "e")
  (goto-char (nth 1 (event-start event)))
  (x-focus-frame nil)
  (let* ((payload (car (last event)))
         (type (car payload))
         (fname (cadr payload))
         (img-regexp "\\(png\\|jp[e]?g\\)\\>"))
    (cond
     ;; insert image link
     ((and  (eq 'drag-n-drop (car event))
            (eq 'file type)
            (string-match img-regexp fname))
      (insert (format "[[%s]]" fname))
      (org-display-inline-images t t))
     ;; insert image link with caption
     ((and  (eq 'C-drag-n-drop (car event))
            (eq 'file type)
            (string-match img-regexp fname))
      (insert "#+ATTR_ORG: :width 300\n")
      (insert (concat  "#+CAPTION: " (read-input "Caption: ") "\n"))
      (insert (format "[[%s]]" fname))
      (org-display-inline-images t t))
     ;; C-drag-n-drop to open a file
     ((and  (eq 'C-drag-n-drop (car event))
            (eq 'file type))
      (find-file fname))
     ((and (eq 'M-drag-n-drop (car event))
           (eq 'file type))
      (insert (format "[[attachfile:%s]]" fname)))
     ;; regular drag and drop on file
     ((eq 'file type)
      (insert (format "[[%s]]\n" fname)))
     (t
      (error "I am not equipped for dnd on %s" payload)))))


;;(define-key org-mode-map (kbd "<drag-n-drop>") 'my-dnd-func)
;;(define-key org-mode-map (kbd "<C-drag-n-drop>") 'my-dnd-func)
;;(define-key org-mode-map (kbd "<M-drag-n-drop>") 'my-dnd-func)
