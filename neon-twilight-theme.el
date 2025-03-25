;;; neon-twilight-theme.el --- Neon-Twilight Color Theme -*- lexical-binding: t; -*-

;; Copyright 2021, Kaj Syrjänen

;; Author: Kaj Syrjänen <kaj.syrjanen@gmail.com>
;; Keywords: color theme Neon Twilight
;; Package-Version: 0.02
;; Version: 0.02

;; This file is not part of GNU Emacs.

;;; Commentary:
;; Neon-Twilight theme is a moody, futuristic and neon-esque theme,
;; primarily for org-mode and light coding. Some elements are inspired by
;; Cyberpunk theme.


(deftheme neon-twilight "Neon-Twilight theme") 

(let ((class '((class color) (min-colors 89)))

      (col-default      "#f8f8f8")    ; normal text
      (col-default-dark "#999999")    ; inactive normal text
      (col-cursor       "#dcdccc")    ; default cursor
      (col-cursor-sp    "#77bbff")    ; e.g. multiple cursor mode "ghost cursor"
      (col-escape-glyph "#ff88ff")    ; e.g. C-x 8 enter "ESCAPE"
      (col-highlight    "#3344ee")
      (col-link         "#96cbfe")
      (col-link-old     "#ffbb00")

      ;; shell/directory/file-related colors

      (col-shell        "#009900")
      (col-archive      "#ffff00")
      (col-directory    "#4c83ff")
      (col-file         "#f8f8f8")
      (col-executable   "#00ff00")
      (col-symlink      "#00ffff")
      (col-extension    "#aa44aa")
      
      (bg-color         "#0d0d44")
      (bg-color-dark    "#000000")
      (bg-color-light   "#102070")
      (bg-color-bright  "#1650a0")
      (bg-color-neutral "#333333")

      (col-modeline-text     "#008ed1")
      (col-minibuffer-prompt "#55aa55")
      (col-counter           "#55aa55")  ; counters such as line numbers, helm candidates etc.

      ;; Modifications to text
      (col-add    "#22ee66")
      (col-delete "#ff7070")

      
      ;; General hierarchy for headings, rainbow delimiters and other nested things, and also a quick way of distributing colors
      (col-lvl-1  "#ff3355")
      (col-lvl-2  "#ffdd00")
      (col-lvl-3  "#4c83ff")
      (col-lvl-4  "#00ff00")
      (col-lvl-5  "#ffa500")
      (col-lvl-6  "#ff79b4")
      (col-lvl-7  "#afd8af")
      (col-lvl-8  "#7b68ee")
      (col-lvl-9  "#00ffff")
      (col-lvl-10 "#ffffff")
      (col-lvl-11 "#94bff3")
      (col-lvl-12 "#993366")

      (col-success      "#22ee66")
      (col-warning      "#ffdd00")
      (col-fail         "#aa0000")
      
      (col-selection   "#7f073f")
      (col-selection-2 "#6117ff")
      
      ;; font-lock faces
      (col-builtin           "#1199ff")
      (col-comment           "#8B8989")
      (col-comment-delimiter "#6655ff")
      (col-constant          "#96cbfe")
      (col-doc               "#fbde2d")
      (col-function          "#ff69b4")
      (col-keyword           "#66ff55")
      (col-negation          "#ff8888")
      (col-preprocessor      "#888888")
      (col-string            "#81ee3c")
      (col-type              "#8fe6af")
      (col-variable          "#ff69b4")
      (col-warning           "#ff69b4")
      (col-reference         "#d3d3d3")
      (col-regexp-slash      "#e9c062")
      (col-regexp            "#aa00aa")
      (col-title             "#fbde2d")
      (col-docinfo           "#add8e6")
      (col-docinfo-keyword   "#55aa55")
      (col-agenda-date-today "#ff6400")
      (col-checkbox          "#8b8989")
      (col-date              "#aa33cc")
      (col-done              "#00ff00")
      (col-started           "#00aaff")
      (col-canceled          "#8888aa")
      (col-todo              "#ffa500")
      (col-block-headertext  "#008ed1")
      )
  
 (custom-theme-set-faces
  'neon-twilight
  `(link ((,class (:foreground ,col-link :underline t :weight bold))))
  `(link-visited ((,class (:foreground ,col-link-old :underline t :weight normal))))
  
  ;; basic
  `(default ((,class (:foreground ,col-default :background ,bg-color :height 150))))
  `(cursor ((,class (:background ,col-cursor))))
  `(escape-glyph ((,class (:foreground ,col-escape-glyph))))
  `(fringe ((,class (:foreground, col-default :background ,bg-color-neutral))))
  `(highlight ((,class (:background ,col-highlight))))
  `(region ((,class (:background ,col-selection :foreground ,col-default))))
  `(secondary-selection ((,class (:background ,col-selection-2 :foreground ,col-default))))
  `(vertical-border ((,class (:foreground ,bg-color-neutral :background ,bg-color-dark))))
  
  ;; multiple-cursors
  `(mc/cursor-face ((,class (:background ,col-cursor-sp :foreground ,bg-color))))
  
  ;; isearch
  `(isearch ((,class (:foreground ,bg-color :background ,col-cursor-sp))))
  `(isearch-fail ((,class (:background ,col-fail))))   
  `(lazy-highlight ((,class (:foreground ,col-default :background ,col-highlight))))
  `(query-replace ((,class (:background ,col-highlight))))

   ;; menu-bar-mode
   `(menu ((,class (:foreground ,col-default :background ,bg-color-dark))))
   
   ;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,col-minibuffer-prompt :background ,bg-color))))

   ;; mode-line
   `(mode-line ((,class (:foreground ,col-modeline-text :background ,bg-color-neutral :box (:line-width -1 :color ,bg-color-bright)))))
   `(mode-line-buffer-id ((,class (:foreground ,col-default :weight bold))))
   `(mode-line-inactive ((,class (:foreground ,col-highlight :background ,bg-color-dark :box (:line-width -1 :color ,col-modeline-text)))))

   ;; whitespace-mode
   `(whitespace-big-indent ((,class (:background ,bg-color :foreground ,col-lvl-1))))    
   `(whitespace-empty ((,class (:background ,bg-color :foreground ,col-lvl-2))))
   `(whitespace-hspace ((,class (:background ,bg-color :foreground ,col-lvl-3))))
   `(whitespace-line ((,class (:background ,bg-color :foreground ,col-lvl-4))))
   `(whitespace-space ((,class (:background ,bg-color :foreground ,col-lvl-5))))
   `(whitespace-space-after-tab ((,class (:background ,bg-color :foreground ,col-lvl-6))))
   `(whitespace-space-before-tab ((,class (:background ,bg-color :foreground ,col-lvl-7))))
   `(whitespace-tab ((,class (:background ,bg-color :foreground ,col-lvl-8))))
   `(whitespace-trailing ((,class (:background ,bg-color :foreground ,col-lvl-9))))
   
   ;; font-lock / languages
   `(font-lock-builtin-face ((,class (:foreground ,col-builtin))))
   `(font-lock-comment-face ((,class (:foreground ,col-comment :italic t))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,col-comment-delimiter)))) 
   `(font-lock-constant-face ((,class (:foreground ,col-constant))))
   `(font-lock-doc-face ((,class (:foreground ,col-doc))))
   `(font-lock-function-name-face ((,class (:foreground ,col-function))))
   `(font-lock-keyword-face ((,class (:foreground ,col-keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,col-negation))))
   `(font-lock-preprocessor-face ((,class (:foreground ,col-preprocessor))))
   `(font-lock-string-face ((,class (:foreground ,col-string))))
   `(font-lock-type-face ((,class (:foreground ,col-type))))
   `(font-lock-variable-name-face ((,class (:foreground ,col-variable))))
   `(font-lock-warning-face ((,class (:foreground ,col-warning))))
   `(font-lock-reference-face ((,class (:foreground ,col-reference))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,col-regexp-slash))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,col-regexp))))

   ;; company-mode
   `(company-tooltip ((,class (:background ,bg-color-light :foreground ,col-default))))
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,col-success))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection :foreground ,col-success))))
   `(company-tooltip-selection ((,class (:foreground ,col-default :background ,col-highlight))))
   `(company-tooltip-annotation ((,class (:inherit company-tooltip :foreground ,bg-color-dark))))
   `(company-scrollbar-fg ((,class (:background ,bg-color-dark))))
   `(company-scrollbar-bg ((,class (:background ,bg-color-neutral))))
   `(company-preview ((,class (:foreground ,col-default :background ,col-cursor-sp))))
   `(company-preview-common ((,class (:foreground ,col-default :background ,col-cursor-sp))))
   
   ;; eshell
   `(eshell-prompt ((,class (:foreground ,col-shell :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,col-archive :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,col-directory :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,col-executable :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,col-lvl-5))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,col-lvl-6 :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,col-symlink :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,col-fail :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,col-warning :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,col-warning :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,col-fail :weight bold :underline t))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,col-success
                           :background ,bg-color
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,col-warning
                           :background ,bg-color-bright
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,bg-color-bright :underline nil))))
   `(helm-selection-line ((,class (:background ,bg-color-bright))))
   `(helm-visible-mark ((,class (:foreground ,bg-color :background ,col-warning))))
   `(helm-candidate-number ((,class (:foreground ,col-counter :background ,bg-color-neutral))))
   `(helm-ff-directory ((,class (:foreground ,col-directory))))
   `(helm-ff-file ((,class (:foreground ,col-file ))))
   `(helm-ff-file-extension ((,class (:foreground ,col-extension ))))
   `(helm-ff-executable ((,class (:foreground ,col-executable ))))
   `(helm-ff-symlink ((,class (:foreground ,col-symlink ))))

   ;; hl-line-mode
   `(hl-line ((,class (:background ,bg-color-light :foreground ,col-default))))
   
   ;; org-mode
   `(org-document-title ((,class(:foreground ,col-title :background ,bg-color :weight bold :height 1.5))))
   `(org-document-info  ((,class (:foreground ,col-docinfo :background ,bg-color :weight bold))))
   `(org-document-info-keyword ((,class (:foreground ,col-docinfo-keyword :background ,bg-color))))
   `(org-agenda-date-today     ((,class (:foreground ,col-agenda-date-today :slant italic :weight bold))) t)
   `(org-agenda-structure      ((,class (:inherit font-lock-comment-face))))
   `(org-archived              ((,class (:slant italic))))
   `(org-checkbox              ((,class (:background ,col-checkbox :foreground ,bg-color-dark :box (:line-width 1 :style released-button)))))
   `(org-date                  ((,class (:foreground ,col-date))))
   `(org-done                  ((,class (:foreground ,col-done :bold t :weight bold :box (:line-width 1)))))
   `(org-todo                  ((,class (:foreground ,col-todo :bold t :weight bold :box (:line-width 1)))))
   `(org-level-1               ((,class (:foreground ,col-lvl-1 :height 1.4))))
   `(org-level-2               ((,class (:foreground ,col-lvl-2 :height 1.3))))
   `(org-level-3               ((,class (:foreground ,col-lvl-3 :height 1.2))))
   `(org-level-4               ((,class (:foreground ,col-lvl-4 :height 1.1))))
   `(org-level-5               ((,class (:foreground ,col-lvl-5))))
   `(org-level-6               ((,class (:foreground ,col-lvl-6))))
   `(org-level-7               ((,class (:foreground ,col-lvl-7))))
   `(org-level-8               ((,class (:foreground ,col-lvl-8))))
   `(org-code                  ((,class (:inherit fixed-pitch))))
   `(org-link                  ((,class (:foreground ,col-link :underline t))))
   `(org-tag                   ((,class (:bold t :weight bold))))
   `(org-column                ((,class (:background ,bg-color-light :foreground ,bg-color-dark))))
   `(org-column-title          ((,class (:background ,bg-color-light :underline t :weight bold))))
   `(org-block                 ((,class (:foreground ,col-default :background ,bg-color-dark :inherit fixed-pitch))))
   `(org-block-begin-line      ((,class (:foreground ,col-block-headertext :background ,bg-color-light))))
   `(org-block-background      ((,class (:background ,bg-color-dark))))
   `(org-block-end-line        ((,class (:foreground ,col-block-headertext :background ,bg-color-light))))
   `(org-table                 ((,class (:inherit fixed-pitch))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,col-lvl-1))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,col-lvl-2))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,col-lvl-3))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,col-lvl-4))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,col-lvl-5))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,col-lvl-6))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,col-lvl-7))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,col-lvl-8))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,col-lvl-9))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,col-lvl-10))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,col-lvl-11))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,col-lvl-12))))

    ;; rst-mode
   `(rst-level-1 ((,class (:foreground ,col-lvl-1))))
   `(rst-level-2 ((,class (:foreground ,col-lvl-2))))
   `(rst-level-3 ((,class (:foreground ,col-lvl-3))))
   `(rst-level-4 ((,class (:foreground ,col-lvl-4))))
   `(rst-level-5 ((,class (:foreground ,col-lvl-5))))
   `(rst-level-6 ((,class (:foreground ,col-lvl-6))))
   
   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,col-fail :background ,bg-color))))
   `(show-paren-match ((,class (:foreground ,bg-color :background ,col-success))))

   ;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,col-default :background ,bg-color))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,col-default-dark :background ,bg-color))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,col-link-old :background ,bg-color))))

   ;; yasnippet
   `(yas/field-highlight-face ((,class (:background ,col-selection :foreground ,bg-color-dark))))

   ;; display-line-numbers-mode
   `(line-number ((,class (:foreground ,col-counter :background ,bg-color))))
   )
 
  ;;; custom theme variables
 (custom-theme-set-variables
  'neon-twilight
  
  ;; fill-column-indicator
  `(fci-rule-color ,bg-color-neutral)
  `(org-todo-keyword-faces '(("STARTED" . ,col-started) ("CANCELED" . ,col-canceled))))

 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'neon-twilight)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; neon-twilight-theme.el ends here.
