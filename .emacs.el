;------------------------------------------
; menu bar, Gui settings..
; disable the menu-bar
(tool-bar-mode	0)
(menu-bar-mode	0)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(set-frame-height (selected-frame) 50)
(set-frame-width (selected-frame) 160)
(setq x-select-enable-clipboard t)

(add-hook 'after-init-hook 'global-company-mode)

;------------------------------------------
(auto-revert-mode t)

;------------------------------------------

(if (file-exists-p "TAGS") 
	(progn
		(visit-tags-table "TAGS")
		(setq auto-complete-mode t))
;else
	(if (file-exists-p "../TAGS")	
		(progn
			(visit-tags-table "../TAGS")
			(setq auto-complete-mode t))))


;(add-to-list 'ac-sources 'ac-source-etags)

;------------------------------------------
; Focus Follows Mouse
(setq mouse-autoselect-window t)

; keyboard swap for typing lower_case_style fast
; (keyboard-translate ?- ?_)
; (keyboard-translate ?_ ?-)

;------------------------------------------
;
; CEDET
;
;(semantic-mode 1)
;(defun my:add-semantic-to-autocomplete()
;    (add-to-list 'ac-sources 'ac-source-semantic)
;)
;(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

;------------------------------------------
;
; dark color scheme
;

(defun set-theme-dark()
	(interactive)
	(set-background-color "#202428")
	(set-foreground-color "#ffffff")
	(set-face-background 'highlight  "#003040")
	(global-hl-line-mode 1)
	(scroll-bar-mode 0)
	(set-face-attribute 'fringe nil :background "#505050" :foreground "#707070")
	(set-face-foreground 'mode-line-buffer-id "#605040")
	(set-face-attribute 'mode-line-inactive nil :box nil :background "#c0c0c0" :foreground "#606060")
	(set-face-attribute 'mode-line nil :box nil :background "#806040" :foreground "#f0e000")


	(set-face-background 'cursor "#606060")
	(set-face-background 'region "#204060")

	(make-face 'font-lock-operator-face)
	(make-face 'font-lock-delimiter-face)
	(make-face 'font-lock-keyword-decl-face)
	(make-face 'font-lock-trait-def-face)
	(make-face 'font-lock-fn-def-face)
	(make-face 'font-lock-struct-def-face)
	(make-face 'font-lock-enum-def-face)
	(make-face 'font-lock-impl-face)
	(make-face 'font-lock-type-param-face)

	(custom-set-faces
	 '(font-lock-comment-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#406080" :italic t))))
	 '(font-lock-function-name-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#e0f0ff" :bold t))))
	 '(font-lock-type-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#80e0ff" ))))
	 '(font-lock-preprocessor-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#c080c0" ))))
	 '(font-lock-operator-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#c0ffc0" ))))
	 '(font-lock-delimiter-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#ffffc0" ))))

	 '(font-lock-type-param-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#40ffe0" ))))

	 '(font-lock-fn-def-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#c8e8ff" :bold t))))
	 '(font-lock-trait-def-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#ffd0e8" :bold t))))
	 '(font-lock-enum-def-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#e8c0ff" :bold t))))
	 '(font-lock-struct-def-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#e8ffe8" :bold t))))
	 '(font-lock-impl-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#f0f0f0" :bold t))))

	 '(font-lock-keyword-face 
		((((class color)(min-colors 88) (background dark))
		   (:foreground "#ffd0f0" )))))

		(set-default-font "-unknown-Ubuntu Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
)

(defun set-font-large()
	(interactive)
(set-default-font "-unknown-Droid Sans Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
)


(defun set-theme-light()
	(interactive)
	(set-default-font "-unknown-Liberation Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
	(set-background-color "#ffffff")
	(set-foreground-color "#000000")
	(set-face-background 'highlight  "#f8f8f8")
	(global-hl-line-mode 1)
	(scroll-bar-mode 0)
	(set-face-attribute 'fringe nil :background "#e8e8e8" :foreground "#d0d0d0")
	(set-face-foreground 'mode-line "#f0e000")
	(set-face-background 'mode-line "#806040")
	(set-face-foreground 'mode-line-inactive "#606060")
	(set-face-background 'mode-line-inactive "#c0c0c0")
	(set-face-foreground 'mode-line-buffer-id "#808080")
	(set-face-background 'cursor "#402000")
	(set-face-background 'region "#80c0f0")
	(set-face-attribute 'mode-line-inactive nil :box nil :background "#e8e8e8" :foreground "#a0a0a0")
	(set-face-attribute 'mode-line nil :box nil :background "#d0d0d0" :foreground "#404040")

	(custom-set-faces
	 '(font-lock-comment-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#808080" :italic t))))
	 '(font-lock-function-name-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))
	 '(font-lock-type-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#2040a0" ))))
	 '(font-lock-preprocessor-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#804080" ))))
	 '(font-lock-operator-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#800040" ))))
	 '(font-lock-delimiter-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#800000" ))))

	 '(font-lock-type-param-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#6080c0" ))))

	 '(font-lock-fn-def-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))
	 '(font-lock-trait-def-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))
	 '(font-lock-enum-def-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))
	 '(font-lock-struct-def-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))
	 '(font-lock-impl-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#000000" :bold t))))

	 '(font-lock-keyword-face 
		((((class color)(min-colors 88) (background light))
		   (:foreground "#20a060" )))))
)

(if window-system	
	(progn
		(set-theme-light)
		(set-default-font "-unknown-Liberation Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
		(set-default-font "-unknown-Ubuntu Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
	)
)
(defun set-theme-retro()
	(interactive)
	(set-default-font "-xos4-Terminus-normal-normal-normal-*-14-*-*-*-c-80-iso10646-1")
)

(custom-set-variables '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))
(message "initcustom emacs")
(message "precompiling..")

;(byte-compile-file "~/elisp/rainbow-delimiters.el")
;(byte-compile-file "~/elisp/paredit.el")
;(byte-compile-file "~/elisp/popup.el")
;(byte-compile-file "~/elisp/pretty-mode.el")
;(byte-compile-file "~/elisp/highlight-parenthesis.el")
;(byte-compile-file "~/elisp/auto-complete.el")
;(byte-compile-file "~/elisp/windmove2.el")
;(byte-compile-file "~/elisp/code-definition-window.el")
;(byte-compile-file "~/elisp/cl-lib.el")
;(byte-compile-file "~/elisp/ibuffer.el")
;(byte-compile-file "~/elisp/cm-mode.el")
;(byte-compile-file "~/elisp/rust-mode.el")

;-------------------------------------
; clang stuff
;(byte-compile-file "~/elisp/auto-complete-clang-async.el")
;(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

;(my-ac-config)

;---------------------------------------
; split window

(defun split-window-smart ()
	(interactive)
	(let ((win (selected-window)))
		(message "win: %d x %d" (window-width win)(window-height win))
		(if (> (*(window-width win) 1)(*(window-height win)2))
			(split-window-horizontally)
			(split-window-vertically))
		(other-window 1)
		(ff-find-other-file)
		))


(message "adding dirs..")

;(byte-compile-file "~/elisp/thingatpt.el")
(print "initiating emacs print>")

(add-to-list 'load-path "~/elisp")
(add-to-list 'load-path "slime")
(add-to-list 'load-path "~/elisp/haskell-mode")

;(load "slime.el")
;(load "haskell-site-file.el")
;(load "pretty-mode.el")
;(load "highlight-parenthesis.el")
;(load "thingatpt.el")

(require 'compile)
(load "cl-lib.el")
(load "popup.el")
(load "framemove.el")
(load "windmove2.el")
(load "code-definition-window.el")
(load "auto-complete.el")
(load "ibuffer.el")
(load "rust-mode.el")
(load "auto-complete-etags.el")
(require 'etags)
(require 'auto-complete-etags)
(load "auto-complete-clang-extention.el")
;(load "~/gplsrc/racer/editors/racer.el")

;(load "go-mode.el")
;(autoload "rust-mode.el") ;
;(require 'rust-mode)
;(require 'ls-lisp)
(setq ls-lisp-use-insert-directory-program nil)
;(load "anything.el")
;(load "clang-completion-mode.el")	 .. looks flaky...
;(load "auto-complete-clang-async.el")



;(slime-setup)
;(setq inferior-lisp-program "sbcl")
;(setq inferior-lisp-program "clojure")

;TODO - figure out how to get one bound to right-click menu

;------------------------------------------
; set theme
(make-face 'common-lisp-face)
(make-face 'vmath-face)
(set-face-foreground 'common-lisp-face "#402000")
(set-face-foreground 'vmath-face "#004040")


;(dark-theme)
(scroll-bar-mode 0)
(setq scroll-step 1)

(setq-default c-basic-offset 4 tab-width 4 indent-tabs-mode t)
(setq c-default-style "k&r")

(defun set-theme-light()
	(set-background-color "#ffffff")
	(set-foreground-color "#000000")
	(set-face-background 'highlight  "#f0f0ff")
	(global-hl-line-mode 1)
	(scroll-bar-mode 0)
	(set-face-attribute 'fringe nil :background "#c0c0c0" :foreground "#707070")
	(set-face-foreground 'mode-line "#f0e000")
	(set-face-background 'mode-line "#806040")
	(set-face-foreground 'mode-line-inactive "#606060")
	(set-face-background 'mode-line-inactive "#c0c0c0")
	(set-face-foreground 'mode-line-buffer-id "#605040")
	(set-face-background 'cursor "#402000")
	(set-face-background 'region "#80c0f0")
)

;------------------------------------------
;killing reminder assist
(defun mksubstr (str maxlen)
	(substring-no-properties
		(replace-regexp-in-string "\s\s+" " "
			(replace-regexp-in-string "\n" ""
				(replace-regexp-in-string "\t" " "
					(truncate-string-to-width str maxlen))))))

(defun kill-ring-concat(width-remains n kls)
;	(if (or(< n 1)(< 2 width-remains)) (return ";"))
	(if (and kls (> n 0)) 
		(let ((newstr (concat"\"" (mksubstr (car kls) (/ width-remains 3))"\" " )))
			(message newstr)
			(concat
				newstr
				(kill-ring-concat
					(- width-remains (length newstr))
					(- n 1)
					(cdr kls)))
;			(message "[%s]" newstr)
;			newstr
;			(concat
;				newstr
;				(kill-ring-concat
;					(floor (- width-remains (length newstr))) 
;					(- n 1)
;					(cdr kls)))
		)
		";"
	)
)
;(mksubstr  "foo\t\nbar\t\n\n\nbaz\t" 32)
(defun show-kill-ring-summary(txt) (message "%s M-y: %s" txt(kill-ring-concat (window-width (active-minibuffer-window)) 16 kill-ring)))
(show-kill-ring-summary "")

(defun copy-and-show ()
	(interactive)
	(kill-ring-save(region-beginning)(region-end))
	(show-kill-ring-summary "copy")
)
(defun cut-and-show ()(interactive)(kill-region)(show-kill-ring-summary "cut"))
(defun paste-and-show ()(interactive)(show-kill-ring-summary "paste"))
(defun show-kill-ring-summary-i()(interactive)(show-kill-ring-summary""))
;(define-key CUA-mode-map (kbd "C-c") 'copy-and-show)
;(global-set-key (kbd "C-x") 'cut-and-show)
;(global-set-key (kbd "C-v") 'paste-and-show)


;------------------------------------------
; tabs

(setq-default c-basic-offset 4 tab-width 4 indent-tabs-mode t)
(setq default-tab-width 4)
(set-variable 'tab-width 4)
(setq c-default-style "k&r")
(setq-default tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64))
(add-hook 'python-mode-hook
	(lambda()
	(setq indent-tabs-mode t)
	(setq tab-width (default-value 4))))


;------------------------------------------
; editing modes

(defun my-common-mode()
	(setq indent-tabs-mode t)
	(local-set-key (kbd "<tab>") 'tab-to-tab-stop)
)

;------------------------------------------
;obselete modes
;	(highlight-parentheses-mode 1)
;	(pretty-mode +1)
;	(paredit-mode +1)
;	(rainbow-delimiters-mode)
;	(linum-mode)


;------------------------------------------
; c++
										;
(add-hook 'c-mode-common-hook
	(lambda()
		(my-common-mode)	
		(company-mode)
		(setq indent-tabs-mode t c-basic-offset 4 tab-width 4)
		(setq c-backspace-function 'backward-delete-char)  
		(setq c-electric-backspace 'backward-delete-char)
		(local-set-key (kbd "C-i") 'goto-line)
		(local-set-key (kbd "<tab>") 'tab-to-tab-stop)
		(add-hook 'post-command-hook 'show-definition)
	)
)
;------------------------------------------
; rust extra ..
(add-hook 'rust-mode-hook 
	(lambda()
		(my-common-mode)
		(auto-complete-mode) ; bog standard text-completion
		(setq indent-tabs-mode t)
		(local-set-key (kbd "<tab>") 'tab-to-tab-stop)

	)
)

;------------------------------------------
; haskell mode

(add-hook 'haskell-mode-hook (lambda()(my-common-mode)(turn-on-haskell-doc-mode))
)

;------------------------------------------
; clojure modes

(add-hook 'clojure-mode-hook (lambda()(my-common-mode)))

;------------------------------------------
; makefiles

(add-hook 'makefile-mode-hook (lambda()(my-common-mode)))


;-------------------------------------------
;OR FOR LATER VERSIONS OF SLIME...
;(slime-setup '(slime-repl))
(print "CUA-mode on")
(cua-mode)
(message "load libs.")

;(load "rainbow-delimiters")
;(require 'paredit)
;(require 'rainbow-delimiters)
;(require 'pretty-mode)
;(require 'thingatpt)

;(load "rainbow-delimiters")
;(load "pretty-mode")
;(load "paredit")
;(load "thingatpt")

(message "initialized custom emacs settings")
(add-hook 'lisp-mode-hook (lambda()(print "Enabled my lisp mode tweaks")(my-common-mode) ))

(defun new-empty-buffer ()(interactive)(switch-to-buffer "new"))

(defun my-keyboard-escape-quit () (interactive)
	(when (active-minibuffer-window)
		(keyboard-escape-quit)))


;---------------------------------------------
(provide 'debug-windows)
(provide 'launch-debugger)
(provide 'compile)
(provide 'compile-and-debug)

(defun kill-buffer-force() (interactive
) (kill-buffer (current-buffer)))

(message "main keymap")

(print "windows/vs-Style Key Bindings")
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "M-o") 'cpph-open-src-h)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "S-C-s") 'write-file)
(global-set-key (kbd "C-M-s") 'rename-file-and-buffer)
(message "init 0.6")

(global-set-key (kbd "C-f") 'isearch-forward)
;(global-set-key (kbd "C-h") 'replace-string)
(global-set-key (kbd "S-C-f") 'isearch-backward)
(global-set-key (kbd "<f3>")	'isearch-repeat-forward)
(global-set-key (kbd "C-<f3>")	'isearch-repeat-backward)

(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-g") 'find-file-at-point)
(global-set-key (kbd "M-x") 'execute-extended-command)
(global-set-key (kbd "C-i") 'goto-line)
(global-set-key (kbd "C-b") 'buffer-menu)
(global-set-key (kbd "C-<tab>") 'ibuffer)
(global-set-key (kbd "C-w") 'kill-buffer-force)
(global-set-key (kbd "C-n") 'new-source-header)
(global-set-key (kbd "C-<kp-prior>") 'previous-buffer)
(global-set-key (kbd "C-<kp-next>") 'next-buffer)
(global-set-key (kbd "M-<kp-next>") 'next-multiframe-window)
(global-set-key (kbd "M-<kp-prior>") 'previous-multiframe-window) 

(message "init 0.6")

(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)

(global-set-key (kbd "<f1> <up>") 'windmove-up)
(global-set-key (kbd "<f1> <down>") 'windmove-down)
(global-set-key (kbd "<f1> <left>") 'windmove-left)
(global-set-key (kbd "<f1> <right>") 'windmove-right)
(global-set-key (kbd "<f1> <prior>") 'other-frame)
(global-set-key (kbd "<f1> <next>") 'previous-multiframe-window)
(global-set-key (kbd "<f1> <f1>") 'other-frame)
(global-set-key (kbd "<f1> n") 'new-frame)
(global-set-key (kbd "<f1> x") 'delete-frame)

(global-set-key (kbd "<f1> C-<left>") 'split-window-horizontally)
(global-set-key (kbd "<f1> C-<up>") 'split-window)
(global-set-key (kbd "<f1> <next>") 'other-frame)
(global-set-key (kbd "<f1> <prior>") 'other-frame)
(global-set-key (kbd "<f1> C-<next>") 'new-frame)
(global-set-key (kbd "<f1> C-<prior>") 'new-frame)
(global-set-key (kbd "<f1> d") 'enable-code-def-window)

(global-set-key (kbd "<f1> z") 'delete-other-windows)
(message "init 0.7")

(defun save-and-compile()
    (interactive)(save-some-buffers 1) ( compile "make"))
(defun save-and-debug()
    (interactive)(save-some-buffers 1) ( compile "make debug") ('gdb))

(global-set-key (kbd "<f5>")	'save-and-debug)
(global-set-key (kbd "C-<f5>")	'gud-cont)
(global-set-key (kbd "<f7>")	'save-and-compile)
(global-set-key (kbd "<C-f7>")	'save-and-compile)
(global-set-key (kbd "<f4>")	'next-error)
(global-set-key (kbd "<f9>")	'gud-break)
(global-set-key (kbd "<f10>")	'gud-next)
(global-set-key (kbd "C-<f10>")	'gud-stepi)
(global-set-key (kbd "<f11>")	'gud-step)
(global-set-key (kbd "S-<f11>")	'gud-step)
(global-set-key (kbd "C-<f11>")	'gud-finish)
(global-set-key (kbd "C-<f5>")	'gud-cont)
(global-set-key (kbd "C-<pause>") 'comint-stop-subjob)
(global-set-key (kbd "<pause>")	'comint-stop-subjob)
(defun my-test-function ()		(message "hello world"))
(message "init 0.75")
(global-set-key (kbd "<f2>")	'ff-find-other-file)
(global-set-key (kbd "C-<f2>")	'ff-find-other-file)
(global-set-key (kbd "S-<f12>")	(lambda()(interactive) (browse-url (concatenate 'string "https://www.google.co.uk/\#q=" (thing-at-point 'symbol)))))

(global-set-key (kbd "C-<f12>")	(lambda()(interactive)(browse-url (concatenate 'string "https://static.rust-lang.org/doc/master/std/index.html?search=" (thing-at-point 'symbol)))))


; (thing-at-point ('symbol)))))
(global-set-key (kbd "<f12>")	(lambda()(interactive)(find-tag(find-tag-default))))
(global-set-key (kbd "C-<kp-multiply>") 'pop-tag-mark)
(message "init 0.76")
(global-unset-key (kbd "ESC ESC ESC"))
(global-set-key (kbd "<escape>") 'my-keyboard-escape-quit)
(global-set-key (kbd "C-<kp-home>") 'beginning-of-buffer)
(global-set-key (kbd "C-<kp-end>") 'end-of-buffer)
(global-set-key (kbd "C-i") 'goto-line)
(setf backward-delete-char-untabify-method nil)
;(global-set-key (kbd "<tab>") 'tab-to-tab-stop)	

;-------------------------------------------
; obselete modes
;(global-set-key (kbd "C-p") 'paredit-mode)
;(global-set-key (kbd "M-p") 'pretty-mode)
;(global-set-key (kbd "<backspace>") 'backward-delete-char)


;------------------------------------------------
; autocomplete mode
(auto-complete t)
(setf ac-auto-start 1)


		
(global-set-key (kbd "<kp-add>") (lambda()
	(interactive)
		(if (region-active-p) 
			(progn	
				(print "foobar")
				(message "%d-%d" (region-beginning)(region-end))
				(kill-ring-save (region-beginning)(region-end)))
			(progn
				(beginning-of-line)
				(kill-whole-line)
				(yank)
				(previous-line)))))



(global-set-key (kbd "<kp-subtract>") 
	(lambda()
		(interactive)
			(if (region-active-p)
				(kill-region(region-beginning)(region-end))
			:else
				(beginning-of-line)
				(kill-line))))
(defun rotate-list(ls)(append (rest ls)(list (first ls))))
(global-set-key (kbd "<insert>") 
	(lambda()
		(interactive)
		(yank)
		(setq kill-ring (rotate-list kill-ring))))


;------------------------------------------------------------------------
; window management - shift the current frame around
(message "init 0.77")

(defun windmove-swap-window (dir &optional sel)
	(let (	(w0 (selected-window))
			(w1 (windmove-find-other-window dir)))
		(let ((b0 (window-buffer w0))
			  (b1 (window-buffer w1)))
			(set-window-buffer w0 b1)
			(set-window-buffer w1 b0)
			(if sel (select-window w1)))))
(message "init 0.78")

(defun windmove-swap-window-up ()(interactive)(windmove-swap-window 'up t))
(defun windmove-swap-window-down ()(interactive)(windmove-swap-window 'down t))
(defun windmove-swap-window-left ()(interactive)(windmove-swap-window 'left t))
(defun windmove-swap-window-right ()(interactive)(windmove-swap-window 'right t))
(message "init 0.79")

(global-set-key (kbd "<f1> <f5> <left>") 'windmove-swap-window-left)
(global-set-key (kbd "<f1> <f5> <right>") 'windmove-swap-window-right)
(global-set-key (kbd "<f1> <f5> <up>") 'windmove-swap-window-up)
(global-set-key (kbd "<f1> <f5> <down>") 'windmove-swap-window-down)

(global-set-key (kbd "<f1> S-<left>") 'windmove-swap-window-left)
(global-set-key (kbd "<f1> S-<right>") 'windmove-swap-window-right)
(global-set-key (kbd "<f1> S-<up>") 'windmove-swap-window-up)
(global-set-key (kbd "<f1> S-<down>") 'windmove-swap-window-down)

(global-set-key (kbd "S-<f1> <left>") 'windmove-swap-window-left)
(global-set-key (kbd "S-<f1> <right>") 'windmove-swap-window-right)
(global-set-key (kbd "S-<f1> <up>") 'windmove-swap-window-up)
(global-set-key (kbd "S-<f1> <down>") 'windmove-swap-window-down)

(global-set-key (kbd "S-M-<left>") 'windmove-swap-window-left)
(global-set-key (kbd "S-M-<right>") 'windmove-swap-window-right)
(global-set-key (kbd "S-M-<up>") 'windmove-swap-window-up)
(global-set-key (kbd "S-M-<down>") 'windmove-swap-window-down)
(global-set-key (kbd "C-i") 'goto-line)


(defun split-window-prop (f &optional dir srcwin)
	(interactive)
	(let ((win (if srcwin srcwin (selected-window))))
		(let ((size 
				(if dir (window-width win)(window-height win))))
			(split-window win (floor (* size f)) dir))))
(message "init 0.781")

(defun winsplit (win0 f dir &optional f0 f1)
	(let ((win1 (split-window-prop f dir win0)))
		(if f0 (funcall f0 win0))
		(if f1 (funcall f1 win1))))

(message "init 0.782")

;------------------------------------------------------------------------
;
; Compilation behaviour: Prefer to put compile in a wider window
;

(defun split-window-quater ()(interactive) (split-window)(split-window)(delete-window))

(defun main-window-list()(remove-if 'window-minibuffer-p (window-list)))
(defun find-best (score ls)
	(reduce (lambda(a b)(if (> (funcall score a)(funcall score b)) a b)) ls))
(message "init 0.790")
(defun window-aspect-ratio(win)(/(window-width win)(window-height win)))
(defun select-widest-window()(interactive)
	(select-window (find-best 'window-aspect-ratio (main-window-list))))

(setq special-display-buffer-names '("*compilation*"))

;(if nil 
(setq special-display-function
      (lambda (buffer &optional args)
		(let ((cw
				(find-best 'window-aspect-ratio (main-window-list))))
		(if (null cw)
			(split-window)
			(select-window cw))
		(switch-to-buffer buffer)
		(get-buffer-window buffer 0))))


(global-set-key (kbd "C-x g")
	(lambda()
		(interactive)
		(grep (concat "grep -n -r " (thing-at-point 'symbol)))))


(message "init 0.8")



;--- debugger--
(global-set-key (kbd "C-S-b")	'compile)
(walk-windows					'(lambda(a) (print a)))
(message "init0.9")

;-------------------------------------------
; window manipulation..
(defun get-window-list()
	(let ((num-windows 0)(wndlist '())) 
		(walk-windows
			(lambda(a)
				(setf wndlist (append (list a) wndlist))
				(setf num-windows (+ 1 num-windows))
			)) 
		wndlist))

(message "init1")
(defun get-num-windows() (safe-length (get-window-list)))
;(global-set-key (kbd "<f1> <left>") (lambda()(interactive)(if (>= (get-num-windows) 2) (windmove-left) (split-window-horizontally))))
;(global-set-key (kbd "<f1> <right>") (lambda()(interactive)(if (>= (get-num-windows) 2) (windmove-right) (split-window-horizontally))))

(global-set-key (kbd "<f1> <f2>") 'split-window-smart)

(global-set-key (kbd "C-<f1> <left>") 
	(lambda()
		(interactive)
		(split-window-horizontally)
		(ff-find-other-file)))

(global-set-key (kbd "C-<f1> <up>")
	(lambda()
		(interactive)
		(split-window)
		(ff-find-other-file)))
(message "init1.2")

(global-set-key (kbd "C-<f1> <right>") 
	(lambda()
		(interactive)
		(split-window-horizontally)
		(other-window 1)
		(toggle-code-def-window)
		(other-window -1)))

(global-set-key (kbd "C-<f1> <down>") 
	(lambda()
		(interactive)
		(split-window)
		
   		(other-window 1)
   		(toggle-code-def-window)
   		(other-window -1)))

(message "init2")
(global-set-key (kbd"<f1> <f4>")
	(lambda()
		(interactive)
		(delete-window)))


(defun find-window-dir (dir)
	(let ( (w (windmove-find-other-window dir)))
		(if (window-minibuffer-p w)
			nil
			w)))

(defun change-window-size (dir fninc fndec)
	(if (find-window-dir dir)
		(funcall fninc 1)
		(funcall fndec 1)))
(message "init4")



(defun my-cc-newline-and-indent ()
  "If we are between braces (that were mos probably created by
electric-pairs) prepare for writing the body of something"
  (interactive)
  (if (and (looking-at "}") (looking-back "{"))
      (progn (newline-and-indent) (newline-and-indent) (previous-line) (c-indent-line-or-region))
    (newline-and-indent)))
;(global-set-key (kbd "<return>") 'my-cc-newline-and-indent)

;---------------------------------------------
(message "setup minor mode..")

;(print "paredit mode enable")
;(paredit-mode) 
(eval-after-load 'paredit
'(progn
  (define-key paredit-mode-map (kbd "C-<right>") 'paredit-forward)
  (define-key paredit-mode-map (kbd "C-<left>") 'paredit-backward)
  (define-key paredit-mode-map (kbd "C-<up>") 'paredit-backward-up)
  (define-key paredit-mode-map (kbd "C-<down>") 'paredit-forward-down)
  (define-key paredit-mode-map (kbd "M-<up>") nil)
  (define-key paredit-mode-map (kbd "M-<down>") nil)
  (define-key paredit-mode-map (kbd "M-<left>") nil)
  (define-key paredit-mode-map (kbd "M-<right>") nil)
  (define-key paredit-mode-map (kbd "TAB") nil)
;  (define-key paredit-mode-map (kbd "C-i") nil)
  (define-key paredit-mode-map (kbd ")" ) 'paredit-split-sexp)
))

;-------------------------------------------------------------
; custom keyword highlighting

(defvar owin nil)
(defvar twin nil)
(defvar dwin nil)
(defun my-dired()
	(interactive)
	(setq owin (selected-window))
	(setq twin (split-window-horizontally))
	(setq dwin (selected-window))
	(call-interactively 'dired)
)

(define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
(define-key dired-mode-map (kbd "<right>") 'dired-find-file)
(define-key dired-mode-map (kbd "<down>") 
	(lambda()
		(interactive)
		(next-line)
;		(set-window-buffer twin (find-file-noselect (dired-get-file-for-visit)))
		))
			
(define-key dired-mode-map (kbd "<up>") 
	(lambda()
		(interactive)
		(previous-line)
;		(set-window-buffer twin (find-file-noselect (dired-get-file-for-visit)))
))


;-------------------------------------------------------------
; custom keyword highlighting
(message "custom keywords")

(defun add-custom-keyw()
  (font-lock-add-keywords nil
   '( 
     ("\\<\\(set\\)".'common-lisp-face)

     ("\\<\\(apply\\)".'common-lisp-face)
     ("\\<\\(mapcar\\)".'common-lisp-face)
     ("\\<\\(filter\\)".'common-lisp-face)
     ("\\<\\(funcall\\)".'common-lisp-face)
     ("\\<\\(reduce\\)".'common-lisp-face)
     ("\\<\\(fold\\)".'common-lisp-face)
     ("\\<\\(foldl\\)".'common-lisp-face)
     ("\\<\\(foldr\\)".'common-lisp-face)

     ("\\<\\(+\\)".'common-lisp-face)
     ("\\<\\(-\\)".'common-lisp-face)
     ("\\<\\(*\\)".'common-lisp-face)
     ("\\<\\(/\\)".'common-lisp-face)

     ("\\<\\(car\\)".'common-lisp-face)
     ("\\<\\(cdr\\)".'common-lisp-face)
     ("\\<\\(list\\)".'common-lisp-face)
     ("\\<\\(append\\)".'common-lisp-face)
     ("\\<\\(push\\)".'common-lisp-face)
     ("\\<\\(pop\\)".'common-lisp-face)
     ("\\<\\(first\\)".'common-lisp-face)
     ("\\<\\(second\\)".'common-lisp-face)
     ("\\<\\(last\\)".'common-lisp-face)
     ("\\<\\(length\\)".'common-lisp-face)
     ("\\<\\(vector\\)".'common-lisp-face)
     ("\\<\\(cddr\\)".'common-lisp-face)
     ("\\<\\(memq\\)".'common-lisp-face)
     ("\\<\\(memv\\)".'common-lisp-face)

     ("\\<\\(and\\)".'common-lisp-face)
     ("\\<\\(or\\)".'common-lisp-face)
     ("\\<\\(xor\\)".'common-lisp-face)

     ("\\<\\(stringp\\)".'common-lisp-face)
     ("\\<\\(symbol-name\\)".'common-lisp-face)
     ("\\<\\(values\\)".'common-lisp-face)
     ("\\<\\(multiple-value-bind\\)".'common-lisp-face)
     ("\\<\\(to-string\\)".'common-lisp-face)
     ("\\<\\(concatenate\\)".'common-lisp-face)
     ("\\<\\(string\\)".'common-lisp-face)

     ("\\<\\(for\\)".'common-lisp-face)
     ("\\<\\(in\\)".'common-lisp-face)
     ("\\<\\(do\\)".'common-lisp-face)
     ("\\<\\(dotimes\\)".'common-lisp-face)
     ("\\<\\(while\\)".'common-lisp-face)
     ("\\<\\(when\\)".'common-lisp-face)
     ("\\<\\(until\\)".'common-lisp-face)
     ("\\<\\(repeat\\)".'common-lisp-face)

     ("\\<\\(sin\\)".'common-lisp-face)
     ("\\<\\(cos\\)".'common-lisp-face)
     ("\\<\\(sqrt\\)".'common-lisp-face)


     ("\\<\\(lerp\\)".'vmath-face)
     ("\\<\\(invlerp\\)".'vmath-face)
     ("\\<\\(clamp\\)".'vmath-face)
     ("\\<\\(extents\\)".'vmath-face)
     ("\\<\\(mad\\)".'vmath-face)
     ("\\<\\(grad\\)".'vmath-face)

     ("\\<\\(vadd\\)".'vmath-face)
     ("\\<\\(vsub\\)".'vmath-face)
     ("\\<\\(vdot\\)".'vmath-face)
     ("\\<\\(vmul\\)".'vmath-face)
     ("\\<\\(vsum\\)".'vmath-face)
     ("\\<\\(vsplat\\)".'vmath-face)
     ("\\<\\(vdiv\\)".'vmath-face)
     ("\\<\\(vsqr\\)".'vmath-face)
     ("\\<\\(vavr\\)".'vmath-face)
     ("\\<\\(vmin\\)".'vmath-face)
     ("\\<\\(vmax\\)".'vmath-face)
     ("\\<\\(vmad\\)".'vmath-face)
     ("\\<\\(vscale\\)".'vmath-face)
     ("\\<\\(vlerp\\)".'vmath-face)
     ("\\<\\(vnorm\\)".'vmath-face)
     ("\\<\\(mat-look-at\\)".'vmath-face)
     ("\\<\\(mat34\\)".'vmath-face)
     ("\\<\\(vec3\\)".'vmath-face)
     ("\\<\\(vcross\\)".'vmath-face)
     ("\\<\\(vrnd-cube\\)".'vmath-face)
     ("\\<\\(vrnd-axis\\)".'vmath-face)
     ("\\<\\(vadd\\)".'vmath-face)
     ("\\<\\(vpara\\)".'vmath-face)
     ("\\<\\(vperp\\)".'vmath-face)
     ("\\<\\(vpara-perp\\)".'vmath-face)
     ("\\<\\(vlen\\)".'vmath-face)
     ("\\<\\(vsetlen\\)".'vmath-face)
     ("\\<\\(vzero\\)".'vmath-face)
     ("\\<\\(vaxis-x\\)".'vmath-face)
     ("\\<\\(vaxis-y\\)".'vmath-face)
     ("\\<\\(vaxis-z\\)".'vmath-face)
     ("\\<\\(get-r\\)".'vmath-face)
     ("\\<\\(get-g\\)".'vmath-face)
     ("\\<\\(get-b\\)".'vmath-face)
     ("\\<\\(get-a\\)".'vmath-face)
     ("\\<\\(get-u\\)".'vmath-face)
     ("\\<\\(get-v\\)".'vmath-face)
     ("\\<\\(get-xy\\)".'vmath-face)
     ("\\<\\(get-xyz\\)".'vmath-face)
     ("\\<\\(get-xz\\)".'vmath-face)
     ("\\<\\(get-x\\)".'vmath-face)
     ("\\<\\(get-y\\)".'vmath-face)
     ("\\<\\(get-z\\)".'vmath-face)
     ("\\<\\(get-w\\)".'vmath-face)
     ("\\<\\(get-ax\\)".'vmath-face)
     ("\\<\\(get-ay\\)".'vmath-face)
     ("\\<\\(get-az\\)".'vmath-face)
     ("\\<\\(get-aw\\)".'vmath-face)
     ("\\<\\(vadd3\\)".'vmath-face)
     ("\\<\\(vadd4\\)".'vmath-face)
     ("\\<\\(frnd\\)".'vmath-face)
     ("\\<\\(frnds\\)".'vmath-face)
   )
 )
)

(message "load default wins.")

(add-hook 'lisp-mode-hook 'add-custom-keyw)
(delete-other-windows)
(dired default-directory)
(setq default-dirs '("/usr/include/GL" "~/gplsrc/rust" "~/rustfind" "~/android_rust_gl" "~/android-ndk-r9b" "~/cardemo" "~" "~/elisp"))
(mapcar (lambda(x) (if (file-exists-p x) (dired x))) default-dirs)



;-----------------------------------

(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b - emacs"))))


;-----------------------------------
; move minor mode


(message "setup minor mode..")
(defvar move-split-mode-map (make-sparse-keymap))
(define-key move-split-mode-map (kbd "<left>") (lambda()(interactive)(change-window-size 'left 'enlarge-window-horizontally 'shrink-window-horizontally)))

(define-key move-split-mode-map (kbd "<right>") (lambda()(interactive)(change-window-size 'left 'shrink-window-horizontally 'enlarge-window-horizontally )))

(define-key move-split-mode-map (kbd "<up>") (lambda()(interactive)(change-window-size 'up 'enlarge-window 'shrink-window)))

(define-key move-split-mode-map (kbd "<down>") (lambda()(interactive)(change-window-size 'up 'shrink-window 'enlarge-window )))

(define-key move-split-mode-map (kbd "<escape>") (lambda()(interactive)(move-split-mode -1)))
(define-key move-split-mode-map (kbd "<return>") (lambda()(interactive)(move-split-mode -1)))
(define-minor-mode
	move-split-mode 
	"move window splits" 
	nil
	"move split"
	move-split-mode-map
)
(message"setup move-split-mode 1")

(global-set-key (kbd "<f1> <f3>")
	(lambda()(interactive)(message "cursors-move split esc-cancel")(move-split-mode +1)))
(message"setup move-split-mode ok")

;(setq move-split-mode t)

;-----------------------------------
(defun create-file-buffer-with-content (filename content)
	(if (file-exists-p filename)
		(find-file filename)
	;else
		(let ((b (create-file-buffer filename)))
			(with-current-buffer b (insert content))
			b
		)))

(defun new-source-header(name)
	(interactive (list (read-string (concat "Create file in " default-directory))))
	(if (null(file-name-extension name))
		(message "no file extension")
		(message "file extension"))
	(if (null (file-name-extension name))

		(let ((b0
				(create-file-buffer-with-content (concat name ".h")
					(concat "#ifndef " name "_h\n"
					"#define " name "_h\n\n"
					"class\tname {\npublic:\n\t"name "();\n\t~" name "();\n}\n"
					"\n"
					"#endif")))
			(b1	(create-file-buffer-with-content 
					(concat name ".cpp") 
					(concat "#include \"" name  ".h\"\n\n"
						name "::" name "(){\n}\n"
						name "::~" name "(){\n}\n"
						))))
			(split-window-prop 0.3)
			(switch-to-buffer b0)
			(other-window 1)
			(switch-to-buffer b1)
		)
		(switch-to-buffer(create-file-buffer-with-content name "/*new file*/  "))
	)
)

;-------------------------------------------------------------
;
; wiindow layout
;
(if nil
(winsplit (selected-window) 0.60 t
	(lambda(w)(winsplit w 0.85 nil))
	(lambda(w)
		(set-code-def-window w)
		(winsplit w 0.33 nil
			nil
			(lambda(w)
				(set-code-def-window w)
				(winsplit w 0.5 nil
					nil
					(lambda(w)(set-code-def-window w)))))))
)

(buffer-menu)
(delete-other-windows)
