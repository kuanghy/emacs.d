;; Emacs Config File
;; By huoty 2021.07.04
;; Version 0.0.1

;; 删除顶部 Bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; 显示行号


;; 编码设置
(set-locale-environment "UTF-8")
(set-language-environment 'UTF-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'chinese-gbk)
(prefer-coding-system 'utf-8)
