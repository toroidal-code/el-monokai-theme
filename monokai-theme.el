;;; monokai-theme.el --- REQUIRES EMACS 24: Monokai Color Theme for Emacs.

;; Copyright (C) 2012 Lorenzo Villani.
;;
;; Author: Lorenzo Villani <lorenzo@villani.me>
;; URL: https://github.com/lvillani/el-monokai-theme
;; Version: 0.0.12
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, version 3 of the License.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.

(unless (>= 24 emacs-major-version)
  (error "monokai-theme requires Emacs 24 or later."))

(deftheme monokai
  "Monokai color theme")

(let ((monokai-blue-light "#66D9EF") ; #89BDFF
      (monokai-gray "#595959")
      (monokai-gray-darker "#383830")
      (monokai-gray-darkest "#141411")
      (monokai-gray-lightest "#595959")
      (monokai-gray-light "#E6E6E6")
      (monokai-green "#A6E22A")
      (monokai-green-light "#A6E22E")
      (monokai-grey-dark "#272822")
      (monokai-magenta "#F92672")
      (monokai-purple "#AE81FF")
      (monokai-purple-light "#FD5FF1")
      (monokai-yellow "#E6DB74")
      (monokai-yellow-dark "#75715E")
      (monokai-yellow-light "#F8F8F2")
      (monokai-orange "#FD971F"))
  (custom-theme-set-faces
   'monokai
   ;; Frame
   `(default ((t (:foreground ,monokai-yellow-light :background ,monokai-grey-dark))))
   `(cursor ((t (:background ,monokai-yellow-light :foreground ,monokai-magenta :inverse-video t))))
   `(mouse ((t (:background ,monokai-yellow-light :foreground ,monokai-magenta :inverse-video t))))
   `(hl-line ((t (:background ,monokai-gray-darkest))))
   `(highlight ((t (:background ,monokai-gray-darkest))))
   `(minibuffer-prompt ((t (:foreground ,monokai-blue-light))))  ; was yellow-dark
   `(modeline ((t (:background ,monokai-gray-lightest :foreground ,monokai-gray-light))))
   `(region ((t (:background ,monokai-gray-darker))))
   `(fringe ((t (:background ,monokai-grey-dark))))
   `(show-paren-match-face ((t (:background ,monokai-gray-lightest))))
   `(scroll-bar ((t (:foreground ,monokai-gray-light :background ,monokai-grey-dark))))
   `(popup-scroll-bar-background-face ((t (:background ,monokai-grey-dark))))
   `(popup-scroll-bar-foreground-face ((t (:foreground ,monokai-gray-light))))
   `(link ((t (:foreground ,monokai-blue-light :underline t))))
   `(link-visited ((t (:foreground ,monokai-blue-light :underline t :slant italic))))
   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,monokai-purple)))) ; was green
   `(font-lock-comment-face ((t (:foreground ,monokai-yellow-dark))))
   `(font-lock-constant-face ((t (:foreground ,monokai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,monokai-green))))
   `(font-lock-keyword-face ((t (:foreground ,monokai-magenta))))
   `(font-lock-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-type-face ((t (:foreground ,monokai-blue-light :slant italic))))
   `(font-lock-variable-name-face ((t (:foreground ,monokai-orange)))) ; was green
   `(font-lock-warning-face ((t (:bold t :foreground ,monokai-purple-light))))
   ;; CUA
   `(cua-rectangle ((t (:background ,monokai-gray-darkest))))
   ;; IDO
   `(ido-first-match ((t (:foreground ,monokai-purple))))
   `(ido-only-match ((t (:foreground ,monokai-green))))
   `(ido-subdir ((t (:foreground ,monokai-blue-light))))
   ;; ECB
   `(ecb-default-highlight-face ((t (:foreground ,monokai-green))))
   ;; tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,monokai-magenta))))
   `(tuareg-font-lock-operator-face ((t (:foreground ,monokai-gray-light))))
   ;; helm
   `(helm-source-header ((t (:foreground ,monokai-purple :background ,monokai-gray-darkest :height 1.2))))
   `(helm-visible-mark ((t (nil))))
   `(helm-header ((t (nil))))
   `(helm-candidate-number ((t (:underline t :foreground ,monokai-purple :background nil))))
   `(helm-selection ((t (:foreground ,monokai-green :background ,monokai-gray-darker))))
   `(helm-separator ((t (:background ,monokai-gray-darkest))))
   `(helm-action ((t (nil))))
   ;; helm find file
   `(helm-ff-prefix ((t (nil))))
   `(helm-ff-executable ((t (:foreground ,monokai-magenta))))
   `(helm-ff-directory ((t (:foreground ,monokai-blue-light :background nil))))
   `(helm-ff-symlink ((t (:foreground ,monokai-purple-light))))
   `(helm-ff-invalid-symlink ((t (:foreground nil :background ,monokai-yellow))))
   `(helm-ff-file ((t (:inherit default))))
   ;; Whitespace
   `(whitespace-space ((t (:foreground ,monokai-gray))))
   `(trailing-whitespace ((t (:foreground ,monokai-purple-light))))
   ;; Yasnippet
   `(yas/field-highlight-face ((t (:background ,monokai-gray-darker))))
   ;; zencoding uses this
   `(tooltip ((t (:background ,monokai-yellow-light :foreground ,monokai-yellow-dark))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-theme-set-faces '(default ((t (:background 'nil)))))))

(provide-theme 'monokai)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monokai-theme.el ends here
