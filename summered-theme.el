;;; summered-emacs.el --- Summered for Emacs.

;; Copyright (C) 2012 Arthur Leonard Andersen

;; Author: Arthur Leonard Andersen <leoc.git@gmail.com>
;; URL: http://github.com/leoc/summered-emacs
;; Version: 0.1.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A nice summer feeling color theme for Emacs heavily inspired by Sunburst.
;;
;;; Installation:
;;
;;   Just drop the -emacs.el somewhere that the Emacs
;; `load-theme` command can find it.
;;
;; Don't forget that the theme requires Emacs 24.
;;
;;; Credits:
;;
;;   Soryu created the Sunburst Colortheme for TextMate which
;; summered is based on.
;;
;;; Code:

;; TODO: Build everything on the base colors and the color package
(require 'color)
(require 'noflet)

(deftheme summered "The Summered color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Summered palette
      (summered-fg             "#d0d0d0")
      (summered-bg             "#111111")
      (summered-red            "#b33319")
      (summered-bright-red     "#cf6a4c")
      (summered-orange         "#dd7b3b")
      (summered-bright-orange  "#fe924b")
      (summered-yellow         "#e9c062")
      (summered-bright-yellow  "#ece193")
      (summered-green          "#65b042")
      (summered-bright-green   "#99cf50")
      (summered-cyan           "#A5D9F3")
      (summered-bright-cyan    "#93e0e3")
      (summered-blue           "#3387cc")
      (summered-bright-blue    "#94bff3")
      (summered-violet         "#9b859d")
      (summered-bright-violet  "#ec93d3"))
  (noflet ((darken (color percent) (color-darken-name color percent))
           (lighten (color percent) (color-lighten-name color percent))
           (saturate (color percent) (color-saturate-name color percent))
           (desaturate (color percent) (color-desaturate-name color percent))
           (complement (color) (color-complement color)))
    (custom-theme-set-faces
     'summered
     '(button ((t (:underline t))))

     `(link ((,class (:foreground ,summered-yellow
                      :underline t
                      :weight bold))))
     `(link-visited ((,class (:foreground ,(darken summered-yellow 10)
                              :underline t
                              :weight normal))))

   ;;; basic coloring
     `(default ((,class (:foreground ,summered-fg
                         :background ,summered-bg))))
     `(cursor ((,class (:foreground ,summered-fg))))
     `(escape-glyph-face ((,class (:foreground ,summered-red))))
     `(fringe ((,class (:foreground ,(darken summered-fg 55)
                        :background ,(lighten summered-bg 3)))))
     `(header-line ((,class (:foreground ,(lighten summered-fg 10)
                             :background ,(darken summered-bg 10)
                             :box (:line-width -1 :style released-button)))))

     `(highlight-current-line-face ((,class (:background ,(lighten summered-bg 5)))))
     `(highlight ((,class (:background ,(lighten summered-bg 5)))))
     `(highline-face ((,class (:background ,(darken summered-yellow 50)))))

     ;;; compilation
     `(compilation-column-face ((,class (:foreground ,summered-yellow))))
     `(compilation-enter-directory-face ((,class (:foreground ,summered-green))))
     `(compilation-error-face ((,class (:foreground ,(darken summered-red 10)
                                        :weight bold
                                        :underline t))))
     `(compilation-face ((,class (:foreground ,summered-fg))))
     `(compilation-info-face ((,class (:foreground ,summered-blue))))
     `(compilation-info ((,class (:foreground ,(lighten summered-green 10)
                                  :underline t))))
     `(compilation-leave-directory-face ((,class (:foreground ,summered-green))))
     `(compilation-line-face ((,class (:foreground ,summered-yellow))))
     `(compilation-line-number ((,class (:foreground ,summered-yellow))))
     `(compilation-message-face ((,class (:foreground ,summered-blue))))
     `(compilation-warning-face ((,class (:foreground ,(darken summered-yellow 10)
                                          :weight bold
                                          :underline t))))

     ;; grep
     `(grep-context-face ((,class (:foreground ,summered-fg))))
     `(grep-error-face ((,class (:foreground ,(darken summered-red 10)
                                 :weight bold
                                 :underline t))))
     `(grep-hit-face ((,class (:foreground ,summered-blue))))
     `(grep-match-face ((,class (:foreground ,summered-orange
                                 :weight bold))))
     `(match ((,class (:background ,(darken summered-bg 10)
                       :foreground ,summered-orange
                       :weight bold))))

     ;; faces used by isearch
     `(isearch ((,class (:foreground ,summered-yellow
                         :background ,(darken summered-bg 10)))))
     `(isearch-fail ((,class (:foreground ,summered-fg
                              :background ,(darken summered-red 30)))))
     `(lazy-highlight ((,class (:foreground ,summered-yellow
                                :background ,(lighten summered-bg 30)))))

     `(menu ((,class (:foreground ,summered-fg :background ,summered-bg))))
     `(minibuffer-prompt ((,class (:foreground ,summered-yellow))))
     `(mode-line
       ((,class (:foreground ,(lighten summered-fg 10)
                 :background ,(lighten summered-bg 10)
                 :box (:line-width -1 :style released-button)))))
     `(mode-line-buffer-id ((,class (:foreground ,(lighten summered-yellow 20)
                                     :weight bold))))
     `(mode-line-inactive
       ((,class (:foreground ,(darken summered-fg 30)
                 :background ,summered-bg
                 :box (:line-width -1 :style released-button)))))
     `(region ((,class (:foreground ,summered-fg :background ,(darken summered-yellow 40)))))
     `(secondary-selection ((,class (:background ,(lighten summered-bg 20)))))
     `(trailing-whitespace ((,class (:background ,summered-red))))
     `(vertical-border ((,class (:foreground ,summered-fg))))

     ;; font lock
     `(font-lock-builtin-face ((,class (:foreground ,summered-orange))))
     `(font-lock-comment-face ((,class (:foreground ,(darken summered-fg 45)))))
     `(font-lock-comment-delimiter-face ((,class (:foreground ,(darken summered-fg 35)))))
     `(font-lock-constant-face ((,class (:foreground ,summered-bright-green
                                         :weight bold))))
     `(font-lock-doc-face ((,class (:foreground ,(lighten summered-violet 20)))))
     `(font-lock-doc-string-face ((,class (:foreground ,summered-violet))))
     `(font-lock-function-name-face ((,class (:foreground ,summered-yellow
                                              :weight bold))))
     `(font-lock-keyword-face ((,class (:foreground ,summered-bright-red
                                        :weight bold))))
     `(font-lock-reference-face ((,class (:foreground ,(darken summered-cyan 10)))))
     `(font-lock-negation-char-face ((,class (:foreground ,(lighten summered-fg 15) :weight bold))))
     `(font-lock-preprocessor-face ((,class (:foreground ,(darken summered-fg 10)))))
     `(font-lock-string-face ((,class (:foreground ,summered-green))))
     `(font-lock-type-face ((,class (:foreground ,summered-yellow
                                     :weight bold))))
     `(font-lock-variable-name-face ((,class (:foreground ,summered-blue))))
     `(font-lock-warning-face ((,class (:foreground ,(lighten summered-fg 10)
                                        :background ,(darken summered-red 30)
                                        :weight bold
                                        :underline t))))

     `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

     ;; external

     ;; full-ack
     `(ack-separator ((,class (:foreground ,summered-fg))))
     `(ack-file ((,class (:foreground ,summered-blue))))
     `(ack-line ((,class (:foreground ,summered-yellow))))
     `(ack-match ((,class (:foreground ,summered-orange
                           :background ,(darken summered-bg 10)
                           :weigth bold))))

     ;; auto-complete
     ;; `(ac-candidate-face ((,class (:background ,(lighten summered-bg 30)
     ;;                               :foreground "black"))))
     ;; `(ac-selection-face ((,class (:background ,(darken summered-blue 30)
     ;;                               :foreground ,summered-fg))))
     ;; `(popup-tip-face ((,class (:background ,(darken summered-yellow 20)
     ;;                            :foreground "black"))))
     ;; `(popup-scroll-bar-foreground-face ((,class (:background ,(darken summered-blue 30)))))
     ;; `(popup-scroll-bar-background-face ((,class (:background ,(darken summered-bg 10)))))
     ;; `(popup-isearch-match ((,class (:background ,summered-bg
     ;;                                 :foreground ,summered-fg))))

     ;; diff
     `(diff-added ((,class (:foreground ,(lighten summered-green 40) ))))
     `(diff-changed ((,class (:foreground ,summered-yellow))))
     `(diff-removed ((,class (:foreground ,(lighten summered-red 40) ))))
     `(diff-header ((,class (:background ,(lighten summered-bg 10)))))
     `(diff-file-header
       ((,class (:background ,(lighten summered-bg 20)
                 :foreground ,summered-fg
                 :bold t))))

     ;; eshell
     `(eshell-prompt ((,class (:foreground ,summered-yellow
                               :weight bold))))
     `(eshell-ls-archive ((,class (:foreground ,(darken summered-red 10)
                                   :weight bold))))
     `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory ((,class (:foreground ,(lighten summered-blue 10)
                                     :weight bold))))
     `(eshell-ls-executable ((,class (:foreground ,(lighten summered-red 10)
                                      :weight bold))))
     `(eshell-ls-unreadable ((,class (:foreground ,summered-fg))))
     `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special ((,class (:foreground ,summered-yellow
                                   :weight bold))))
     `(eshell-ls-symlink ((,class (:foreground ,summered-cyan
                                   :weight bold))))

     ;; flymake
     `(flymake-errline ((,class (:foreground ,(lighten summered-red 30)
                                 :weight bold
                                 :underline t))))
     `(flymake-warnline ((,class (:foreground ,(lighten summered-yellow 20)
                                  :weight bold
                                  :underline t))))

     ;; flyspell
     `(flyspell-duplicate ((,class (:foreground ,(lighten summered-yellow 20)
                                                :weight bold
                                                :underline t))))
     `(flyspell-incorrect ((,class (:foreground ,(lighten summered-red 30)
                                                :weight bold
                                                :underline t))))

     ;; erc
     `(erc-action-face ((,class (:inherit erc-default-face))))
     `(erc-bold-face ((,class (:weight bold))))
     `(erc-current-nick-face ((,class (:foreground ,summered-blue :weight bold))))
     `(erc-dangerous-host-face ((,class (:inherit font-lock-warning-face))))
     `(erc-default-face ((,class (:foreground ,summered-fg))))
     `(erc-direct-msg-face ((,class (:inherit erc-default-face))))
     `(erc-error-face ((,class (:inherit font-lock-warning-face))))
     `(erc-fool-face ((,class (:inherit erc-default-face))))
     `(erc-input-face ((,class (:foreground ,summered-yellow))))
     `(erc-keyword-face ((,class (:foreground ,summered-blue :weight bold))))
     `(erc-nick-default-face ((,class (:foreground ,summered-yellow
                                                   :weight bold))))
     `(erc-my-nick-face ((,class (:foreground ,summered-orange
                                              :weigth bold))))
     `(erc-nick-msg-face ((,class (:inherit erc-default-face))))
     `(erc-notice-face ((,class (:foreground ,summered-green))))
     `(erc-pal-face ((,class (:foreground ,summered-orange
                              :weight bold))))
     `(erc-prompt-face ((,class (:foreground ,summered-red
                                 :background ,summered-bg
                                 :weight bold))))
     `(erc-timestamp-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(erc-underline-face ((t (:underline t))))

     ;; gnus
     `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty-face))))
     `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty-face))))
     `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty-face))))
     `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty-face))))
     `(gnus-group-mail-3-face ((,class (:bold t :inherit gnus-group-mail-3-empty-face))))
     `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty-face))))
     `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty-face))))
     `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty-face))))
     `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty-face))))
     `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty-face))))
     `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty-face))))
     `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty-face))))
     `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty-face))))
     `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty-face))))
     `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty-face))))
     `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty-face))))
     `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty-face))))
     `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty-face))))
     `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty-face))))
     `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty-face))))
     `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty-face))))
     `(gnus-header-content-face ((,class (:inherit message-header-other-face))))
     `(gnus-header-from-face ((,class (:inherit message-header-from-face))))
     `(gnus-header-name-face ((,class (:inherit message-header-name-face))))
     `(gnus-header-newsgroups-face ((,class (:inherit message-header-other-face))))
     `(gnus-header-subject-face ((,class (:inherit message-header-subject-face))))
     `(gnus-summary-cancelled-face ((,class (:foreground ,summered-orange))))
     `(gnus-summary-high-ancient-face ((,class (:foreground ,summered-blue))))
     `(gnus-summary-high-read-face ((,class (:foreground ,summered-green :weight bold))))
     `(gnus-summary-high-ticked-face ((,class (:foreground ,summered-orange :weight bold))))
     `(gnus-summary-high-unread-face ((,class (:foreground ,summered-fg :weight bold))))
     `(gnus-summary-low-ancient-face ((,class (:foreground ,summered-blue))))
     `(gnus-summary-low-read-face ((t (:foreground ,summered-green))))
     `(gnus-summary-low-ticked-face ((,class (:foreground ,summered-orange :weight bold))))
     `(gnus-summary-low-unread-face ((,class (:foreground ,summered-fg))))
     `(gnus-summary-normal-ancient-face ((,class (:foreground ,summered-blue))))
     `(gnus-summary-normal-read-face ((,class (:foreground ,summered-green))))
     `(gnus-summary-normal-ticked-face ((,class (:foreground ,summered-orange :weight bold))))
     `(gnus-summary-normal-unread-face ((,class (:foreground ,summered-fg))))
     `(gnus-summary-selected-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(gnus-cite-1-face ((,class (:foreground ,summered-blue))))
     `(gnus-cite-10-face ((,class (:foreground ,(darken summered-yellow 10)))))
     `(gnus-cite-11-face ((,class (:foreground ,summered-yellow))))
     `(gnus-cite-2-face ((,class (:foreground ,(darken summered-blue 10)))))
     `(gnus-cite-3-face ((,class (:foreground ,(darken summered-blue 20)))))
     `(gnus-cite-4-face ((,class (:foreground ,(lighten summered-green 20)))))
     `(gnus-cite-5-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(gnus-cite-6-face ((,class (:foreground ,summered-green))))
     `(gnus-cite-7-face ((,class (:foreground ,summered-red))))
     `(gnus-cite-8-face ((,class (:foreground ,(darken summered-red 10)))))
     `(gnus-cite-9-face ((,class (:foreground ,(darken summered-red 20)))))
     `(gnus-group-news-1-empty-face ((,class (:foreground ,summered-yellow))))
     `(gnus-group-news-2-empty-face ((,class (:foreground ,(lighten summered-green 30)))))
     `(gnus-group-news-3-empty-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(gnus-group-news-4-empty-face ((,class (:foreground ,(darken summered-blue 20)))))
     `(gnus-group-news-5-empty-face ((,class (:foreground ,(darken summered-blue 30)))))
     `(gnus-group-news-6-empty-face ((,class (:foreground ,(lighten summered-bg 20)))))
     `(gnus-group-news-low-empty-face ((,class (:foreground ,(lighten summered-bg 20)))))
     `(gnus-signature-face ((,class (:foreground ,summered-yellow))))
     `(gnus-x-face ((,class (:background ,summered-fg :foreground ,summered-bg))))

     ;; helm
     `(helm-selection ((,class (:background ,(darken summered-bg 10)))))

     ;; ido-mode
     `(ido-first-match ((,class (:foreground ,(lighten summered-fg 10) :weight bold))))
     `(ido-only-match ((,class (:foreground ,(lighten summered-green 10)))))
     `(ido-subdir ((,class (:foreground ,summered-cyan))))

     ;; js2-mode
     `(js2-warning-face ((,class (:underline ,(lighten summered-yellow 20)))))
     `(js2-error-face ((,class (:foreground ,summered-red :weight bold))))
     `(js2-jsdoc-tag-face ((,class (:foreground ,(darken summered-green 10)))))
     `(js2-jsdoc-type-face ((,class (:foreground ,(lighten summered-green 20)))))
     `(js2-jsdoc-value-face ((,class (:foreground ,(lighten summered-green 30)))))
     `(js2-function-param-face ((,class (:foreground, summered-yellow))))
     `(js2-external-variable-face ((,class (:foreground ,summered-orange))))

     ;; jabber-mode
     `(jabber-roster-user-away ((,class (:foreground ,(lighten summered-green 20)))))
     `(jabber-roster-user-online ((,class (:foreground ,(darken summered-blue 10)))))
     `(jabber-roster-user-dnd ((,class (:foreground ,(lighten summered-red 10)))))
     `(jabber-rare-time-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(jabber-chat-prompt-local ((,class (:foreground ,(darken summered-blue 10)))))
     `(jabber-chat-prompt-foreign ((,class (:foreground ,(lighten summered-red 10)))))
     `(jabber-activity-face((,class (:foreground ,(lighten summered-red 10)))))
     `(jabber-activity-personal-face ((,class (:foreground ,(lighten summered-blue 10)))))
     `(jabber-title-small ((,class (:height 1.1 :weight bold))))
     `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
     `(jabber-title-large ((,class (:height 1.3 :weight bold))))

     ;; linum-mode
     `(linum ((,class (:foreground ,(lighten summered-green 20) :background ,summered-bg))))

     ;; magit
     `(magit-section-title ((,class (:foreground ,summered-yellow :weight bold))))
     `(magit-branch ((,class (:foreground ,summered-orange :weight bold))))

     ;; message-mode
     `(message-cited-text-face ((,class (:inherit font-lock-comment-face))))
     `(message-header-name-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(message-header-other-face ((,class (:foreground ,summered-green))))
     `(message-header-to-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(message-header-from-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(message-header-cc-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(message-header-newsgroups-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(message-header-subject-face ((,class (:foreground ,summered-orange :weight bold))))
     `(message-header-xheader-face ((,class (:foreground ,summered-green))))
     `(message-mml-face ((,class (:foreground ,summered-yellow :weight bold))))
     `(message-separator-face ((,class (:inherit font-lock-comment-face))))

     ;; mew
     `(mew-face-header-subject ((,class (:foreground ,summered-orange))))
     `(mew-face-header-from ((,class (:foreground ,summered-yellow))))
     `(mew-face-header-date ((,class (:foreground ,summered-green))))
     `(mew-face-header-to ((,class (:foreground ,summered-red))))
     `(mew-face-header-key ((,class (:foreground ,summered-green))))
     `(mew-face-header-private ((,class (:foreground ,summered-green))))
     `(mew-face-header-important ((,class (:foreground ,summered-blue))))
     `(mew-face-header-marginal ((,class (:foreground ,summered-fg :weight bold))))
     `(mew-face-header-warning ((,class (:foreground ,summered-red))))
     `(mew-face-header-xmew ((,class (:foreground ,summered-green))))
     `(mew-face-header-xmew-bad ((,class (:foreground ,summered-red))))
     `(mew-face-body-url ((,class (:foreground ,summered-orange))))
     `(mew-face-body-comment ((,class (:foreground ,summered-fg :slant italic))))
     `(mew-face-body-cite1 ((,class (:foreground ,summered-green))))
     `(mew-face-body-cite2 ((,class (:foreground ,summered-blue))))
     `(mew-face-body-cite3 ((,class (:foreground ,summered-orange))))
     `(mew-face-body-cite4 ((,class (:foreground ,summered-yellow))))
     `(mew-face-body-cite5 ((,class (:foreground ,summered-red))))
     `(mew-face-mark-review ((,class (:foreground ,summered-blue))))
     `(mew-face-mark-escape ((,class (:foreground ,summered-green))))
     `(mew-face-mark-delete ((,class (:foreground ,summered-red))))
     `(mew-face-mark-unlink ((,class (:foreground ,summered-yellow))))
     `(mew-face-mark-refile ((,class (:foreground ,summered-green))))
     `(mew-face-mark-unread ((,class (:foreground ,(darken summered-red 20)))))
     `(mew-face-eof-message ((,class (:foreground ,summered-green))))
     `(mew-face-eof-part ((,class (:foreground ,summered-yellow))))

     ;; nav
     `(nav-face-heading ((,class (:foreground ,summered-yellow))))
     `(nav-face-button-num ((,class (:foreground ,summered-cyan))))
     `(nav-face-dir ((,class (:foreground ,summered-green))))
     `(nav-face-hdir ((,class (:foreground ,summered-red))))
     `(nav-face-file ((,class (:foreground ,summered-fg))))
     `(nav-face-hfile ((,class (:foreground ,(darken summered-red 30)))))

     ;; org-mode
     `(org-agenda-date-today ((,class (:foreground "white" :slant italic :weight bold))) t)
     `(org-agenda-structure ((,class (:inherit font-lock-comment-face))))
     `(org-agenda-restriction-lock ((,class (:background ,(lighten summered-bg 10)))))
     `(org-archived ((,class (:foreground ,(lighten summered-bg 30)
                              :weight bold))))
     `(org-checkbox ((,class (:background ,(lighten summered-bg 20)
                              :foreground "white"
                              :box (:line-width 1 :style released-button)))))
     `(org-date ((,class (:foreground ,(darken summered-cyan 20) :underline t))))
     `(org-deadline-announce ((,class (:foreground ,(darken summered-red 10)))))
     `(org-formula ((,class (:foreground ,(darken summered-yellow 20)))))
     `(org-headline-done ((,class (:foreground ,(lighten summered-green 30)))))
     `(org-hide ((,class (:foreground ,summered-bg))))
     `(org-level-1 ((,class (:foreground ,summered-yellow :weight bold))))
     `(org-level-2 ((,class (:foreground ,(saturate (lighten summered-orange 15) 10)))))
     `(org-level-3 ((,class (:foreground ,(saturate (lighten summered-orange 10) 10)))))
     `(org-level-4 ((,class (:foreground ,summered-orange))))
     `(org-level-5 ((,class (:foreground ,(desaturate (lighten summered-orange 0) 20)))))
     `(org-level-6 ((,class (:foreground ,(desaturate (lighten summered-orange 5) 30)))))
     `(org-level-7 ((,class (:foreground ,(desaturate (lighten summered-orange 10) 40)))))
     `(org-level-8 ((,class (:foreground ,(desaturate (lighten summered-orange 15) 65)))))
     `(org-link ((,class (:foreground ,(darken summered-yellow 20)
                          :underline t))))
     `(org-scheduled ((,class (:foreground ,(lighten summered-green 40)))))
     `(org-scheduled-previously ((,class (:foreground ,(darken summered-red 30)))))
     `(org-scheduled-today ((,class (:foreground ,(lighten summered-blue 10)))))
     `(org-special-keyword ((,class (:foreground ,(darken summered-fg 30)))))
     `(org-table ((,class (:foreground ,(darken summered-fg 20)))))
     `(org-tag ((,class (:bold t :weight bold))))
     `(org-time-grid ((,class (:foreground ,summered-orange))))
     `(org-todo ((,class (:bold t
                          :foreground ,(lighten summered-red 40)
                          :weight bold))))
     `(org-done ((,class (:bold t
                          :foreground ,(lighten summered-green 30)
                          :weight bold))))
     `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
     `(org-warning ((,class (:bold t :foreground ,summered-red :weight bold))))

     ;; outline
     `(outline-8 ((,class (:inherit default))))
     `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
     `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
     `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
     `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
     `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
     `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
     `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

     ;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class (:foreground ,summered-cyan))))
     `(rainbow-delimiters-depth-2-face ((,class (:foreground ,summered-yellow))))
     `(rainbow-delimiters-depth-3-face ((,class (:foreground ,(lighten summered-blue 10)))))
     `(rainbow-delimiters-depth-4-face ((,class (:foreground ,(lighten summered-red 10)))))
     `(rainbow-delimiters-depth-5-face ((,class (:foreground ,summered-orange))))
     `(rainbow-delimiters-depth-6-face ((,class (:foreground ,(darken summered-blue 10)))))
     `(rainbow-delimiters-depth-7-face ((,class (:foreground ,(lighten summered-green 40)))))
     `(rainbow-delimiters-depth-8-face ((,class (:foreground ,(darken summered-red 30)))))
     `(rainbow-delimiters-depth-9-face ((,class (:foreground ,(darken summered-yellow 20)))))
     `(rainbow-delimiters-depth-10-face ((,class (:foreground ,(lighten summered-green 20)))))
     `(rainbow-delimiters-depth-11-face ((,class (:foreground ,(lighten summered-blue 10)))))
     `(rainbow-delimiters-depth-12-face ((,class (:foreground ,(darken summered-red 30)))))

     ;; rpm-mode
     `(rpm-spec-dir-face ((,class (:foreground ,summered-green))))
     `(rpm-spec-doc-face ((,class (:foreground ,summered-green))))
     `(rpm-spec-ghost-face ((,class (:foreground ,summered-red))))
     `(rpm-spec-macro-face ((,class (:foreground ,summered-yellow))))
     `(rpm-spec-obsolete-tag-face ((,class (:foreground ,summered-red))))
     `(rpm-spec-package-face ((,class (:foreground ,summered-red))))
     `(rpm-spec-section-face ((,class (:foreground ,summered-yellow))))
     `(rpm-spec-tag-face ((,class (:foreground ,summered-blue))))
     `(rpm-spec-var-face ((,class (:foreground ,summered-red))))

     ;; rst-mode
     `(rst-level-1-face ((,class (:foreground ,summered-orange))))
     `(rst-level-2-face ((,class (:foreground ,(lighten summered-green 10)))))
     `(rst-level-3-face ((,class (:foreground ,(darken summered-blue 10)))))
     `(rst-level-4-face ((,class (:foreground ,(darken summered-yellow 20)))))
     `(rst-level-5-face ((,class (:foreground ,summered-cyan))))
     `(rst-level-6-face ((,class (:foreground ,(darken summered-green 10)))))

     ;; show-paren
     `(show-paren-mismatch ((,class (:foreground ,(darken summered-red 30) :background ,summered-bg :weight bold))))
     `(show-paren-match ((,class (:foreground ,(darken summered-blue 10) :background ,summered-bg :weight bold))))

     ;; SLIME
     `(slime-repl-inputed-output-face ((,class (:foreground ,summered-red))))

     ;; ledger-mode
     `(ledger-font-comment-face ((,class (:inherit font-lock-comment-face))))
     `(ledger-font-occur-narrowed-face ((,class (:inherit font-lock-comment-face :invisible t))))
     `(ledger-font-occur-xact-face ((,class (:inherit highlight))))
     `(ledger-font-payee-cleared-face ((,class (:foreground ,summered-green))))
     `(ledger-font-payee-uncleared-face ((,class (:foreground ,summered-red))))
     `(ledger-font-posting-account-cleared-face ((,class (:foreground ,summered-blue))))
     `(ledger-font-posting-account-face ((,class (:foreground ,summered-violet))))
     `(ledger-font-posting-account-pending-face ((,class (:foreground ,summered-yellow))))
     `(ledger-font-xact-highlight-face ((,class (:inherit highlight))))
     `(ledger-occur-narrowed-face ((,class (:inherit font-lock-comment-face :invisible t))))
     `(ledger-occur-xact-face ((,class (:inherit highlight))))

     ;; mu4e
     `(mu4e-header-highlight-face ((,class (:underline nil :inherit region))))
     `(mu4e-header-marks-face ((,class (:underline nil :foreground ,summered-yellow))))
     `(mu4e-flagged-face ((,class (:foreground ,summered-orange :inherit nil))))
     `(mu4e-forwarded-face ((t (:inherit font-lock-builtin-face :foreground ,(lighten summered-blue 20) :weight normal))))
     `(mu4e-replied-face ((,class (:foreground ,summered-blue :inherit nil))))
     `(mu4e-trashed-face ((t (:inherit font-lock-comment-face :foreground ,(lighten summered-bg 20) :strike-through nil))))
     `(mu4e-unread-face ((,class (:foreground ,summered-green :inherit nil))))
     `(mu4e-cited-1-face ((,class (:inherit outline-1 :slant normal))))
     `(mu4e-cited-2-face ((,class (:inherit outline-2 :slant normal))))
     `(mu4e-cited-3-face ((,class (:inherit outline-3 :slant normal))))
     `(mu4e-cited-4-face ((,class (:inherit outline-4 :slant normal))))
     `(mu4e-cited-5-face ((,class (:inherit outline-5 :slant normal))))
     `(mu4e-cited-6-face ((,class (:inherit outline-6 :slant normal))))
     `(mu4e-cited-7-face ((,class (:inherit outline-7 :slant normal))))
     `(mu4e-ok-face ((,class (:foreground ,summered-green))))
     `(mu4e-view-contact-face ((,class (:inherit nil :foreground ,summered-yellow))))
     `(mu4e-view-link-face ((,class (:inherit link :foreground ,summered-blue))))
     `(mu4e-view-url-number-face ((,class (:inherit nil :foreground ,summered-cyan))))
     `(mu4e-view-attach-number-face ((,class (:inherit nil :foreground ,summered-orange))))
     `(mu4e-highlight-face ((,class (:inherit highlight))))
     `(mu4e-title-face ((,class (:inherit nil :foreground ,summered-green))))

     ;; whitespace-mode
     `(whitespace-space ((,class (:background ,summered-bg :foreground ,(lighten summered-bg 10)))))
     `(whitespace-hspace ((,class (:background ,summered-bg :foreground ,(lighten summered-bg 10)))))
     `(whitespace-tab ((,class (:background ,summered-bg :foreground ,summered-red))))
     `(whitespace-newline ((,class (:foreground ,(lighten summered-bg 10)))))
     `(whitespace-trailing ((,class (:foreground ,summered-red :background ,summered-bg))))
     `(whitespace-line ((,class (:background ,(darken summered-bg 5) :foreground ,summered-violet))))
     `(whitespace-space-before-tab ((,class (:background ,summered-orange :foreground ,summered-orange))))
     `(whitespace-indentation ((,class (:background ,summered-yellow :foreground ,summered-red))))
     `(whitespace-empty ((,class (:background ,summered-yellow :foreground ,summered-red))))
     `(whitespace-space-after-tab ((,class (:background ,summered-yellow :foreground ,summered-red))))

     ;; company-mode
     `(company-tooltip ((t (:inherit default :background ,(lighten summered-bg 20)))))
     `(company-scrollbar-bg ((t (:background ,(lighten summered-bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(lighten summered-bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))

     `(which-func ((,class (:foreground ,(lighten summered-green 10))))))
  ;;; custom theme variables
    (custom-theme-set-variables
     'summered
     `(ansi-color-names-vector [,summered-bg
                                ,summered-red
                                ,summered-green
                                ,summered-yellow
                                ,summered-blue
                                ,summered-violet
                                ,summered-cyan
                                ,summered-fg])
     ;; fill-column-indicator
     `(fci-rule-color ,(lighten summered-bg 30)))))

;;;autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'summered)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; -theme.el ends here
