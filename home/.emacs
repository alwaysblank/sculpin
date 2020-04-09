;; Set up package repositories
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; Set up use-package so we can define packages we always want installed.
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
      (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(use-package adoc-mode
	       :ensure t)

(use-package org-journal
  :ensure t)

(use-package htmlize
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages (quote (adoc-mode helm use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Add wc-mode
;; see: https://www.emacswiki.org/emacs/wcMode
(setq mode-line-position
      (append
       mode-line-position
       '((wc-mode
	  (6 (:eval (if (use-region-p)
			(format " %d,%d,%d"
				(abs (- (point) (mark)))
				(count-words-region (point) (mark))
				(abs (- (line-number-at-pos (point))
					(line-number-at-pos (mark)))))
		      (format " %d,%d,%d"
			      (- (point-max) (point-min))
			      (count-words-region (point-min) (point-max))
			      (line-number-at-pos (point-max))))))
	  nil))))
