(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-indent turn-on-haskell-indentation)))
 '(inhibit-startup-screen t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; For OCaml development
(add-to-list 'load-path "/usr/share/emacs/site-lisp/tuareg/")
(load-library "tuareg")
(load-library "camldebug")
(load-library "ocamlspot")

(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t) 

;; Haskell mode
(add-to-list 'load-path "~/emacs-config/haskell-mode/")
(load-file "~/emacs-config/haskell-mode/haskell-site-file.el")

;; Hamlet mode
(add-to-list 'load-path "~/emacs-config/hamlet-mode")
(load-file "~/emacs-config/hamlet-mode/hamlet-mode.el")

;; Clojure mode
(load "~/emacs-config/clojure-mode/clojure-mode.el")
(load "~/emacs-config/clojure-mode/clojurescript-mode.el")

;; Disable unnecessary bloat in the UI
(menu-bar-mode -1)
(tool-bar-mode -1)

;; nRepl
(load "~/emacs-config/nrepl.el/nrepl.el")
