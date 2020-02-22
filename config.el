;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Vincent Raerek"
      user-mail-address "vincent@monadnomad.dev")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.


;;;;
;; Elixir
;;

;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode. Will not source a `.formatter.exs`. See for details: https://github.com/elixir-editors/emacs-elixir#elixir-format
;;(add-hook 'elixir-mode-hook
;;          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

;;(defun my-web-mode-hook ()
;;  "Hooks for Web mode."
;;    (setq web-mode-markup-indent-offset 2)
;;    (setq web-mode-css-indent-offset 2)
;;    (setq web-mode-code-indent-offset 2)
;;    (setq web-mode-indent-style 2)
;;)
;;(add-hook 'web-mode-hook  'my-web-mode-hook)
;;
;;(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))

;;;;
;; Clojure
;;
;; (global-set-key (kbd "C-)") 'sp-forward-slurp-sexp)
;; (global-set-key (kbd "C-(") 'sp-forward-barf-sexp)
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

;;;;
;; Misc
;;

;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
  (next-line))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)
