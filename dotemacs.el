;;; package summarry
;;; code:
;; TODO, set C-x p, the privious command.
(set-frame-parameter (selected-frame) 'alpha (list 93 81))
(add-to-list 'default-frame-alist (cons 'alpha (list 91 91)))
(global-set-key (kbd "C-S-d") 'backward-kill-word)
(global-set-key "\C-o" 'lg-parensis)
(global-set-key "\C-q" "(")
(global-set-key (kbd "C-S-o") ")")

;;(global-set-key (kbd "C-S-j") 'sanityinc/open-line-with-reindent)
(global-set-key (kbd "C-S-j") 'paredit-newline)
(global-set-key (kbd "C-M-j") 'sanityinc/open-line-with-reindent)
(global-set-key (kbd "C-j")  'lg-ce-ent)

;;(global-set-key (kbd "C-o") 'evil-execute-in-normal-state)
;; lg-macro. insert-kbd-macro
(fset 'lg-run-python-line
      [?\C-a ?\C-  ?\C-\M-f ?\C-c ?\C-r ?\C-n ?\C-a])

(fset 'lg-kill-inword
      [?\C-b ?\M-f C-backspace])


;;'sa -- sdf
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

;;(fset 'lg-macro-to-call-befor-macro   [?\C-x ?\C-m ?l ?g ?- ?s return])
;;;backward-kill-word dsf
;;(global-set-key (kbd "C-k") ring)
;;(global-unset-key "\C-x m")  not neccery, since I decide to use C-' instead
;;(global-set-key "\C-k" 'paredit-kill)
(global-set-key [f12] 'toggle-truncate-lines)
(global-set-key (kbd "C-u") [backspace])

(global-unset-key (kbd "C-'"))
(define-prefix-command 'ring-map)

(global-set-key (kbd "C-' ") 'ring-map)
(global-set-key (kbd "C-' \" ") 'function-comment-my)
(global-set-key (kbd "C-' l") 'lg-run-python-line)
(global-set-key (kbd "C-' x") 'execute-extended-command)
(global-set-key (kbd "C-' j") [backspace])
(global-set-key (kbd "C-' d") 'paredit-forward-delete)
(global-set-key (kbd "C-' h") 'backward-kill-word)
(global-set-key (kbd "C-' k") 'paredit-kill)
(global-set-key (kbd "C-' C-'") 'switch-window)
(global-set-key (kbd "C-' ' '") 'switch-window)
(global-set-key (kbd "C-' c") 'switch-to-buffer)
(global-set-key (kbd "C-' ' c") 'kill-buffer)
(global-set-key (kbd "C-' ' k") 'kill-buffer)
(global-set-key (kbd "C-' ' f") 'find-file)
(global-set-key (kbd "C-' ' v") 'find-alternate-file)

(global-set-key (kbd "C-' s") 'save-buffer)
(global-set-key (kbd "C-' C-s") 'save-some-buffers)
(global-set-key (kbd "C-' g") 'keyboard-quit)

;(global-set-key (kbd "C-' c s") 'lg-sharp-coment)
(global-set-key (kbd "C-' ' l") 'eshell/clc)
;(global-set-key (kbd "C-' c ;") 'lg-period-comment)
;;(global-set-key (kbd "C-' w") (lambda (interactive) (forward-word) (backward-kill-word)))
(global-set-key (kbd "C-' w") 'lg-kill-inword)
(global-set-key (kbd "C-' z") 'repeat)
(global-set-key (kbd "C-' a") 'move-beginning-of-line)
(global-set-key (kbd "C-' <RET>") 'execute-extended-command)

(global-set-key (kbd "C-' e e") " = ")  ;;backspace is not  repeated
(global-set-key (kbd "C-' e d") "  ==  ")
(global-set-key (kbd "C-' e n") "  !=  ")
(global-set-key (kbd "C-' e s") "  =<  ")
(global-set-key (kbd "C-' e f") "  >=  ")
(global-set-key (kbd "C-' e w") "  -=  ")
(global-set-key (kbd "C-' e r") "  +=  ")

;; C-' ' as alias
(global-set-key (kbd "C-' <SPC>") "~")
(global-set-key (kbd "C-' ' a") "`")
(global-set-key (kbd "C-' ' q") "!")
(global-set-key (kbd "C-' ' w") "@")
(global-set-key (kbd "C-' ' e") "#")
(global-set-key (kbd "C-' ' r") "$")
(global-set-key (kbd "C-' ' t") "%")
(global-set-key (kbd "C-' ' y") "^")
(global-set-key (kbd "C-' ' u") "&")
(global-set-key (kbd "C-' ' i") "*")
(global-set-key (kbd "C-' o") "_")
(global-set-key (kbd "C-' ' o") "-")
(global-set-key (kbd "C-' ' p") "+" )
;;(global-set-key (kbd "C-' m") "-")
(global-set-key (kbd "C-' t") "*")
(global-set-key (kbd "C-' q") " = ")
(global-set-key (kbd "C-x m")  'execute-extended-command)
(global-set-key (kbd "C-c m") 'compose-mail)

;; interactive recursive uncoment, like a
;;(define-key 'ring-map (kbd "e") 'backward-kill-word)
;;dfs sa adf ad
;; those prefix key can be auto extened by self.
;;TODO, make the killing interactive and recoursive, like the evil-mode x-killing.
;; TODO, python-mode-hook, paradit mode.
;; TODO, the comment (C-' c) should make the decision on itself, if enough information have
;; DONE, org-mode-hook, to rebind the C-' key.
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "C-' ") 'ring-map)))
;; This worked
;;(org-cycle-agenda-files)
;;(global-set-key [C-mouse-1] 'mouse-set-point)
;;next and previous buffer
(global-set-key (kbd "C-^") 'previous-buffer)
;;(global-set-key (kbd "C-S-p") 'previous-buffer)
(global-set-key (kbd "C-&") 'next-buffer)
;;(global-set-key (kbd "C-") 'next-buffer)
;;;the C-U will set control u and U both. it should be C-S-u. successed.
;;(global-set-key "\C-u" 'backward-delete-char-untabify)
;;(global-set-key "\C-u d" 'backward-kill-word)

;;so, this is it, bind to key.
;; next to do,
;;(global-set-key (kbd "C-S-u") 'undo-tree-undo)
;;evil-mode trigger
;;(control-mode-localized-setup)
(load-file "~/.emacs.d/evil/init.el")
(global-set-key (kbd "C-z") 'evil-mode)
(setq evil-default-state 'emacs)
;;no work
;;(global-set-key "\C-m" SPC )
;;(global-set-key "\C-i" 'back)
;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;(menu-bar-mode 1)
(setq default-truncate-lines t)
(setq truncate-lines nil)
;;(set-input-method "TeX")
;;;I am defining a new key binding in shell mode.
(defun eshell/clc ()
  "to clear eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
;;;and this works.
;;org mode configure
(setq org-ditaa-jar-path "/usr/share/ditaa/ditaa.jar")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (perl . t)
   (emacs-lisp . t)
   (latex . t)
   (ditaa . t)
   (sh . t)
   (R . t)
   (ruby . t)
   (scheme . t)
;   (racket . t)
;   (sbcl . t)
   (lisp . t)
   ))
;;org configure end here.
;scheme or racket
;commom lisp
;;(setq inferior-lisp-program "/usr/bin/sbcl")
(setq inferior-lisp-program "/usr/bin/clisp")
(require 'slime)
(slime-setup)
(slime-setup '(slime-fancy))
(require 'cmuscheme)
(setq scheme-program-name "scheme")
;(setq python-program-name "python3")
(setq racket-program-name "racket")
;(require 'cmuscheme)
;(set-variable (quote scheme-program-name) "racket")
;(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
                                        ;(setq auto-mode-alist (append '(("//.//(frm//|bas//|cls//|vb//)$" .                                 visual-basic-mode)) auto-mode-alist))
(setq auto-mode-alist (append '( ("\\.rkt\\'" .
                                  racket-mode)) auto-mode-alist))

;to set the interpreter of python
(when (executable-find "ipython3")  (setq python-shell-interpreter "ipython3"))
;;TODO, the interprator do not compareable,
;;and I cann't choose the programe by changing the name. In other words, this option is fixed.
;;(setq python-shell-interpreter "ipython3")
;;there are some emacs-ipython git-repos, read as this:https://github.com/burakbayramli/emacs-ipython
(add-hook 'scheme-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'racket-mode-hook 'autopair-mode)
(add-hook 'picolisp-mode-hook 'autopair-mode)
;(add-hook 'racket-mode-hook (lambda ()                              (progn ())))

;;start new shell in emacs
;; by Ellen Taylor, 2012-07-20
(defadvice shell (around always-new-shell)
  "Always start a new shell."
  (let ((buffer (generate-new-buffer-name "*shell*"))) ad-do-it))
(ad-activate 'shell)
;;and it works
;;org2blog setups
;;(setq org2blog/wp-blog-alist      '(("github.io"         :url "http://chenjinqian.github.io/"         :username "chenjinqian"        :password lewis314)))
;;(require 'yasnippet)
;;(yas/global-mode 1)
;;(load-file "~/.emacs.d/lisp/init-locales.el")

;;some repeat command to rescue my left ?small finger from holding control key.
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

(global-set-key (kbd "C-' f") 'my-forward-char-repeat)
;;proevious-line
(defun my-previous-line ()
  "forward char"
  (interactive)
  (previous-line))

(defun my-previous-line-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-previous-line))

(global-set-key (kbd "C-' p") 'my-previous-line-repeat)
;;backward-char
(defun my-backward-char ()
  "forward char"
  (interactive)
  (backward-char))

(defun my-backward-char-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-backward-char))

(global-set-key (kbd "C-' b") 'my-backward-char-repeat)
;;next-line
(defun my-next-line ()
  "forward char"
  (interactive)
  (next-line))

(defun my-next-line-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-next-line))

(global-set-key (kbd "C-' n") 'my-next-line-repeat)

;;scroll-down
(defun my-scroll-down ()
  "forward char"
  (interactive)
  (scroll-down))

(defun my-scroll-down-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-scroll-down))

(global-set-key (kbd "C-' \S-v") 'my-scroll-down-repeat)

;;scroll-up
(defun my-scroll-up ()
  "forward char"
  (interactive)
  (scroll-up))

(defun my-scroll-up-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-scroll-up))

(global-set-key (kbd "C-' v") 'my-scroll-up-repeat)

;;make backwards repeat
;;(fset 'lg-backspace      [backspace]) ;;
(defun my-paredit-backward-delete ()
  "backspace and kill one chactor"
  (interactive)
  (paredit-backward-delete))

(defun my-paredit-backward-delete-repeat ()
  (interactive)
  (require 'repeat)
  (make-repeatable 'my-paredit-backward-delete))

(global-set-key (kbd "C-' u") 'my-paredit-backward-delete-repeat)
;(defun function-foo ()  (interactive)  (#@[backspace])  (set-temporary-overlay-map    (let ((map (make-sparse-keymap)))      (define-key map (kbd "=") 'function-foo)      map)))
;(require 'smartrep)
;(smartrep-define-key    global-map "C-'" '(("i" . (my-next-line))                       ("y" . (my-previous-line))                       ("N" . 'scroll-other-window)                       ("P" . (scroll-other-window '-))                       ("a" . (beginning-of-buffer-other-window 0))                       ("e" . (end-of-buffer-other-window 0))                       ))

(provide 'init-local)
