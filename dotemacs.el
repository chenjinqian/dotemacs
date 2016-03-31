;;; package summarry
;;; code:
(set-frame-parameter (selected-frame) 'alpha (list 99 31))
(add-to-list 'default-frame-alist (cons 'alpha (list 100 81)))

;;(set-language-envirement 'utf-8) ;;intended to solve emacs input problem, but it seem this is a fake one, gone after reboot.

(global-set-key (kbd "C-S-d") 'backward-kill-word)
(global-set-key "\C-o" 'lg-parensis)
(global-set-key "\C-q" "=")
(global-set-key (kbd "C-S-o") ")")
(global-set-key (kbd "C-j") 'paredit-newline)
(global-set-key (kbd "C-M-j") 'sanityinc/open-line-with-reindent)
(global-set-key (kbd "C-S-j")  'lg-ce-ent)
(global-set-key (kbd "C-^") 'previous-buffer)
(global-set-key (kbd "C-&") 'next-buffer)
;;(load-file "~/.emacs.d/evil/init.el")
;;(global-set-key (kbd "C-z") 'evil-mode)
;;(setq evil-default-state 'emacs)

;;;;; some of my own funtions in use ;;;;;

(fset 'lg-run-python-line
      [?\C-a ?\C-  ?\C-\M-f ?\C-c ?\C-r ?\C-n ?\C-a])
(fset 'lg-parensis
      "()\C-b")
(fset 'function-comment-my
   "\"\"\"\"\"\"\C-b\C-b\C-b")
(fset 'lg-op-newline
      "\C-e\C-j")
(fset 'lg-sharp-coment2
      "\C-a#\C-e\C-n")
(fset 'lg-sharp-coment
      [?\C-a tab ?# ?\C-p])
(fset 'lg-period-comment
      "\C-a\;\;\C-e\C-n")
(fset 'lg-ce-ent
      [?\C-e return])
(defun eshell/clc ()
  "to clear eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
(defadvice shell (around always-new-shell)
  "Always start a new shell. by Ellen Taylor, 2012-07-20"
  (let ((buffer (generate-new-buffer-name "*shell*"))) ad-do-it))
(ad-activate 'shell)

;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;(menu-bar-mode 1)
(setq default-truncate-lines t)
(setq truncate-lines nil)
;;(set-input-method "TeX")
;;;I am defining a new key binding in shell mode.


(setq inferior-lisp-program "/usr/bin/sbcl")
;;(setq inferior-lisp-program "/usr/bin/clisp")
;;(require 'slime)
;;(slime-setup)
;;(slime-setup '(slime-fancy))
(require-package 'yasnippet)
(require 'yasnippet) ;;have to copy the yas file into a new folder ~/.emacs.d/lisp/snippets to make it works.
(yas-global-mode 1)

(require 'cmuscheme)
(setq scheme-program-name "scheme")
(setq racket-program-name "racket")
;;(require 'cmuscheme)
;;(set-variable (quote scheme-program-name) "racket")
;;(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
                                        ;(setq auto-mode-alist (append '(("//.//(frm//|bas//|cls//|vb//)$" .                                 visual-basic-mode)) auto-mode-alist))
(setq auto-mode-alist (append '( ("\\.rkt\\'" .
                                  racket-mode)) auto-mode-alist))
                                        ;to set the interpreter of python
(when (executable-find "ipython")  (setq python-shell-interpreter "ipython"))
;;(setq python-program-name "python3")

;;and I cann't choose the programe by changing the name. In other words, this option is fixed.
;;there are some emacs-ipython git-repos, read as this:https://github.com/burakbayramli/emacs-ipython

;;(add-hook 'scheme-mode-hook 'autopair-mode)
;;(add-hook 'python-mode-hook 'autopair-mode)
;;(add-hook 'racket-mode-hook 'autopair-mode)
;;(add-hook 'picolisp-mode-hook 'autopair-mode)

;;;;;;;;;;;;;;;; some short keys to save my little finger ;;;;;;;;;;;;;;;;;;;;

(global-set-key [f12] 'toggle-truncate-lines)
(define-prefix-command 'ring-map)
(global-unset-key (kbd "C-u"))
(global-set-key (kbd "C-u ") 'ring-map)
(global-set-key (kbd "C-u \" ") 'function-comment-my)
(global-set-key (kbd "C-u l") 'lg-run-python-line)
(global-set-key (kbd "C-u x") 'execute-extended-command)
(define-key yas-minor-mode-map (kbd "C-u y") 'yas-expand)
;;(global-set-key (kbd "C-u S-y") 'yas-prev-field)
(global-set-key (kbd "C-u j") [backspace])
;;(global-unset-key (kbd "C-d"))
;;(global-set-key (kbd "C-S-d") 'paredit-forward-delete)
(global-set-key (kbd "C-S-d") [backspace])
;; (global-set-key (kbd "C-'") [backspace])
;;(global-set-key (kbd "C-d") 'paredit-forward-delete)

(global-set-key (kbd "C-u C-u") 'switch-window)
(global-set-key (kbd "C-u c") 'switch-to-buffer)
(global-set-key (kbd "C-u u c") 'find-file)
(global-set-key (kbd "C-u \S-k") 'kill-buffer)
(global-set-key (kbd "C-u u f") 'find-file)
(global-set-key (kbd "C-u u v") 'find-alternate-file)
(global-set-key (kbd "C-u s") 'save-buffer)
(global-set-key (kbd "C-u \S-s") 'save-some-buffers)
(global-set-key (kbd "C-u C-s") 'save-some-buffers)
(global-set-key (kbd "C-u g") 'keyboard-quit)
;;(global-set-key (kbd "C-u u l") 'eshell/clc)
(global-set-key (kbd "C-u \S-l") 'eshell/clc)
;;(global-set-key (kbd "C-u w") (lambda (interactive) (forward-word) (backward-kill-word)))
(global-set-key (kbd "C-u z") 'repeat)
(global-set-key (kbd "C-u a") 'move-beginning-of-line)
(global-set-key (kbd "C-u e") 'move-end-of-line)
(global-set-key (kbd "C-u <RET>") 'execute-extended-command)
(global-set-key (kbd "C-u \S-e e") "#")
(global-set-key (kbd "C-u \S-e d") "==")
(global-set-key (kbd "C-u \S-e n") "!=")
(global-set-key (kbd "C-u \S-e s") "<=")
(global-set-key (kbd "C-u \S-e f") "=>")
(global-set-key (kbd "C-u \S-e w") "-=")
(global-set-key (kbd "C-u \S-e r") "+=")

;; C-u u as alias
(global-set-key (kbd "C-u <SPC>") "~")
(global-set-key (kbd "C-u u a") "`")
(global-set-key (kbd "C-u u q") "!")
(global-set-key (kbd "C-u u w") "@")
(global-set-key (kbd "C-u u e") "#")
(global-set-key (kbd "C-u u r") "$")
(global-set-key (kbd "C-u u t") "%")
(global-set-key (kbd "C-u u y") "^")
(global-set-key (kbd "C-u u u") "&")
(global-set-key (kbd "C-u u i") "*")
(global-set-key (kbd "C-u i") "*")
(global-set-key (kbd "C-u o") "_")
(global-set-key (kbd "C-u u o") "-")
(global-set-key (kbd "C-u u p") "+" )
;;(global-set-key (kbd "C-u u") "-")
(global-set-key (kbd "C-u t") "*")
(global-set-key (kbd "C-u q") "(")
(global-set-key (kbd "C-x m")  'execute-extended-command)
(global-set-key (kbd "C-c m") 'compose-mail)

;;;;;;;;;;;;;;;;;;; some repeat command, save my ass ;;;;;;;;;;;;;;;;;;;;;;

(defun make-repeatable (command)
  "Repeat the COMMAND"
  (let ((repeat-message-function  'ignore))
    (setq last-repeatable-command command)
    (repeat nil)))
(defun my-forward-char ()
  "forward char"
  (interactive)
  (forward-char))
(defun my-forward-char-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-forward-char))
(global-set-key (kbd "C-u f") 'my-forward-char-repeat)

;;proevious-line
(defun my-previous-line ()
  "forward char"
  (interactive)
  (previous-line))
(defun my-previous-line-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-previous-line))
(global-set-key (kbd "C-u p") 'my-previous-line-repeat)

;;backward-kill-word repeat version
;;TODO, this could be done better way, with fine char condition specify.
;;TODO, make pnbf keys repeat also in between two keys.
;;(fset 'lg-kill-inword      [?\C-b ?\M-f C-backspace])
(defun my-kill-inword ()
  "also backward-kill-word"
  (interactive)
  (backward-kill-word 1))
(defun my-kill-inword-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-kill-inword))
(global-set-key (kbd "C-u w") 'my-kill-inword-repeat)

;;backward-char
(defun my-backward-char ()
  "forward char"
  (interactive)
  (backward-char))
(defun my-backward-char-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-backward-char))
(global-set-key (kbd "C-u b") 'my-backward-char-repeat)


;;next-line
(defun my-next-line ()
  "forward char"
  (interactive)
  (next-line))
(defun my-next-line-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-next-line))
(global-set-key (kbd "C-u n") 'my-next-line-repeat)

;;scroll-down
(defun my-scroll-down ()
  "forward char"
  (interactive)
  (scroll-down))
(defun my-scroll-down-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-scroll-down))
(global-set-key (kbd "C-u \S-v") 'my-scroll-down-repeat)

;;scroll-up
(defun my-scroll-up ()
  "forward char"
  (interactive)
  (scroll-up))
(defun my-scroll-up-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-scroll-up))
(global-set-key (kbd "C-u v") 'my-scroll-up-repeat)

;;make backwards repeat
(defun my-paredit-backward-delete ()
  "backspace and kill one chactor"
  (interactive)
  (paredit-backward-delete))
(defun my-paredit-backward-delete-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-paredit-backward-delete))
(global-set-key (kbd "C-u j") 'my-paredit-backward-delete-repeat)

;;forward delete
(defun my-paredit-forward-delete ()
  "backspace and kill one chactor"
  (interactive)
  (paredit-forward-delete))
(defun my-paredit-forward-delete-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-paredit-forward-delete))
(global-set-key (kbd "C-u d") 'my-paredit-forward-delete-repeat)


;;forward delete   sfdsfdsf
(defun my-paredit-backward-kill-word ()
  "backspace and kill one chactor"
  (interactive)
  (paredit-backward-kill-word))
(defun my-paredit-backward-kill-word-repeate ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-paredit-backward-kill-word))
(global-set-key (kbd "C-u h") 'my-paredit-backward-kill-word-repeate)

;;forward delete   sfdsfdsf
(defun my-paredit-kill ()
  "backspace and kill one chactor"
  (interactive)
  (paredit-kill))
(defun my-paredit-kill-repeate ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-paredit-kill))
(global-set-key (kbd "C-u k") 'my-paredit-kill-repeate)
;;org-mode-hook, to rebind the C-u key.
;;(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "C-u ") 'ring-map)))
;;org mode configure
;;(setq org-ditaa-jar-path "/usr/share/ditaa/ditaa.jar")

;;(setq org-agenda-files (list "~/org/work.org"                             "~/org/school.org"                             "~/org/home.org"))


;; (define-key key-translation-map (kbd "M-RET") (kbd "C-u"))
(define-key key-translation-map (kbd "C-b") (kbd "C-u b"))
(define-key key-translation-map (kbd "C-f") (kbd "C-u f"))
(define-key key-translation-map (kbd "C-n") (kbd "C-u n"))
(define-key key-translation-map (kbd "C-p") (kbd "C-u p"))
(define-key key-translation-map (kbd "C-v") (kbd "C-u v"))
(define-key key-translation-map (kbd "C-d") (kbd "C-u d"))
(define-key key-translation-map (kbd "C-k") (kbd "C-u k"))
;; (define-key key-translation-map (kbd "C-'") (kbd "C-u '"))
;; (define-key key-translation-map (kbd "C-j") [return]) dfad''
;; (define-key key-translation-map (kbd "RET") (kbd "C-u"))
;; (global-set-key (kbd "C-'") 'ring-map)

(provide 'init-local)
