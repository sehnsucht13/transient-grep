(require 'transient)

(define-infix-argument grep--transient-context-num:-A ()
  :description "# of lines of trailing context"
  :class 'transient-option
  :shortarg "-A"
  :argument "--after-context="
  )

(define-infix-argument grep--transient-context-num:-B ()
  :description "# of lines of leading context"
  :class 'transient-option
  :shortarg "-B"
  :argument "--before-context="
  )

(define-infix-argument grep--transient-context-num:-C ()
  :description "# of lines of output context"
  :class 'transient-option
  :shortarg "-C"
  :argument "--context="
  )

(define-transient-command grep-transient--menu ()
  "A transient menu for the build in grep command."
  :man-page "grep"
  [["Matcher Pattern"
    ("-E" "Extended Regexps" ("-E" "--extended-regexp"))
    ("-F" "Fixed Strings" ("-F" "--fixed-strings"))
    ("-G" "Basic Regexps" ("-G" "--basic-regexp"))
    ("-P" "Perl-compatible Regexps" ("-P" "--perl-regexp"))
    ]
   ["Output Control"
    ("-c" "# of matches" ("-c" "--count"))
    ("-L" "Print files with no matches" ("-L" "--files-without-match"))
    ("-l" "Print files containing matches" ("-l" "--files-with-matches"))
    ("-o" "Print only matching parts of a line" ("-o" "--only-matching"))
    ("-q" "Run grep quietly" ("-q" "--quiet"))
    ("-s" "Suppress error messages" ("-s" "--no-messages"))
    ]
   ]
  [
   ["Matching Patterns"
    ("-e" "Patterns" ("-e" "--regexp="))
    ("-f" "File" ("-f" "--file"))
    ("-i" "Ignore case" ("-i" "--ignore-case"))
    ("-v" "Invert match" ("-v" "--invert-match"))
    ("-w" "Only whole words" ("-w" "--word-regexp"))
    ("-x" "Only whole lines" ("-x" "--line-regexp"))
    ]
   ["Other"

    ]
   ])

(transient-grep--menu)
