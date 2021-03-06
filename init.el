;; Emacs Config File
;; By Huoty 2021.07.04
;; Version 0.0.2

;; 个人信息
(setq user-full-name "Huoty Kong")
(setq user-mail-address "sudohuoty@163.com")

;; 删除顶部 Bar
(menu-bar-mode -1)
;(tool-bar-mode -1)

;; 隐藏启动显示画面
(setq inhibit-startup-screen t)

;; 用空格代替 Tab 来进行缩进
(setq-default indent-tabs-mode nil)

;; 显示行号
;(global-linum-mode t)
;(setq linum-format "%4d ")

;; 在行首 C-k 时，同时删除末尾换行符
(setq kill-whole-line t)

;; 记住上次文件打开的位置
(require 'saveplace)
(save-place-mode 1)
(setq-default save-place t)

;; 不生成备份文件
(setq-default make-backup-files nil)

;; 编码设置
(set-locale-environment "UTF-8")
(set-language-environment 'UTF-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'chinese-gbk)
(prefer-coding-system 'utf-8)

;; 保存时删除行尾空格及文件尾空行
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 包管理
(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(setq my-package-list ;启动时自动安装的插件
      '(
        markdown-mode
        ))
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install package)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
