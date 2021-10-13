(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(xresources))
 '(custom-safe-themes
   '("6f8e7e18a5aca079458dcc2a0df3c303607ae80b5f8aed90f0d67cb79c0d6578" "58ad5c1a8b5b07bca19b7e71f397ab29be87b35f3e9f0740853336b60b7fbac9" "48d566cfa8f946762e4ab8aa966c89795fb4b908c44c476699f9e5189c8055ce" "2427e3528209ade1ab49b27ebd13a84aaf22bafb71eefbb97f2ece141ecb9fc9" "46f5712a7d8ddead6f1658792347b5d64a4b0faca281b96fddf9c74c776ec188" "ac7c2a65f5b12e4b6d236c717fb09eaa4a1729942bc4b74cd6f9b4d7cb06640b" "b141504e9602ab550b51334976f407d93f4449e79ef20806aa4fe41424991081" "82d86ffa80ad094703085503d4e4e300411d496da48427067dbb29bb2c5f1556" "81eb029945b074b213b87db62c64ac3f52bb1371682aa809ac7feee727175ba8" "9ec1bf0597228f1f24285b51dd4aa32fb910f667f9acb1b06001a18c52b1e1c2" "a48aaaadb15f84d7f25794141de758ea323f590512605f2ff1a60eb912ca3e0c" "3cb3e015b290dada14d2eb30da3283505e0f36d30e0a22d13bda55bc979533ad" "f16e86db032154d5fc4688c38eb6bcc234f908e8d8c4b5ff3fa2ff09dfa46bc3" "eb772c90f38ae5cfd247fb7b21efe102462c3d51ad5609e5237c4e5ae644a0af" "c20bb2fe61e1483e93d210378450c0f13676d42f61c8a63ccea5f262f201a9f6" "cc596e4a697ee9cdbaf436f8c534ffbdc37b5f0a1bd25c273008ad4f27672bc4" "5c28441ebdd59d7abc6e1bad8041ba322a82130dbfc62b54ca5e0078a02a840a" "aa3c4705c8b8f7eeecbba433d41a3e93ada2671fa16d184ea8a48810c1c1f724" "54b55ec9c09bb1c90d0dac814f0038c70544a48a1e45a55e5808e6395291da08" "0128e5f06d500c67d1862716ab5723d75aaa8ec68f42c07592d3c0db91beb6c0" default))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; font size (in 1/10px):
;;(set-face-attribute 'default nil :height 110)

(setq c-basic-indent 8)
(setq tab-width 4)
;; (setq sh-basic-offset 2)
;; (setq sh-indentation 2)
(setq indent-tabs-mode t)

;; no tabs in shell mode
(defun turn-off-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'sh-mode-hook #'turn-off-indent-tabs-mode)

;; filename in window title:
(setq frame-title-format "%b")

;; show column #:
(setq column-number-mode t)

(set-mouse-color "gray66")

;; menu/scroll/tool remove
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; highlight trailing whitespace/tabs --v
(require 'whitespace)
(setq whitespace-style '(face empty trailing tabs))
(global-whitespace-mode t)
;; highlight trailing whitespace/tabs --^

;; no backup ( "*~" ) files
(setq make-backup-files nil)

(set-frame-font "DejaVu Sans Mono 11" nil t)

(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system
 (if (eq system-type 'windows-nt)
     'utf-16-le  ;; https://rufflewind.com/2014-07-20/pasting-unicode-in-emacs-on-windows
   'utf-8))
(prefer-coding-system 'utf-8)

(setq ring-bell-function 'ignore)

;; transpeancy --v
;; static:
(set-frame-parameter (selected-frame) 'alpha '(92 . 82))
(add-to-list 'default-frame-alist '(alpha . (92 . 82)))
;; nonstatic. use 'C-c t' to toggle:
(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(92 . 82) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)
;; transpeancy --^

(load-file "~/.emacs.d/window.el")
(load-theme 'pywal t)

(defun refresh-theme ()
    (interactive)
    (load-theme 'pywal t))

(global-set-key (kbd "C-c p"  ) 'refresh-theme)
(global-set-key (kbd "C-c u"  ) 'uncomment-region)
(global-set-key (kbd "C-x r v") 'revert-buffer)
