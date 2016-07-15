;;; DO NOT MODIFY THIS FILE
(if (featurep 'calc-autoloads) (error "Feature calc-autoloads already loaded"))

(package-provide 'calc :version 1.5 :author-version "2.2" :type 'regular)

;;;### (autoloads (math-read-if math-remove-dashes calc-match-user-syntax calc-check-user-syntax math-read-token math-find-user-tokens math-build-parse-table math-read-expr-list math-read-exprs math-read-preprocess-string calcDigit-edit calcDigit-algebraic calc-alg-digit-entry calc-do-alg-entry calc-alg-entry calc-algebraic-entry calc-auto-algebraic-entry calc-do-calc-eval calc-do-quick-calc) "calc-aent" "calc/calc-aent.el")

(autoload 'calc-do-quick-calc "calc-aent" "\


arguments: (&optional INSERT)
" nil nil)

(autoload 'calc-do-calc-eval "calc-aent" "\


arguments: (STR SEPARATOR ARGS)
" nil nil)

(autoload 'calc-auto-algebraic-entry "calc-aent" "\


arguments: (&optional PREFIX)
" t nil)

(autoload 'calc-algebraic-entry "calc-aent" "\


arguments: (&optional PREFIX AUTO)
" t nil)

(autoload 'calc-alg-entry "calc-aent" "\


arguments: (&optional INITIAL PROMPT)
" nil nil)

(autoload 'calc-do-alg-entry "calc-aent" "\


arguments: (&optional INITIAL PROMPT NO-NORMALIZE HISTORY)
" nil nil)

(autoload 'calc-alg-digit-entry "calc-aent" "\


arguments: ()
" nil nil)

(autoload 'calcDigit-algebraic "calc-aent" "\


arguments: ()
" t nil)

(autoload 'calcDigit-edit "calc-aent" "\


arguments: ()
" t nil)

(autoload 'math-read-preprocess-string "calc-aent" "\


arguments: (STR)
" nil nil)

(autoload 'math-read-exprs "calc-aent" "\


arguments: (MATH-EXP-STR)
" nil nil)

(autoload 'math-read-expr-list "calc-aent" "\


arguments: ()
" nil nil)

(autoload 'math-build-parse-table "calc-aent" "\


arguments: ()
" nil nil)

(autoload 'math-find-user-tokens "calc-aent" "\


arguments: (P)
" nil nil)

(autoload 'math-read-token "calc-aent" "\


arguments: ()
" nil nil)

(autoload 'calc-check-user-syntax "calc-aent" "\


arguments: (&optional X PREC)
" nil nil)

(autoload 'calc-match-user-syntax "calc-aent" "\


arguments: (P &optional TERM)
" nil nil)

(autoload 'math-remove-dashes "calc-aent" "\


arguments: (X)
" nil nil)

(autoload 'math-read-if "calc-aent" "\


arguments: (COND OP)
" nil nil)

;;;***

;;;### (autoloads (calc-do-embedded-activate) "calc-embed" "calc/calc-embed.el")

(autoload 'calc-do-embedded-activate "calc-embed" "\


arguments: (CALC-EMBED-ARG CBUF)
" nil nil)

;;;***

;;;### (autoloads (report-calc-bug math-read-radix-digit math-ipow math-pow math-mod math-do-working calcFunc-inv math-imod math-floor math-trunc math-reject-arg math-div2 math-evenp math-posp math-looks-negp math-negp math-zerop math-concat calc-temp-minibuffer-message calcDigit-letter calc-shift-Y-prefix-help calc-missing-key calc-num-prefix-name calc-transpose-lines calc-roll-up calc-roll-down calc-pop-above calc-over calc-percent calc-inv calc-mod calc-power calc-last-args-stub calc-record-list calc-do-refresh calc-roll-up-stack calc-roll-down-stack math-constp calc-record-why calc-do-handle-whys calc-help calc-info-summary calc-tutorial calc-info-goto-node calc-info another-calc calc-other-window calc-big-or-small calc-dispatch-help) "calc-misc" "calc/calc-misc.el")

(autoload 'calc-dispatch-help "calc-misc" "\
C-x* is a prefix key sequence; follow it with one of these letters:

For turning Calc on and off:
  C  calc.  Start the Calculator in a window at the bottom of the screen.
  O  calc-other-window.  Start the Calculator but don't select its window.
  B  calc-big-or-small.  Control whether to use the full Emacs screen for Calc.
  Q  quick-calc.  Use the Calculator in the minibuffer.
  K  calc-keypad.  Start the Calculator in keypad mode (X window system only).
  E  calc-embedded.  Use the Calculator on a formula in this editing buffer.
  J  calc-embedded-select.  Like E, but select appropriate half of => or :=.
  W  calc-embedded-word.  Like E, but activate a single word, i.e., a number.
  Z  calc-user-invocation.  Invoke Calc in the way you defined with `Z I' cmd.
  X  calc-quit.  Turn Calc off.

For moving data into and out of Calc:
  G  calc-grab-region.  Grab the region defined by mark and point into Calc.
  R  calc-grab-rectangle.  Grab the rectangle defined by mark, point into Calc.
  :  calc-grab-sum-down.  Grab a rectangle and sum the columns.
  _  calc-grab-sum-across.  Grab a rectangle and sum the rows.
  Y  calc-copy-to-buffer.  Copy a value from the stack into the editing buffer.

For use with Embedded mode:
  A  calc-embedded-activate.  Find and activate all :='s and =>'s in buffer.
  D  calc-embedded-duplicate.  Make a copy of this formula and select it.
  F  calc-embedded-new-formula.  Insert a new formula at current point.
  N  calc-embedded-next.  Advance cursor to next known formula in buffer.
  P  calc-embedded-previous.  Advance cursor to previous known formula.
  U  calc-embedded-update-formula.  Re-evaluate formula at point.
  \\=`  calc-embedded-edit.  Use calc-edit to edit formula at point.

Documentation:
  I  calc-info.  Read the Calculator manual in the Emacs Info system.
  T  calc-tutorial.  Run the Calculator Tutorial using the Emacs Info system.
  S  calc-summary.  Read the Summary from the Calculator manual in Info.

Miscellaneous:
  L  calc-load-everything.  Load all parts of the Calculator into memory.
  M  read-kbd-macro.  Read a region of keystroke names as a keyboard macro.
  0  (zero) calc-reset.  Reset Calc stack and modes to default state.

Press `*' twice (`C-x * *') to turn Calc on or off using the same
Calc user interface as before (either C-x * C or C-x * K; initially C-x * C).


arguments: (ARG)
" t nil)

(autoload 'calc-big-or-small "calc-misc" "\
Toggle Calc between full-screen and regular mode.

arguments: (ARG)
" t nil)

(autoload 'calc-other-window "calc-misc" "\
Invoke the Calculator in another window.

arguments: (&optional INTERACTIVE)
" t nil)

(autoload 'another-calc "calc-misc" "\
Create another, independent Calculator buffer.

arguments: ()
" t nil)

(autoload 'calc-info "calc-misc" "\
Run the Emacs Info system on the Calculator documentation.

arguments: ()
" t nil)

(autoload 'calc-info-goto-node "calc-misc" "\
Go to a node in the Calculator info documentation.

arguments: (NODE)
" t nil)

(autoload 'calc-tutorial "calc-misc" "\
Run the Emacs Info system on the Calculator Tutorial.

arguments: ()
" t nil)

(autoload 'calc-info-summary "calc-misc" "\
Run the Emacs Info system on the Calculator Summary.

arguments: ()
" t nil)

(autoload 'calc-help "calc-misc" "\


arguments: ()
" t nil)

(autoload 'calc-do-handle-whys "calc-misc" "\


arguments: ()
" nil nil)

(autoload 'calc-record-why "calc-misc" "\


arguments: (&rest STUFF)
" nil nil)

(autoload 'math-constp "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'calc-roll-down-stack "calc-misc" "\


arguments: (N &optional M)
" nil nil)

(autoload 'calc-roll-up-stack "calc-misc" "\


arguments: (N &optional M)
" nil nil)

(autoload 'calc-do-refresh "calc-misc" "\


arguments: ()
" nil nil)

(autoload 'calc-record-list "calc-misc" "\


arguments: (VALS &optional PREFIX)
" nil nil)

(autoload 'calc-last-args-stub "calc-misc" "\


arguments: (ARG)
" t nil)

(autoload 'calc-power "calc-misc" "\


arguments: (ARG)
" t nil)

(autoload 'calc-mod "calc-misc" "\


arguments: (ARG)
" t nil)

(autoload 'calc-inv "calc-misc" "\


arguments: (ARG)
" t nil)

(autoload 'calc-percent "calc-misc" "\


arguments: ()
" t nil)

(autoload 'calc-over "calc-misc" "\


arguments: (N)
" t nil)

(autoload 'calc-pop-above "calc-misc" "\


arguments: (N)
" t nil)

(autoload 'calc-roll-down "calc-misc" "\


arguments: (N)
" t nil)

(autoload 'calc-roll-up "calc-misc" "\


arguments: (N)
" t nil)

(autoload 'calc-transpose-lines "calc-misc" "\
Transpose previous line and current line.
With argument ARG, move previous line past ARG lines.
With argument 0, switch line point is in with line mark is in.

arguments: (&optional ARG)
" t nil)

(autoload 'calc-num-prefix-name "calc-misc" "\


arguments: (N)
" nil nil)

(autoload 'calc-missing-key "calc-misc" "\
This is a placeholder for a command which needs to be loaded from calc-ext.
When this key is used, calc-ext (the Calculator extensions module) will be
loaded and the keystroke automatically re-typed.

arguments: (N)
" t nil)

(autoload 'calc-shift-Y-prefix-help "calc-misc" "\


arguments: ()
" t nil)

(autoload 'calcDigit-letter "calc-misc" "\


arguments: ()
" t nil)

(autoload 'calc-temp-minibuffer-message "calc-misc" "\


arguments: (M)
" nil nil)

(autoload 'math-concat "calc-misc" "\


arguments: (V1 V2)
" nil nil)

(autoload 'math-zerop "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'math-negp "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'math-looks-negp "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'math-posp "calc-misc" "\


arguments: (A)
" nil nil)

(defalias 'math-fixnump 'integerp)

(defalias 'math-fixnatnump 'natnump)

(autoload 'math-evenp "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'math-div2 "calc-misc" "\


arguments: (A)
" nil nil)

(autoload 'math-reject-arg "calc-misc" "\


arguments: (&optional A P OPTION)
" nil nil)

(autoload 'math-trunc "calc-misc" "\


arguments: (A &optional MATH-TRUNC-PREC)
" nil nil)

(defalias 'calcFunc-trunc 'math-trunc)

(autoload 'math-floor "calc-misc" "\


arguments: (A &optional MATH-FLOOR-PREC)
" nil nil)

(defalias 'calcFunc-floor 'math-floor)

(autoload 'math-imod "calc-misc" "\


arguments: (A B)
" nil nil)

(autoload 'calcFunc-inv "calc-misc" "\


arguments: (M)
" nil nil)

(autoload 'math-do-working "calc-misc" "\


arguments: (MSG ARG)
" nil nil)

(autoload 'math-mod "calc-misc" "\


arguments: (A B)
" nil nil)

(autoload 'math-pow "calc-misc" "\


arguments: (A B)
" nil nil)

(autoload 'math-ipow "calc-misc" "\


arguments: (A N)
" nil nil)

(autoload 'math-read-radix-digit "calc-misc" "\


arguments: (DIG)
" nil nil)

(autoload 'report-calc-bug "calc-misc" "\
Report a bug in Calc, the GNU Emacs calculator.
Prompts for bug subject.  Leaves you in a mail buffer.

arguments: ()
" t nil)

(defalias 'calc-report-bug 'report-calc-bug)

;;;***

;;;### (autoloads (calc-undo) "calc-undo" "calc/calc-undo.el")

(autoload 'calc-undo "calc-undo" "\


arguments: (N)
" t nil)

;;;***

;;;### (autoloads (calc-yank) "calc-yank" "calc/calc-yank.el")

(autoload 'calc-yank "calc-yank" "\
Yank a value into the Calculator buffer.

Valid numeric prefixes for RADIX: 0, 2, 6, 8
No radix notation is prepended for any other numeric prefix.

If RADIX is 2, prepend \"2#\"  - Binary.
If RADIX is 8, prepend \"8#\"  - Octal.
If RADIX is 0, prepend \"10#\" - Decimal.
If RADIX is 6, prepend \"16#\" - Hexadecimal.

If RADIX is a non-nil list (created using \\[universal-argument]), the user
will be prompted to enter the radix in the minibuffer.

If RADIX is nil or if the yanked string already has a calc radix prefix, the
yanked string will be passed on directly to the Calculator buffer without any
alteration.

arguments: (RADIX)
" t nil)

;;;***

;;;### (autoloads (defmath calc-embedded-activate calc-embedded calc-grab-rectangle calc-grab-region full-calc-keypad calc-keypad calc-eval quick-calc full-calc calc calc-dispatch) "calc" "calc/calc.el")
 (global-set-key "\e#" 'calc-dispatch)

(autoload 'calc-dispatch "calc" "\
Invoke the GNU Emacs Calculator.  See \\[calc-dispatch-help] for details.

arguments: (&optional _ARG)
" t nil)

(autoload 'calc "calc" "\
The Emacs Calculator.  Full documentation is listed under \"calc-mode\".

arguments: (&optional ARG FULL-DISPLAY INTERACTIVE)
" t nil)

(autoload 'full-calc "calc" "\
Invoke the Calculator and give it a full-sized window.

arguments: (&optional INTERACTIVE)
" t nil)

(autoload 'quick-calc "calc" "\
Do a quick calculation in the minibuffer without invoking full Calculator.
With prefix argument INSERT, insert the result in the current
buffer.  Otherwise, the result is copied into the kill ring.

arguments: (&optional INSERT)
" t nil)

(autoload 'calc-eval "calc" "\
Do a quick calculation and return the result as a string.
Return value will either be the formatted result in string form,
or a list containing a character position and an error message in string form.

arguments: (STR &optional SEPARATOR &rest ARGS)
" nil nil)

(autoload 'calc-keypad "calc" "\
Invoke the Calculator in \"visual keypad\" mode.
This is most useful in the X window system.
In this mode, click on the Calc \"buttons\" using the left mouse button.
Or, position the cursor manually and do M-x calc-keypad-press.

arguments: (&optional INTERACTIVE)
" t nil)

(autoload 'full-calc-keypad "calc" "\
Invoke the Calculator in full-screen \"visual keypad\" mode.
See calc-keypad for details.

arguments: (&optional INTERACTIVE)
" t nil)

(autoload 'calc-grab-region "calc" "\
Parse the region as a vector of numbers and push it on the Calculator stack.

arguments: (TOP BOT ARG)
" t nil)

(autoload 'calc-grab-rectangle "calc" "\
Parse a rectangle as a matrix of numbers and push it on the Calculator stack.

arguments: (TOP BOT ARG)
" t nil)

(autoload 'calc-embedded "calc" "\
Start Calc Embedded mode on the formula surrounding point.

arguments: (ARG &optional END OBEG OEND)
" t nil)

(autoload 'calc-embedded-activate "calc" "\
Scan the current editing buffer for all embedded := and => formulas.
Also looks for the equivalent TeX words, \\gets and \\evalto.

arguments: (&optional ARG CBUF)
" t nil)

(autoload 'defmath "calc" "\
Define Calc function.

Like `defun' except that code in the body of the definition can
make use of the full range of Calc data types and the usual
arithmetic operations are converted to their Calc equivalents.

The prefix `calcFunc-' is added to the specified name to get the
actual Lisp function name.

See Info node `(calc)Defining Functions'.

arguments: (FUNC ARGS &rest BODY)
" nil 'macro)

;;;***

(provide 'calc-autoloads)
