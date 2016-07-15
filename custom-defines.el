;;; DO NOT MODIFY THIS FILE
(if (featurep 'calc-custom-defines) (error "Feature calc-custom-defines already loaded"))

;;;### (autoloads (calc-gregorian-switch calc-note-threshold calc-lu-power-reference calc-lu-field-reference calc-highlight-selections-with-faces calc-undo-length calc-context-sensitive-enter calc-ensure-consistent-units calc-multiplication-has-precedence calc-gnuplot-print-command calc-gnuplot-plot-command calc-gnuplot-name calc-embedded-open-close-mode-alist calc-embedded-close-mode calc-embedded-open-mode calc-embedded-open-close-new-formula-alist calc-embedded-close-new-formula calc-embedded-open-new-formula calc-embedded-open-close-plain-alist calc-embedded-close-plain calc-embedded-open-plain calc-embedded-word-regexp-alist calc-embedded-word-regexp calc-embedded-open-close-formula-alist calc-embedded-close-formula calc-embedded-open-formula calc-embedded-announce-formula-alist calc-embedded-announce-formula calc-language-alist calc-settings-file calc) "calc" "calc/calc.el")
(defconst custom-define-current-source-file "calc.el")

(defgroup calc nil "Advanced desk calculator and mathematical tool." :prefix "calc-" :tag "Calc" :group 'applications)

(defcustom calc-settings-file (expand-file-name ".calc.el" (getenv "HOME")) "\
File in which to record permanent settings." :group 'calc :type '(file))

(defcustom calc-language-alist '((latex-mode . latex) (tex-mode . tex) (plain-tex-mode . tex) (context-mode . tex) (nroff-mode . eqn) (pascal-mode . pascal) (c-mode . c) (c++-mode . c) (fortran-mode . fortran) (f90-mode . fortran) (texinfo-mode . calc-normal-language)) "\
Alist of major modes with appropriate Calc languages." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (symbol :tag "Calc language")))

(defcustom calc-embedded-announce-formula "%Embed\n\\(% .*\n\\)*" "\
A regular expression which is sure to be followed by a calc-embedded formula." :group 'calc :type '(regexp))

(defcustom calc-embedded-announce-formula-alist '((c++-mode . "//Embed\n\\(// .*\n\\)*") (c-mode . "/\\*Embed\\*/\n\\(/\\* .*\\*/\n\\)*") (f90-mode . "!Embed\n\\(! .*\n\\)*") (fortran-mode . "C Embed\n\\(C .*\n\\)*") (html-helper-mode . "<!-- Embed -->\n\\(<!-- .* -->\n\\)*") (html-mode . "<!-- Embed -->\n\\(<!-- .* -->\n\\)*") (nroff-mode . "\\\\\"Embed\n\\(\\\\\" .*\n\\)*") (pascal-mode . "{Embed}\n\\({.*}\n\\)*") (sgml-mode . "<!-- Embed -->\n\\(<!-- .* -->\n\\)*") (xml-mode . "<!-- Embed -->\n\\(<!-- .* -->\n\\)*") (texinfo-mode . "@c Embed\n\\(@c .*\n\\)*")) "\
Alist of major modes with appropriate values for `calc-embedded-announce-formula'." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (regexp :tag "Regexp to announce formula")))

(defcustom calc-embedded-open-formula "\\`\\|^\n\\|\\$\\$?\\|\\\\\\[\\|^\\\\begin[^{].*\n\\|^\\\\begin{.*[^x]}.*\n\\|^@.*\n\\|^\\.EQ.*\n\\|\\\\(\\|^%\n\\|^\\.\\\\\"\n" "\
A regular expression for the opening delimiter of a formula used by calc-embedded." :group 'calc :type '(regexp))

(defcustom calc-embedded-close-formula "\\'\\|\n$\\|\\$\\$?\\|\\\\]\\|^\\\\end[^{].*\n\\|^\\\\end{.*[^x]}.*\n\\|^@.*\n\\|^\\.EN.*\n\\|\\\\)\\|\n%\n\\|^\\.\\\\\"\n" "\
A regular expression for the closing delimiter of a formula used by calc-embedded." :group 'calc :type '(regexp))

(defcustom calc-embedded-open-close-formula-alist nil "\
Alist of major modes with pairs of formula delimiters used by calc-embedded." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (list (regexp :tag "Opening formula delimiter") (regexp :tag "Closing formula delimiter"))))

(defcustom calc-embedded-word-regexp "[-+]?[0-9]+\\(\\.[0-9]+\\)?\\([eE][-+]?[0-9]+\\)?" "\
A regular expression determining a word for calc-embedded-word." :group 'calc :type '(regexp))

(defcustom calc-embedded-word-regexp-alist nil "\
Alist of major modes with word regexps used by calc-embedded-word." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (regexp :tag "Regexp for word")))

(defcustom calc-embedded-open-plain "%%% " "\
A string which is the opening delimiter for a \"plain\" formula.
If calc-show-plain mode is enabled, this is inserted at the front of
each formula." :group 'calc :type '(string))

(defcustom calc-embedded-close-plain " %%%\n" "\
A string which is the closing delimiter for a \"plain\" formula.
See calc-embedded-open-plain." :group 'calc :type '(string))

(defcustom calc-embedded-open-close-plain-alist '((c++-mode "// %% " " %%\n") (c-mode "/* %% " " %% */\n") (f90-mode "! %% " " %%\n") (fortran-mode "C %% " " %%\n") (html-helper-mode "<!-- %% " " %% -->\n") (html-mode "<!-- %% " " %% -->\n") (nroff-mode "\\\" %% " " %%\n") (pascal-mode "{%% " " %%}\n") (sgml-mode "<!-- %% " " %% -->\n") (xml-mode "<!-- %% " " %% -->\n") (texinfo-mode "@c %% " " %%\n")) "\
Alist of major modes with pairs of delimiters for \"plain\" formulas." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (list (string :tag "Opening \"plain\" delimiter") (string :tag "Closing \"plain\" delimiter"))))

(defcustom calc-embedded-open-new-formula "\n\n" "\
A string which is inserted at front of formula by calc-embedded-new-formula." :group 'calc :type '(string))

(defcustom calc-embedded-close-new-formula "\n\n" "\
A string which is inserted at end of formula by calc-embedded-new-formula." :group 'calc :type '(string))

(defcustom calc-embedded-open-close-new-formula-alist nil "\
Alist of major modes with pairs of new formula delimiters used by calc-embedded." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (list (string :tag "Opening new formula delimiter") (string :tag "Closing new formula delimiter"))))

(defcustom calc-embedded-open-mode "% " "\
A string which should precede calc-embedded mode annotations.
This is not required to be present for user-written mode annotations." :group 'calc :type '(string))

(defcustom calc-embedded-close-mode "\n" "\
A string which should follow calc-embedded mode annotations.
This is not required to be present for user-written mode annotations." :group 'calc :type '(string))

(defcustom calc-embedded-open-close-mode-alist '((c++-mode "// " "\n") (c-mode "/* " " */\n") (f90-mode "! " "\n") (fortran-mode "C " "\n") (html-helper-mode "<!-- " " -->\n") (html-mode "<!-- " " -->\n") (nroff-mode "\\\" " "\n") (pascal-mode "{ " " }\n") (sgml-mode "<!-- " " -->\n") (xml-mode "<!-- " " -->\n") (texinfo-mode "@c " "\n")) "\
Alist of major modes with pairs of strings to delimit annotations." :group 'calc :type '(alist :key-type (symbol :tag "Major mode") :value-type (list (string :tag "Opening annotation delimiter") (string :tag "Closing annotation delimiter"))))

(defcustom calc-gnuplot-name (if (eq system-type 'windows-nt) "pgnuplot" "gnuplot") "\
Name of GNUPLOT program, for calc-graph features." :group 'calc :type '(string))

(defcustom calc-gnuplot-plot-command nil "\
Name of command for displaying GNUPLOT output; %s = file name to print." :group 'calc :type '(choice (string) (sexp)))

(defcustom calc-gnuplot-print-command "lp %s" "\
Name of command for printing GNUPLOT output; %s = file name to print." :group 'calc :type '(choice (string) (sexp)))

(defcustom calc-multiplication-has-precedence t "\
If non-nil, multiplication has precedence over division
in normal mode." :group 'calc :type 'boolean)

(defcustom calc-ensure-consistent-units nil "\
If non-nil, make sure new units are consistent with current units
when converting units." :group 'calc :type 'boolean)

(defcustom calc-context-sensitive-enter nil "\
If non-nil, the stack element under the cursor will be copied by `calc-enter'
and deleted by `calc-pop'." :group 'calc :type 'boolean)

(defcustom calc-undo-length 100 "\
The number of undo steps that will be preserved when Calc is quit." :group 'calc :type 'integer)

(defcustom calc-highlight-selections-with-faces nil "\
If non-nil, use a separate face to indicate selected sub-formulas.
If option `calc-show-selections' is non-nil, then selected sub-formulas are
shown by displaying the rest of the formula in `calc-nonselected-face'.
If option `calc-show-selections' is nil, then selected sub-formulas are shown
by displaying the sub-formula in `calc-selected-face'." :group 'calc :type 'boolean)

(defcustom calc-lu-field-reference "20 uPa" "\
The default reference level for logarithmic units (field)." :group 'calc :type '(string))

(defcustom calc-lu-power-reference "mW" "\
The default reference level for logarithmic units (power)." :group 'calc :type '(string))

(defcustom calc-note-threshold "1" "\
The number of cents that a frequency should be near a note
to be identified as that note." :type 'string :group 'calc)

(defcustom calc-gregorian-switch nil "\
The first day the Gregorian calendar is used by Calc's date forms.
This is nil (the default) if the Gregorian calendar is the only one used.
Otherwise, it should be a list `(YEAR MONTH DAY)' when Calc begins to use
the Gregorian calendar; Calc will use the Julian calendar for earlier dates.
The dates in which different regions of the world began to use the
Gregorian calendar vary quite a bit, even within a single country.
If you want Calc's date forms to switch between the Julian and
Gregorian calendar, you can specify the date or choose from several
common choices.  Some of these choices should be taken with a grain
of salt; for example different parts of France changed calendars at
different times, and Sweden's change to the Gregorian calendar was
complicated.  Also, the boundaries of the countries were different at
the times of the calendar changes than they are now.
The Vatican decided that the Gregorian calendar should take effect
on 15 October 1582 (Gregorian), and many Catholic countries made
the change then.  Great Britain and its colonies had the Gregorian
calendar take effect on 14 September 1752 (Gregorian); this includes
the United States." :group 'calc :type '(choice (const :tag "Always use the Gregorian calendar" nil) (const :tag "1582-10-15 - Italy, Poland, Portugal, Spain" (1582 10 15 577736)) (const :tag "1582-12-20 - France" (1582 12 20 577802)) (const :tag "1582-12-25 - Luxemburg" (1582 12 25 577807)) (const :tag "1584-01-17 - Bohemia and Moravia" (1584 1 17 578195)) (const :tag "1587-11-01 - Hungary" (1587 11 1 579579)) (const :tag "1700-03-01 - Denmark" (1700 3 1 620607)) (const :tag "1701-01-12 - Protestant Switzerland" (1701 1 12 620924)) (const :tag "1752-09-14 - Great Britain and dominions" (1752 9 14 639797)) (const :tag "1753-03-01 - Sweden" (1753 3 1 639965)) (const :tag "1918-02-14 - Russia" (1918 2 14 700214)) (const :tag "1919-04-14 - Romania" (1919 4 14 700638)) (list :tag "(YEAR MONTH DAY)" (integer :tag "Year") (integer :tag "Month (integer)") (integer :tag "Day"))) :set (lambda (symbol value) (set-default symbol value) (setq math-format-date-cache nil) (calc-refresh)))

;;;***

(provide 'calc-custom-defines)
