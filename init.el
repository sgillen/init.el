
;;Melpa config, it's important to have this first so if something goes wrong (like you don't have a package), you can still access melpa
;;==============================================================================
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packagles/")))
(package-initialize)

;; declare which packages we use
(setq my-packages
      '(powerline yaml-mode ample-zen-theme org-download evil elpygen anaconda-mode org-ref markdown-mode ein iedit anzu comment-dwim-2 ws-butler dtrt-indent clean-aindent-mode undo-tree volatile-highlights helm-gtags helm-projectile helm-swoop helm zygospore projectile ggtags zenburn-theme solarized-theme color-theme darkburn-theme matlab-mode smart-mode-line-powerline-theme anti-zenburn-theme doneburn-theme pdf-tools tao-theme haskell-mode yasnippet yasnippet-snippets spaceline spacemacs-theme use-package auctex adaptive-wrap arduino-mode multiple-cursors powerline material-theme fic-mode elpy company-irony auto-complete ace-jump-zap))


;; Iterate on packages and install missing ones
(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))



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
(powerline-default-theme)

;; make cursor the width of the character it is under i.e. full width of a TAB
(setq x-stretch-cursor t)

;;sg- hopefully will force the compiler tool to open up windows in a verticle split
(setq split-height-threshold 0)
(setq split-width-threshold nil)

(setq-default tab-width 4)

;; fix linum mode probably
(set-face-attribute 'linum nil :height 100)

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
