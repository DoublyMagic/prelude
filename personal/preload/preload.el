;; Configure theme
(setq custom-theme-directory "~/.emacs.d/personal/themes/"
      prelude-theme 'base16-dark)

;; Detect OS
(defvar is-windows-p (eq system-type 'windows-nt))
(defvar is-osx-p (eq system-type 'darwin))
(defvar is-linux-p (eq system-type 'gnu/linux))

(defvar default-font-name "Consolas-10:bold")
(add-to-list 'default-frame-alist `(font .,default-font-name))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq visible-bell t)

(set-default 'sentence-end-double-space nil) ;; Don't require double spaces after periods anywhere.

(if is-windows-p
    (add-hook 'window-setup-hook 'toggle-frame-fullscreen))
