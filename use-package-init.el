;;; init.el --- GNU Emacs Configuration

;; Copyright (C) 2014 Terencio Agozzino

;; Author: Terencio Agozzino <terencio.agozzino@gmail.com>
;; Created: February 16, 2014
;; Homepage: https://github.com/rememberYou/.emacs.d
;; Keywords: abbrev, convenience, faces, maint, outlines, vc

;; This program is free software. You can redistribute it and/or modify it under
;; the terms of the Do What The Fuck You Want To Public License, version 2 as
;; published by Sam Hocevar.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE.
;;
;; You should have received a copy of the Do What The Fuck You Want To Public
;; License along with this program. If not, see http://www.wtfpl.net/.

;;; Commentary:

;; Following lines build the configuration code out of the config.el file.

;;; Code:

;; Make startup faster by reducing the frequency of garbage
;; collection.
(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)
(package-initialize)

(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))

;;; init.el ends here
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(package-selected-packages
 ;;  (quote
;;	(hungry-delete git-timemachine git-gutter magit git-commit counsel-projectile projectile smartparens rainbow-delimiters hydra async company-box company google-c-style doom-modeline nord-theme use-package-ensure-system-package delight))))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ztree yasnippet-snippets yapfify yaml-mode window-numbering whole-line-or-region vimrc-mode vdiff-magit use-package-ensure-system-package tree-mode toc-org symbol-overlay swift-mode smartparens smart-compile rmsbolt react-snippets rainbow-delimiters quickrun protobuf-mode powershell org-tree-slide org-rich-yank org-preview-html org-pomodoro org-fancy-priorities org-dashboard org-bullets ob-rust ob-ipython ob-go modern-cpp-font-lock magit-todos lua-mode lsp-ui live-py-mode ivy-yasnippet ivy-rich ivy-pass iedit ibuffer-projectile helm-smex helm-lsp grip-mode govet google-c-style golint go-tag go-rename go-playground go-impl go-gen-test go-fill-struct go-dlv git-timemachine git-gutter flymd flycheck fish-mode editorconfig dumb-jump doom-themes doom-modeline dockerfile-mode diffview diff-hl delight dashboard dap-mode csv-mode csharp-mode cquery counsel-projectile company-tabnine company-lsp company-ctags company-box cmake-font-lock ccls cask-mode bmx-mode auto-yasnippet all-the-icons-ivy all-the-icons-dired))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
