mark@curry ~/acl2progs $ acl2
GCL (GNU Common Lisp)  2.6.12 ANSI    Fri Apr 22 15:51:11 UTC 2016
Source License: LGPL(gcl,gmp), GPL(unexec,bfd,xgcl)
Binary License:  GPL due to GPL'ed components: (XGCL READLINE UNEXEC)
Modifications of this banner must retain notice of a compatible license
Dedicated to the memory of W. Schelter

Use (help) to get some basic information on how to use GCL.
Temporary directory for compiler files set to /tmp/
; Hons-Note: grew SBITS to 9534187; 0.10 seconds, [unknown] bytes.

 ACL2 Version 8.2 built March 23, 2020  06:59:44.
 Copyright (C) 2019, Regents of the University of Texas
 ACL2 comes with ABSOLUTELY NO WARRANTY.  This is free software and you
 are welcome to redistribute it under certain conditions.  For details,
 see the LICENSE file distributed with ACL2.

 Initialized with (INITIALIZE-ACL2 'INCLUDE-BOOK *ACL2-PASS-2-FILES*).
 See the documentation topic note-8-2 for recent changes.
 Note: We have modified the prompt in some underlying Lisps to further
 distinguish it from the ACL2 prompt.

ACL2 Version 8.2.  Level 1.  Cbd "/home/mark/acl2progs/".
System books directory "/usr/share/acl2-8.2dfsg/books/".
Type :help for help.
Type (good-bye) to quit completely out of ACL2.

ACL2 !>(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 3))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))

Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.01 seconds (prove: 0.00, print: 0.00, other: 0.01)
 FIZZBUZZ1
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  3325
 FIZZBUZZ1-MOD3
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  4096
 FIZZBUZZ1-MOD5
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


ACL2 Warning [Subsume] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A newly proposed
:REWRITE rule generated from FIZZBUZZ1-MOD15 probably subsumes the
previously added :REWRITE rule FIZZBUZZ1-MOD3, in the sense that the
new rule will now probably be applied whenever the old rule would have
been.


Splitter note (see :DOC splitter) for Goal (13 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 13

([ A key checkpoint:

Subgoal 13
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (EQUAL 0
                (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))

*1 (Subgoal 13) is pushed for proof by induction.

])
Subgoal 12

([ A key checkpoint:

Subgoal 12
(IMPLIES
  (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
       (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
       (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
       (<= 0 (NUMERATOR (* 1/5 N))))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 12 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Subsume and Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  2631

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 13
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (EQUAL 0
                (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))

Subgoal 12
(IMPLIES
  (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
       (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
       (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
       (<= 0 (NUMERATOR (* 1/5 N))))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-N ...):  A :REWRITE rule
generated from FIZZBUZZ1-N will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (7 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 7
Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-N ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  5058
 FIZZBUZZ1-N
ACL2 !>       (<= 0 (NUMERATOR (* 1/5 N))))


ACL2 Error in TOP-LEVEL:  Global variables, such as N, are not allowed.
See :DOC ASSIGN and :DOC @.

ACL2 !>:ubt! 1
           0:x(EXIT-BOOT-STRAP-MODE)
ACL2 !>(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ1
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  3325
 FIZZBUZZ1-MOD3
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  4096
 FIZZBUZZ1-MOD5
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (63 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 63

([ A key checkpoint:

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

*1 (Subgoal 63) is pushed for proof by induction.

])
Subgoal 62

([ A key checkpoint:

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 62 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.02, print: 0.00, other: 0.01)
Prover steps counted:  3001

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm mod-35
    (implies (and (equal 0 (mod n 3))
		  (equal 0 (mod n 5)))
	     (equal 0 (mod n 15))))


ACL2 Error in ( DEFTHM MOD-35 ...):  A :REWRITE rule generated from
MOD-35 is illegal because it rewrites the quoted constant '0.  For
general information about rewrite rules in ACL2, see :DOC rewrite.


Summary
Form:  ( DEFTHM MOD-35 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)

ACL2 Error in ( DEFTHM MOD-35 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm mod-35
    (implies (and (equal 0 (mod n 3))
		  (equal 0 (mod n 5)))
	     (equal (mod n 15) 0)))

ACL2 Warning [Non-rec] in ( DEFTHM MOD-35 ...):  A :REWRITE rule generated
from MOD-35 will be triggered only by terms containing the function
symbol MOD, which has a non-recursive definition.  Unless this definition
is disabled, this rule is unlikely ever to be used.


Splitter note (see :DOC splitter) for Goal (27 subgoals).
  if-intro: ((:DEFINITION FLOOR))

Subgoal 27

([ A key checkpoint:

Subgoal 27
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0 (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))
              (EQUAL (DENOMINATOR (* 1/15 N)) 1))
         (EQUAL (+ N (- (* 15 (NUMERATOR (* 1/15 N)))))
                0))

*1 (Subgoal 27) is pushed for proof by induction.

])
Subgoal 26

([ A key checkpoint:

Subgoal 26
(IMPLIES
   (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
        (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
        (EQUAL (DENOMINATOR (* 1/5 N)) 1)
        (EQUAL 0 (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))
        (NOT (EQUAL (DENOMINATOR (* 1/15 N)) 1))
        (<= 0 (NUMERATOR (* 1/15 N))))
   (EQUAL (+ N
             (- (* 15
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/15 N))
                                                 (DENOMINATOR (* 1/15 N))))))
          0))

Normally we would attempt to prove Subgoal 26 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM MOD-35 ...)
Rules: ((:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.01, print: 0.00, other: 0.01)
Prover steps counted:  2847

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 27
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0 (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))
              (EQUAL (DENOMINATOR (* 1/15 N)) 1))
         (EQUAL (+ N (- (* 15 (NUMERATOR (* 1/15 N)))))
                0))

Subgoal 26
(IMPLIES
   (AND (EQUAL (DENOMINATOR (* 1/3 N)) 1)
        (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
        (EQUAL (DENOMINATOR (* 1/5 N)) 1)
        (EQUAL 0 (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))
        (NOT (EQUAL (DENOMINATOR (* 1/15 N)) 1))
        (<= 0 (NUMERATOR (* 1/15 N))))
   (EQUAL (+ N
             (- (* 15
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/15 N))
                                                 (DENOMINATOR (* 1/15 N))))))
          0))

ACL2 Error in ( DEFTHM MOD-35 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm mod-nm
    (implies (and (equal 0 (mod x n))
		  (equal 0 (mod x m)))
	     (equal (mod x (* n m)) 0)))

ACL2 Warning [Non-rec] in ( DEFTHM MOD-NM ...):  A :REWRITE rule generated
from MOD-NM will be triggered only by terms containing the function
symbol MOD, which has a non-recursive definition.  Unless this definition
is disabled, this rule is unlikely ever to be used.


Splitter note (see :DOC splitter) for Goal (27 subgoals).
  if-intro: ((:DEFINITION FLOOR))

Subgoal 27

([ A key checkpoint:

Subgoal 27
(IMPLIES (AND (EQUAL (DENOMINATOR (* (/ N) X)) 1)
              (EQUAL 0
                     (+ X (- (* N (NUMERATOR (* (/ N) X))))))
              (EQUAL (DENOMINATOR (* (/ M) X)) 1)
              (EQUAL 0
                     (+ X (- (* M (NUMERATOR (* (/ M) X))))))
              (EQUAL (DENOMINATOR (* X (/ (* M N))))
                     1))
         (EQUAL (+ X
                   (- (* M N (NUMERATOR (* X (/ (* M N)))))))
                0))

*1 (Subgoal 27) is pushed for proof by induction.

])
Subgoal 26

([ A key checkpoint:

Subgoal 26
(IMPLIES
 (AND (EQUAL (DENOMINATOR (* (/ N) X)) 1)
      (EQUAL 0
             (+ X (- (* N (NUMERATOR (* (/ N) X))))))
      (EQUAL (DENOMINATOR (* (/ M) X)) 1)
      (EQUAL 0
             (+ X (- (* M (NUMERATOR (* (/ M) X))))))
      (NOT (EQUAL (DENOMINATOR (* X (/ (* M N))))
                  1))
      (<= 0 (NUMERATOR (* X (/ (* M N))))))
 (EQUAL
   (+ X
      (- (* M N
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* X (/ (* M N))))
                                          (DENOMINATOR (* X (/ (* M N))))))))
   0))

Normally we would attempt to prove Subgoal 26 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM MOD-NM ...)
Rules: ((:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:REWRITE ASSOCIATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.02, print: 0.00, other: 0.01)
Prover steps counted:  3759

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 27
(IMPLIES (AND (EQUAL (DENOMINATOR (* (/ N) X)) 1)
              (EQUAL 0
                     (+ X (- (* N (NUMERATOR (* (/ N) X))))))
              (EQUAL (DENOMINATOR (* (/ M) X)) 1)
              (EQUAL 0
                     (+ X (- (* M (NUMERATOR (* (/ M) X))))))
              (EQUAL (DENOMINATOR (* X (/ (* M N))))
                     1))
         (EQUAL (+ X
                   (- (* M N (NUMERATOR (* X (/ (* M N)))))))
                0))

Subgoal 26
(IMPLIES
 (AND (EQUAL (DENOMINATOR (* (/ N) X)) 1)
      (EQUAL 0
             (+ X (- (* N (NUMERATOR (* (/ N) X))))))
      (EQUAL (DENOMINATOR (* (/ M) X)) 1)
      (EQUAL 0
             (+ X (- (* M (NUMERATOR (* (/ M) X))))))
      (NOT (EQUAL (DENOMINATOR (* X (/ (* M N))))
                  1))
      (<= 0 (NUMERATOR (* X (/ (* M N))))))
 (EQUAL
   (+ X
      (- (* M N
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* X (/ (* M N))))
                                          (DENOMINATOR (* X (/ (* M N))))))))
   0))

ACL2 Error in ( DEFTHM MOD-NM ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defaxiom mod-nm
    (implies (and (> n 0)
		  (> m 0)
		  (> x 0)
		  (equal 0 (mod x n))
		  (equal 0 (mod x m)))
	     (equal (mod x (* n m)) 0)))

ACL2 Warning [Non-rec] in ( DEFAXIOM MOD-NM ...):  A :REWRITE rule
generated from MOD-NM will be triggered only by terms containing the
function symbol MOD, which has a non-recursive definition.  Unless
this definition is disabled, this rule is unlikely ever to be used.


Summary
Form:  ( DEFAXIOM MOD-NM ...)
Rules: NIL
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.00, print: 0.00, other: 0.01)
 MOD-NM
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (63 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 63

([ A key checkpoint:

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

*1 (Subgoal 63) is pushed for proof by induction.

])
Subgoal 62

([ A key checkpoint:

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 62 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  3001

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>:ubt! 1
           0:x(EXIT-BOOT-STRAP-MODE)
ACL2 !>(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ1
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  3325
 FIZZBUZZ1-MOD3
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  4096
 FIZZBUZZ1-MOD5
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (63 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 63

([ A key checkpoint:

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

*1 (Subgoal 63) is pushed for proof by induction.

])
Subgoal 62

([ A key checkpoint:

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 62 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.03, print: 0.00, other: 0.00)
Prover steps counted:  3001

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm mod15-3
    (implies (equal 0 (mod n 15))
	     (equal (mod n 3) 0)))

ACL2 Warning [Non-rec] in ( DEFTHM MOD15-3 ...):  A :REWRITE rule generated
from MOD15-3 will be triggered only by terms containing the function
symbol MOD, which has a non-recursive definition.  Unless this definition
is disabled, this rule is unlikely ever to be used.


Splitter note (see :DOC splitter) for Goal (9 subgoals).
  if-intro: ((:DEFINITION FLOOR))

Subgoal 9

([ A key checkpoint:

Subgoal 9
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1))
         (EQUAL (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))
                0))

*1 (Subgoal 9) is pushed for proof by induction.

])
Subgoal 8

([ A key checkpoint:

Subgoal 8
(IMPLIES
    (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
         (EQUAL 0
                (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
         (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
         (<= 0 (NUMERATOR (* 1/3 N))))
    (EQUAL (+ N
              (- (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
           0))

Normally we would attempt to prove Subgoal 8 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM MOD15-3 ...)
Rules: ((:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  1276

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 9
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1))
         (EQUAL (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))
                0))

Subgoal 8
(IMPLIES
    (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
         (EQUAL 0
                (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
         (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
         (<= 0 (NUMERATOR (* 1/3 N))))
    (EQUAL (+ N
              (- (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
           0))

ACL2 Error in ( DEFTHM MOD15-3 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (and (equal 0 (mod n 3))
		  (equal 0 (mod n 5)))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (7 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 7
Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  6200
 FIZZBUZZ1-MOD15
ACL2 !>(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-N ...):  A :REWRITE rule
generated from FIZZBUZZ1-N will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (7 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 7
Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-N ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  5829
 FIZZBUZZ1-N
ACL2 !>(defun fizzbuzz (n)
  (if (integerp n)
      (if (<= n 0) NIL
	  (append (fizzbuzz (- n 1)) (list (fizzbuzz1 n))))
      NIL))

The admission of FIZZBUZZ is trivial, using the relation O< (which
is known to be well-founded on the domain recognized by O-P) and the
measure (ACL2-COUNT N).  We observe that the type of FIZZBUZZ is described
by the theorem (TRUE-LISTP (FIZZBUZZ N)).  We used primitive type reasoning
and the :type-prescription rules BINARY-APPEND and TRUE-LISTP-APPEND.

Summary
Form:  ( DEFUN FIZZBUZZ ...)
Rules: ((:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:TYPE-PRESCRIPTION BINARY-APPEND)
        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ
ACL2 !>(fizzbuzz 30)
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz" 16
   17 "fizz" 19 "buzz" "fizz" 22 23 "fizz"
   "buzz" 26 "fizz" 28 29 "fizzbuzz")
ACL2 !>(defthm fizzbuzz-length
    (implies (and (integerp n) (>= n 0))
	     (equal (length (fizzbuzz n)) n)))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LENGTH ...):  A :REWRITE
rule generated from FIZZBUZZ-LENGTH will be triggered only by terms
containing the function symbol LENGTH, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.

Goal'

([ A key checkpoint:

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*1 (Goal') is pushed for proof by induction.

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P N))
     (IMPLIES (AND (INTEGERP N) (< 0 N) (:P (+ -1 N)))
              (:P N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
four nontautological subgoals.
Subgoal *1/4

Splitter note (see :DOC splitter) for Subgoal *1/4 (16 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal *1/4.16
Subgoal *1/4.16'
Subgoal *1/4.16''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.16
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz")))
                N))

*1.1 (Subgoal *1/4.16'') is pushed for proof by induction.

])
Subgoal *1/4.15
Subgoal *1/4.15'
Subgoal *1/4.15''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.15
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
                N))

*1.2 (Subgoal *1/4.15'') is pushed for proof by induction.

])
Subgoal *1/4.14
Subgoal *1/4.14'
Subgoal *1/4.14''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.14
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
                N))

*1.3 (Subgoal *1/4.14'') is pushed for proof by induction.

])
Subgoal *1/4.13
Subgoal *1/4.13'
Subgoal *1/4.13''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.13
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) (LIST N)))
                N))

*1.4 (Subgoal *1/4.13'') is pushed for proof by induction.

])
Subgoal *1/4.12
Subgoal *1/4.12'
Subgoal *1/4.12''
Subgoal *1/4.12'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.12
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (EQUAL (DENOMINATOR (* 1/3 N)) 1)
  (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                     '("fizzbuzz")))
        N))

*1.5 (Subgoal *1/4.12''') is pushed for proof by induction.

])
Subgoal *1/4.11
Subgoal *1/4.11'
Subgoal *1/4.11''
Subgoal *1/4.11'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.11
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (EQUAL (DENOMINATOR (* 1/3 N)) 1)
  (NOT (EQUAL 0
              (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
        N))

*1.6 (Subgoal *1/4.11''') is pushed for proof by induction.

])
Subgoal *1/4.10
Subgoal *1/4.10'
Subgoal *1/4.10''
Subgoal *1/4.10'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.10
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (EQUAL (DENOMINATOR (* 1/3 N)) 1)
  (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (NOT
   (EQUAL
        0
        (+ N
           (- (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N)))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

*1.7 (Subgoal *1/4.10''') is pushed for proof by induction.

])
Subgoal *1/4.9
Subgoal *1/4.9'
Subgoal *1/4.9''
Subgoal *1/4.9'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.9
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (EQUAL (DENOMINATOR (* 1/3 N)) 1)
  (NOT (EQUAL 0
              (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (NOT
   (EQUAL
        0
        (+ N
           (- (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N)))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) (LIST N)))
        N))

*1.8 (Subgoal *1/4.9''') is pushed for proof by induction.

])
Subgoal *1/4.8
Subgoal *1/4.8'
Subgoal *1/4.8''
Subgoal *1/4.8'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.8
(IMPLIES
 (AND
   (INTEGERP N)
   (< 0 N)
   (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
          (+ -1 N))
   (<= 0 N)
   (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
   (EQUAL 0
          (+ N
             (- (* 3
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                 (DENOMINATOR (* 1/3 N)))))))
   (EQUAL (DENOMINATOR (* 1/5 N)) 1)
   (EQUAL 0
          (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                     '("fizzbuzz")))
        N))

*1.9 (Subgoal *1/4.8''') is pushed for proof by induction.

])
Subgoal *1/4.7
Subgoal *1/4.7'
Subgoal *1/4.7''
Subgoal *1/4.7'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.7
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (NOT
    (EQUAL
         0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N))))))))
  (EQUAL (DENOMINATOR (* 1/5 N)) 1)
  (EQUAL 0
         (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
        N))

*1.10 (Subgoal *1/4.7''') is pushed for proof by induction.

])
Subgoal *1/4.6
Subgoal *1/4.6'
Subgoal *1/4.6''
Subgoal *1/4.6'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.6
(IMPLIES
 (AND
   (INTEGERP N)
   (< 0 N)
   (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
          (+ -1 N))
   (<= 0 N)
   (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
   (EQUAL 0
          (+ N
             (- (* 3
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                 (DENOMINATOR (* 1/3 N)))))))
   (EQUAL (DENOMINATOR (* 1/5 N)) 1)
   (NOT (EQUAL 0
               (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

*1.11 (Subgoal *1/4.6''') is pushed for proof by induction.

])
Subgoal *1/4.5
Subgoal *1/4.5'
Subgoal *1/4.5''
Subgoal *1/4.5'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.5
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (NOT
    (EQUAL
         0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N))))))))
  (EQUAL (DENOMINATOR (* 1/5 N)) 1)
  (NOT (EQUAL 0
              (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) (LIST N)))
        N))

*1.12 (Subgoal *1/4.5''') is pushed for proof by induction.

])
Subgoal *1/4.4
Subgoal *1/4.4'
Subgoal *1/4.4''
Subgoal *1/4.4'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N)))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                     '("fizzbuzz")))
        N))

*1.13 (Subgoal *1/4.4''') is pushed for proof by induction.

])
Subgoal *1/4.3
Subgoal *1/4.3'
Subgoal *1/4.3''
Subgoal *1/4.3'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (NOT
    (EQUAL
         0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N))))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 5
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                (DENOMINATOR (* 1/5 N))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
        N))

*1.14 (Subgoal *1/4.3''') is pushed for proof by induction.

])
Subgoal *1/4.2
Subgoal *1/4.2'
Subgoal *1/4.2''
Subgoal *1/4.2'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (EQUAL 0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N)))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (NOT
   (EQUAL
        0
        (+ N
           (- (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N)))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

*1.15 (Subgoal *1/4.2''') is pushed for proof by induction.

])
Subgoal *1/4.1
Subgoal *1/4.1'
Subgoal *1/4.1''
Subgoal *1/4.1'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
         (+ -1 N))
  (<= 0 N)
  (NOT (EQUAL (DENOMINATOR (* 1/3 N)) 1))
  (NOT
    (EQUAL
         0
         (+ N
            (- (* 3
                  (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                (DENOMINATOR (* 1/3 N))))))))
  (NOT (EQUAL (DENOMINATOR (* 1/5 N)) 1))
  (NOT
   (EQUAL
        0
        (+ N
           (- (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N)))))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) (LIST N)))
        N))

*1.16 (Subgoal *1/4.1''') is pushed for proof by induction.

])
Subgoal *1/3
Subgoal *1/2
Subgoal *1/1

So we now return to *1.16, which is

(IMPLIES
     (AND (INTEGERP I)
          (< 0 I)
          (INTEGERP J)
          (< 0 J)
          (RATIONALP R)
          (< 0 R)
          (RATIONALP S)
          (< 0 S)
          (INTEGERP N)
          (< 0 N)
          (<= 0 N)
          (NOT (EQUAL J 1))
          (NOT (EQUAL 0
                      (+ N
                         (- (* 3
                               (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR S)
                                                             J))))))
          (NOT (EQUAL I 1))
          (NOT (EQUAL 0
                      (+ N
                         (- (* 5
                               (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR R)
                                                             I)))))))
     (EQUAL (LEN (APPEND (FIZZBUZZ (LEN (FIZZBUZZ (+ -1 N))))
                         (LIST N)))
            N)).

No induction schemes are suggested by *1.16.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ-LENGTH ...)
Rules: ((:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION LENGTH)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART LEN)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:TYPE-PRESCRIPTION FIZZBUZZ))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.74 seconds (prove: 0.72, print: 0.01, other: 0.01)
Prover steps counted:  153751

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*** Key checkpoints under a top-level induction: ***

Subgoal *1/4.16
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz")))
                N))

Subgoal *1/4.15
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N)))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
                N))

Subgoal *1/4.14
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (EQUAL 0 (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
                N))

Note: There are thirteen additional key checkpoints under a top-level
induction.  See :DOC set-checkpoint-summary-limit to change the number
printed.

ACL2 Error in ( DEFTHM FIZZBUZZ-LENGTH ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm fizzbuzz-15
    (implies (equal n 20)
	     (equal (nth 14 (fizzbuzz n)) (fizzbuzz1 15))))
Goal'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-15 ...)
Rules: ((:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ1)
        (:EXECUTABLE-COUNTERPART NTH))
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
Prover steps counted:  33
 FIZZBUZZ-15
ACL2 !>(defthm fizzbuzz-15
    (implies (equal n 20)
	     (equal (nth 14 (fizzbuzz n)) (fizzbuzz1 15))))

The event ( DEFTHM FIZZBUZZ-15 ...) is redundant.  See :DOC redundant-
events.

Summary
Form:  ( DEFTHM FIZZBUZZ-15 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 :REDUNDANT
ACL2 !>(local (include-book "arithmetic/top-with-meta" :dir :system))

Summary
Form:  ( INCLUDE-BOOK "arithmetic/top-with-meta" ...)
Rules: NIL
Time:  0.22 seconds (prove: 0.00, print: 0.00, other: 0.22)
 "/usr/share/acl2-8.2dfsg/books/arithmetic/top-with-meta.lisp"
ACL2 !>(defthm fizzbuzz1-mod15-1
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15-1 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15-1 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (20 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 20
Subgoal 19
Subgoal 18
Subgoal 17
Subgoal 16
Subgoal 16'
Subgoal 16''
Subgoal 15
Subgoal 15'
Subgoal 15''
Subgoal 14
Subgoal 14'
Subgoal 13
Subgoal 13'
Subgoal 12
Subgoal 12'
Subgoal 12''
Subgoal 11
Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 6'
Subgoal 6''
Subgoal 5
Subgoal 5'
Subgoal 5''
Subgoal 4
Subgoal 4'
Subgoal 4''
Subgoal 3
Subgoal 3'
Subgoal 3''
Subgoal 2
Subgoal 2'
Subgoal 2''
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15-1 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION HIDE)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD15)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.10 seconds (prove: 0.10, print: 0.00, other: 0.00)
Prover steps counted:  17467
 FIZZBUZZ1-MOD15-1
ACL2 !>(defthm fizzbuzz-length
    (implies (and (integerp n) (>= n 0))
	     (equal (length (fizzbuzz n)) n)))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LENGTH ...):  A :REWRITE
rule generated from FIZZBUZZ-LENGTH will be triggered only by terms
containing the function symbol LENGTH, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.

Goal'

([ A key checkpoint:

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*1 (Goal') is pushed for proof by induction.

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P N))
     (IMPLIES (AND (INTEGERP N) (< 0 N) (:P (+ -1 N)))
              (:P N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
four nontautological subgoals.
Subgoal *1/4

Splitter note (see :DOC splitter) for Subgoal *1/4 (16 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal *1/4.16
Subgoal *1/4.16'
Subgoal *1/4.16''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.16'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N)))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz")))
                N))

*1.1 (Subgoal *1/4.16'') is pushed for proof by induction.

])
Subgoal *1/4.15
Subgoal *1/4.14
Subgoal *1/4.13
Subgoal *1/4.12
Subgoal *1/4.12'
Subgoal *1/4.12''
Subgoal *1/4.12'''
Subgoal *1/4.12'4'

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.12'
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                 (+ -1 N))
          (<= 0 N)
          (INTEGERP (* 1/3 N))
          (NOT (INTEGERP (* 1/5 N)))
          (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz")))
            N))

*1.2 (Subgoal *1/4.12'4') is pushed for proof by induction.

])
Subgoal *1/4.11
Subgoal *1/4.10
Subgoal *1/4.10'
Subgoal *1/4.10''
Subgoal *1/4.10'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.10'
(IMPLIES
 (AND
    (INTEGERP N)
    (< 0 N)
    (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
           (+ -1 N))
    (<= 0 N)
    (INTEGERP (* 1/3 N))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

*1.3 (Subgoal *1/4.10''') is pushed for proof by induction.

])
Subgoal *1/4.9
Subgoal *1/4.8
Subgoal *1/4.8'
Subgoal *1/4.8''
Subgoal *1/4.8'''
Subgoal *1/4.8'4'

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.8'
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                 (+ -1 N))
          (<= 0 N)
          (NOT (INTEGERP (* 1/3 N)))
          (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N)))))
          (INTEGERP (* 1/5 N)))
     (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz")))
            N))

*1.4 (Subgoal *1/4.8'4') is pushed for proof by induction.

])
Subgoal *1/4.7
Subgoal *1/4.7'
Subgoal *1/4.7''
Subgoal *1/4.7'''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.7'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
            (+ -1 N))
     (<= 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (INTEGERP (* 1/5 N)))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
        N))

*1.5 (Subgoal *1/4.7''') is pushed for proof by induction.

])
Subgoal *1/4.6
Subgoal *1/4.5
Subgoal *1/4.4
Subgoal *1/4.4'
Subgoal *1/4.4''
Subgoal *1/4.4'''
Subgoal *1/4.4'4'
Subgoal *1/4.4'5'

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.4
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                 (+ -1 N))
          (<= 0 N)
          (NOT (INTEGERP (* 1/3 N)))
          (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N)))))
          (NOT (INTEGERP (* 1/5 N)))
          (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz")))
            N))

*1.6 (Subgoal *1/4.4'5') is pushed for proof by induction.

])
Subgoal *1/4.3
Subgoal *1/4.3'
Subgoal *1/4.3''
Subgoal *1/4.3'''
Subgoal *1/4.3'4'
Subgoal *1/4.3'5'
Subgoal *1/4.3'6'
Subgoal *1/4.3'7'
Subgoal *1/4.3'8'

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.3
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
            (+ -1 N))
     (<= 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (NOT (INTEGERP (* 1/5 N)))
     (EQUAL N
            (* 5
               (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                             (DENOMINATOR (* 1/5 N))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("buzz")))
        N))

*1.7 (Subgoal *1/4.3'8') is pushed for proof by induction.

])
Subgoal *1/4.2
Subgoal *1/4.2'
Subgoal *1/4.2''
Subgoal *1/4.2'''
Subgoal *1/4.2'4'
Subgoal *1/4.2'5'
Subgoal *1/4.2'6'
Subgoal *1/4.2'7'
Subgoal *1/4.2'8'

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.2
(IMPLIES
 (AND
    (INTEGERP N)
    (< 0 N)
    (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
           (+ -1 N))
    (<= 0 N)
    (NOT (INTEGERP (* 1/3 N)))
    (EQUAL N
           (* 3
              (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                            (DENOMINATOR (* 1/3 N)))))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

*1.8 (Subgoal *1/4.2'8') is pushed for proof by induction.

])
Subgoal *1/4.1
Subgoal *1/4.1'
Subgoal *1/4.1''

([ A key checkpoint while proving *1 (descended from Goal'):

Subgoal *1/4.1
(IMPLIES
 (AND
    (INTEGERP N)
    (< 0 N)
    (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
           (+ -1 N))
    (<= 0 N)
    (NOT (INTEGERP (* 1/3 N)))
    (NOT (EQUAL N
                (* 3
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                 (DENOMINATOR (* 1/3 N))))))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) (LIST N)))
        N))

*1.9 (Subgoal *1/4.1'') is pushed for proof by induction.

])
Subgoal *1/3
Subgoal *1/2
Subgoal *1/1

So we now return to *1.9, which is

(IMPLIES
     (AND (RATIONALP R)
          (NOT (INTEGERP R))
          (< 0 R)
          (RATIONALP S)
          (NOT (INTEGERP S))
          (< 0 S)
          (INTEGERP N)
          (< 0 N)
          (<= 0 N)
          (NOT (EQUAL N
                      (* 3
                         (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR S)
                                                       (DENOMINATOR S)))))
          (NOT (EQUAL N
                      (* 5
                         (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR R)
                                                       (DENOMINATOR R))))))
     (EQUAL (LEN (APPEND (FIZZBUZZ (LEN (FIZZBUZZ (+ -1 N))))
                         (LIST N)))
            N)).

No induction schemes are suggested by *1.9.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ-LENGTH ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION LENGTH)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART LEN)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION FIZZBUZZ)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.88 seconds (prove: 0.86, print: 0.01, other: 0.01)
Prover steps counted:  154004

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*** Key checkpoints under a top-level induction: ***

Subgoal *1/4.16'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                     (+ -1 N))
              (<= 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N)))
         (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz")))
                N))

Subgoal *1/4.12'
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
                 (+ -1 N))
          (<= 0 N)
          (INTEGERP (* 1/3 N))
          (NOT (INTEGERP (* 1/5 N)))
          (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz")))
            N))

Subgoal *1/4.10'
(IMPLIES
 (AND
    (INTEGERP N)
    (< 0 N)
    (EQUAL (LEN (FIZZBUZZ (+ -1 N)))
           (+ -1 N))
    (<= 0 N)
    (INTEGERP (* 1/3 N))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (LEN (APPEND (FIZZBUZZ (+ -1 N)) '("fizz")))
        N))

Note: There are six additional key checkpoints under a top-level induction.
See :DOC set-checkpoint-summary-limit to change the number printed.

ACL2 Error in ( DEFTHM FIZZBUZZ-LENGTH ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (fizzbuzz1 (+ n 1))) (fizzbuzz (+ n 1)))))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LIST ...):  A :REWRITE
rule generated from FIZZBUZZ-LIST will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (36 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal 36

([ A key checkpoint:

Subgoal 36
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "fizzbuzz")
        (APPEND (FIZZBUZZ N) '("fizzbuzz"))))

*1 (Subgoal 36) is pushed for proof by induction.

])
Subgoal 35

([ A key checkpoint:

Subgoal 35
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "buzz")
        (APPEND (FIZZBUZZ N) '("buzz"))))

Normally we would attempt to prove Subgoal 35 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

Perhaps we can prove *1 by induction.  Two induction schemes are suggested
by this conjecture.  One of these has a score higher than the other.

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P L N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P L N))
     (IMPLIES (AND (INTEGERP N)
                   (< 0 N)
                   (:P L (+ -1 N)))
              (:P L N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P L N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
two nontautological subgoals.
Subgoal *1/2
Subgoal *1/2'

Splitter note (see :DOC splitter) for Subgoal *1/2' (107 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal *1/2.107

Splitter note (see :DOC splitter) for Subgoal *1/2.107 (4 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1))

Subgoal *1/2.107.4
Subgoal *1/2.107.4'
Subgoal *1/2.107.4''
Subgoal *1/2.107.4'''
Subgoal *1/2.107.4'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.107.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.1 (Subgoal *1/2.107.4'4') is pushed for proof by induction.

])
Subgoal *1/2.107.3
Subgoal *1/2.107.3'
Subgoal *1/2.107.3''
Subgoal *1/2.107.3'''
Subgoal *1/2.107.3'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.107.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.2 (Subgoal *1/2.107.3'4') is pushed for proof by induction.

])
Subgoal *1/2.107.2
Subgoal *1/2.107.2'
Subgoal *1/2.107.2''
Subgoal *1/2.107.2'''
Subgoal *1/2.107.2'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.107.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizz"))))

*1.3 (Subgoal *1/2.107.2'4') is pushed for proof by induction.

])
Subgoal *1/2.107.1
Subgoal *1/2.107.1'
Subgoal *1/2.107.1''
Subgoal *1/2.107.1'''
Subgoal *1/2.107.1'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.107.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (+ 1 N))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (LIST (+ 1 N)))))

*1.4 (Subgoal *1/2.107.1'4') is pushed for proof by induction.

])
Subgoal *1/2.106

Splitter note (see :DOC splitter) for Subgoal *1/2.106 (4 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1))

Subgoal *1/2.106.4
Subgoal *1/2.106.4'
Subgoal *1/2.106.4''
Subgoal *1/2.106.4'''
Subgoal *1/2.106.4'4'
Subgoal *1/2.106.4'5'
Subgoal *1/2.106.4'6'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.106.4'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                '("fizzbuzz"))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.5 (Subgoal *1/2.106.4'6') is pushed for proof by induction.

])
Subgoal *1/2.106.3
Subgoal *1/2.106.3'
Subgoal *1/2.106.3''
Subgoal *1/2.106.3'''
Subgoal *1/2.106.3'4'
Subgoal *1/2.106.3'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.106.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.6 (Subgoal *1/2.106.3'5') is pushed for proof by induction.

])
Subgoal *1/2.106.2
Subgoal *1/2.106.2'
Subgoal *1/2.106.2''
Subgoal *1/2.106.2'''
Subgoal *1/2.106.2'4'
Subgoal *1/2.106.2'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.106.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizz"))))

*1.7 (Subgoal *1/2.106.2'5') is pushed for proof by induction.

])
Subgoal *1/2.106.1
Subgoal *1/2.106.1'
Subgoal *1/2.106.1''
Subgoal *1/2.106.1'''
Subgoal *1/2.106.1'4'
Subgoal *1/2.106.1'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.106.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (+ 1 N))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (LIST (+ 1 N)))))

*1.8 (Subgoal *1/2.106.1'5') is pushed for proof by induction.

])
Subgoal *1/2.105
Subgoal *1/2.104
Subgoal *1/2.103
Subgoal *1/2.102
Subgoal *1/2.101
Subgoal *1/2.100
Subgoal *1/2.99

Splitter note (see :DOC splitter) for Subgoal *1/2.99 (8 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal *1/2.99.8
Subgoal *1/2.99.8'
Subgoal *1/2.99.8''
Subgoal *1/2.99.8'''
Subgoal *1/2.99.8'4'
Subgoal *1/2.99.8'5'
Subgoal *1/2.99.8'6'
Subgoal *1/2.99.8'7'
Subgoal *1/2.99.8'8'
Subgoal *1/2.99.8'9'
Subgoal *1/2.99.8'10'
Subgoal *1/2.99.8'11'
Subgoal *1/2.99.8'12'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.8'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.9 (Subgoal *1/2.99.8'12') is pushed for proof by induction.

])
Subgoal *1/2.99.7
Subgoal *1/2.99.7'
Subgoal *1/2.99.7''
Subgoal *1/2.99.7'''
Subgoal *1/2.99.7'4'
Subgoal *1/2.99.7'5'
Subgoal *1/2.99.7'6'
Subgoal *1/2.99.7'7'
Subgoal *1/2.99.7'8'
Subgoal *1/2.99.7'9'
Subgoal *1/2.99.7'10'
Subgoal *1/2.99.7'11'
Subgoal *1/2.99.7'12'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.7'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.10 (Subgoal *1/2.99.7'12') is pushed for proof by induction.

])
Subgoal *1/2.99.6
Subgoal *1/2.99.5
Subgoal *1/2.99.4
Subgoal *1/2.99.4'
Subgoal *1/2.99.4''
Subgoal *1/2.99.4'''
Subgoal *1/2.99.4'4'
Subgoal *1/2.99.4'5'
Subgoal *1/2.99.4'6'
Subgoal *1/2.99.4'7'
Subgoal *1/2.99.4'8'
Subgoal *1/2.99.4'9'
Subgoal *1/2.99.4'10'
Subgoal *1/2.99.4'11'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.11 (Subgoal *1/2.99.4'11') is pushed for proof by induction.

])
Subgoal *1/2.99.3
Subgoal *1/2.99.3'
Subgoal *1/2.99.3''
Subgoal *1/2.99.3'''
Subgoal *1/2.99.3'4'
Subgoal *1/2.99.3'5'
Subgoal *1/2.99.3'6'
Subgoal *1/2.99.3'7'
Subgoal *1/2.99.3'8'
Subgoal *1/2.99.3'9'
Subgoal *1/2.99.3'10'
Subgoal *1/2.99.3'11'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.12 (Subgoal *1/2.99.3'11') is pushed for proof by induction.

])
Subgoal *1/2.99.2
Subgoal *1/2.99.2'
Subgoal *1/2.99.2''
Subgoal *1/2.99.2'''
Subgoal *1/2.99.2'4'
Subgoal *1/2.99.2'5'
Subgoal *1/2.99.2'6'
Subgoal *1/2.99.2'7'
Subgoal *1/2.99.2'8'
Subgoal *1/2.99.2'9'
Subgoal *1/2.99.2'10'
Subgoal *1/2.99.2'11'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizz"))))

*1.13 (Subgoal *1/2.99.2'11') is pushed for proof by induction.

])
Subgoal *1/2.99.1
Subgoal *1/2.99.1'
Subgoal *1/2.99.1''
Subgoal *1/2.99.1'''
Subgoal *1/2.99.1'4'
Subgoal *1/2.99.1'5'
Subgoal *1/2.99.1'6'
Subgoal *1/2.99.1'7'
Subgoal *1/2.99.1'8'
Subgoal *1/2.99.1'9'
Subgoal *1/2.99.1'10'
Subgoal *1/2.99.1'11'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.99.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (+ 1 N))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (LIST (+ 1 N)))))

*1.14 (Subgoal *1/2.99.1'11') is pushed for proof by induction.

])
Subgoal *1/2.98

Splitter note (see :DOC splitter) for Subgoal *1/2.98 (8 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal *1/2.98.8
Subgoal *1/2.98.8'
Subgoal *1/2.98.8''
Subgoal *1/2.98.8'''
Subgoal *1/2.98.8'4'
Subgoal *1/2.98.8'5'
Subgoal *1/2.98.8'6'
Subgoal *1/2.98.8'7'
Subgoal *1/2.98.8'8'
Subgoal *1/2.98.8'9'
Subgoal *1/2.98.8'10'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.8'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                '("fizzbuzz"))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.15 (Subgoal *1/2.98.8'10') is pushed for proof by induction.

])
Subgoal *1/2.98.7
Subgoal *1/2.98.7'
Subgoal *1/2.98.7''
Subgoal *1/2.98.7'''
Subgoal *1/2.98.7'4'
Subgoal *1/2.98.7'5'
Subgoal *1/2.98.7'6'
Subgoal *1/2.98.7'7'
Subgoal *1/2.98.7'8'
Subgoal *1/2.98.7'9'
Subgoal *1/2.98.7'10'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.7'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.16 (Subgoal *1/2.98.7'10') is pushed for proof by induction.

])
Subgoal *1/2.98.6
Subgoal *1/2.98.5
Subgoal *1/2.98.4
Subgoal *1/2.98.4'
Subgoal *1/2.98.4''
Subgoal *1/2.98.4'''
Subgoal *1/2.98.4'4'
Subgoal *1/2.98.4'5'
Subgoal *1/2.98.4'6'
Subgoal *1/2.98.4'7'
Subgoal *1/2.98.4'8'
Subgoal *1/2.98.4'9'
Subgoal *1/2.98.4'10'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.4'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                '("fizzbuzz"))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

*1.17 (Subgoal *1/2.98.4'10') is pushed for proof by induction.

])
Subgoal *1/2.98.3
Subgoal *1/2.98.3'
Subgoal *1/2.98.3''
Subgoal *1/2.98.3'''
Subgoal *1/2.98.3'4'
Subgoal *1/2.98.3'5'
Subgoal *1/2.98.3'6'
Subgoal *1/2.98.3'7'
Subgoal *1/2.98.3'8'
Subgoal *1/2.98.3'9'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

*1.18 (Subgoal *1/2.98.3'9') is pushed for proof by induction.

])
Subgoal *1/2.98.2
Subgoal *1/2.98.2'
Subgoal *1/2.98.2''
Subgoal *1/2.98.2'''
Subgoal *1/2.98.2'4'
Subgoal *1/2.98.2'5'
Subgoal *1/2.98.2'6'
Subgoal *1/2.98.2'7'
Subgoal *1/2.98.2'8'
Subgoal *1/2.98.2'9'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizz"))))

*1.19 (Subgoal *1/2.98.2'9') is pushed for proof by induction.

])
Subgoal *1/2.98.1
Subgoal *1/2.98.1'
Subgoal *1/2.98.1''
Subgoal *1/2.98.1'''
Subgoal *1/2.98.1'4'
Subgoal *1/2.98.1'5'
Subgoal *1/2.98.1'6'
Subgoal *1/2.98.1'7'
Subgoal *1/2.98.1'8'
Subgoal *1/2.98.1'9'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.98.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (EQUAL N
         (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                          (DENOMINATOR (* 1/5 N)))))
  (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                         '("fizzbuzz"))
                 "fizzbuzz")
         (APPEND (FIZZBUZZ (+ -1 N))
                 '("fizzbuzz")))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (+ 1 N))
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                (LIST (+ 1 N)))))

*1.20 (Subgoal *1/2.98.1'9') is pushed for proof by induction.

])
Subgoal *1/2.97

Splitter note (see :DOC splitter) for Subgoal *1/2.97 (8 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal *1/2.97.8
Subgoal *1/2.97.8'
Subgoal *1/2.97.8''
Subgoal *1/2.97.8'''
Subgoal *1/2.97.8'4'
Subgoal *1/2.97.8'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.97.8'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                '("fizzbuzz"))))

*1.21 (Subgoal *1/2.97.8'5') is pushed for proof by induction.

])
Subgoal *1/2.97.7
Subgoal *1/2.97.7'
Subgoal *1/2.97.7''
Subgoal *1/2.97.7'''
Subgoal *1/2.97.7'4'
Subgoal *1/2.97.7'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.97.7'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                '("buzz"))))

*1.22 (Subgoal *1/2.97.7'5') is pushed for proof by induction.

])
Subgoal *1/2.97.6
Subgoal *1/2.97.5
Subgoal *1/2.97.4
Subgoal *1/2.97.4'
Subgoal *1/2.97.4''
Subgoal *1/2.97.4'''
Subgoal *1/2.97.4'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.97.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                '("fizzbuzz"))))

*1.23 (Subgoal *1/2.97.4'4') is pushed for proof by induction.

])
Subgoal *1/2.97.3
  C-c C-c
***********************************************
Note:  SIMPLE-ERROR: Console interrupt.
  Will attempt to exit the proof in progress;
  otherwise, the next interrupt will abort the proof.
***********************************************

The message above might explain the error.  If not, and
if you didn't cause an explicit interrupt (Control-C),
then the root cause may be call of a :program mode
function that has the wrong guard specified, or even no
guard specified (i.e., an implicit guard of t).
See :DOC raw-lisp-error and see :DOC guards.

To enable breaks into the debugger (also see :DOC acl2-customization):
(SET-DEBUGGER-ENABLE T)


ACL2 Error in ( DEFTHM FIZZBUZZ-LIST ...):  Aborting due to an interrupt.


Summary
Form:  ( DEFTHM FIZZBUZZ-LIST ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART CONS)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE <-+-NEGATIVE-0-1)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD15)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FIZZBUZZ1-MOD5)
        (:REWRITE FIZZBUZZ1-N)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE MINUS-CANCELLATION-ON-RIGHT)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION FIZZBUZZ)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))
Warnings:  Non-rec
Time:  4.53 seconds (prove: 4.49, print: 0.04, other: 0.00)
Prover steps counted:  761041

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 36
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "fizzbuzz")
        (APPEND (FIZZBUZZ N) '("fizzbuzz"))))

Subgoal 35
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "buzz")
        (APPEND (FIZZBUZZ N) '("buzz"))))

*** Key checkpoints under a top-level induction: ***

Subgoal *1/2.107.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizzbuzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizzbuzz"))))

Subgoal *1/2.107.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "buzz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("buzz"))))

Subgoal *1/2.107.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (INTEGERP (* 1/3 N))
  (INTEGERP (* 1/5 N))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                      '("fizzbuzz"))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                "fizz")
        (APPEND (APPEND (FIZZBUZZ (+ -1 N))
                        '("fizzbuzz"))
                '("fizz"))))

Note: There are 20 additional key checkpoints under a top-level induction.
See :DOC set-checkpoint-summary-limit to change the number printed.

ACL2 Error in ( DEFTHM FIZZBUZZ-LIST ...):  See :DOC failure.

******** FAILED ********
ACL2 !>:ubt! 1
           0:x(EXIT-BOOT-STRAP-MODE)
ACL2 !>(local (include-book "arithmetic/top-with-meta" :dir :system))


(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

Summary
Form:  ( INCLUDE-BOOK "arithmetic/top-with-meta" ...)
Rules: NIL
Time:  0.15 seconds (prove: 0.00, print: 0.00, other: 0.15)
 "/usr/share/acl2-8.2dfsg/books/arithmetic/top-with-meta.lisp"
ACL2 !>
Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ1
ACL2 !>(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 6
Subgoal 5
Subgoal 5'
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.04 seconds (prove: 0.03, print: 0.00, other: 0.01)
Prover steps counted:  4050
 FIZZBUZZ1-MOD3
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 6
Subgoal 5
Subgoal 5'
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  4881
 FIZZBUZZ1-MOD5
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (20 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 20
Subgoal 19
Subgoal 18
Subgoal 17
Subgoal 16
Subgoal 16'
Subgoal 16''
Subgoal 15
Subgoal 15'
Subgoal 15''
Subgoal 14
Subgoal 14'
Subgoal 13
Subgoal 13'
Subgoal 12
Subgoal 12'
Subgoal 12''
Subgoal 11
Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 6'
Subgoal 6''
Subgoal 5
Subgoal 5'
Subgoal 5''
Subgoal 4
Subgoal 4'
Subgoal 4''
Subgoal 3
Subgoal 3'
Subgoal 3''
Subgoal 2
Subgoal 2'
Subgoal 2''
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION HIDE)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.13 seconds (prove: 0.13, print: 0.00, other: 0.00)
Prover steps counted:  17412
 FIZZBUZZ1-MOD15
ACL2 !>(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-N ...):  A :REWRITE rule
generated from FIZZBUZZ1-N will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (10 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 6'
Subgoal 5
Subgoal 4
Subgoal 4'
Subgoal 3
Subgoal 3'
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-N ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-DENOMINATOR)
        (:REWRITE DEFAULT-NUMERATOR)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FIZZBUZZ1-MOD5)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.08 seconds (prove: 0.07, print: 0.00, other: 0.01)
Prover steps counted:  9708
 FIZZBUZZ1-N
ACL2 !>(include-book "std/lists/top" :dir :system)
Note (from clause-processors/equality): disabling DISJOIN, DISJOIN2,
CONJOIN and CONJOIN2.


Summary
Form:  ( INCLUDE-BOOK "std/lists/top" ...)
Rules: NIL
Time:  0.53 seconds (prove: 0.00, print: 0.00, other: 0.53)
 "/usr/share/acl2-8.2dfsg/books/std/lists/top.lisp"
ACL2 !>(defun fizzbuzz (n)
  (if (integerp n)
      (if (<= n 0) NIL
	  (append (fizzbuzz (- n 1)) (list (fizzbuzz1 n))))
      NIL))

The admission of FIZZBUZZ is trivial, using the relation O< (which
is known to be well-founded on the domain recognized by O-P) and the
measure (ACL2-COUNT N).  We observe that the type of FIZZBUZZ is described
by the theorem (TRUE-LISTP (FIZZBUZZ N)).  We used primitive type reasoning
and the :type-prescription rules BINARY-APPEND and TRUE-LISTP-APPEND.

Summary
Form:  ( DEFUN FIZZBUZZ ...)
Rules: ((:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:TYPE-PRESCRIPTION BINARY-APPEND)
        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ
ACL2 !>(defthm fizzbuzz-length
    (implies (and (integerp n) (>= n 0))
	     (equal (length (fizzbuzz n)) n)))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LENGTH ...):  A :REWRITE
rule generated from FIZZBUZZ-LENGTH will be triggered only by terms
containing the function symbol LENGTH, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.

Goal'

([ A key checkpoint:

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*1 (Goal') is pushed for proof by induction.

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P N))
     (IMPLIES (AND (INTEGERP N) (< 0 N) (:P (+ -1 N)))
              (:P N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
four nontautological subgoals.
Subgoal *1/4
Subgoal *1/3
Subgoal *1/2
Subgoal *1/1

*1 is COMPLETED!
Thus key checkpoint Goal' is COMPLETED!

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-LENGTH ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION LENGTH)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART LEN)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE LEN-OF-APPEND)
        (:REWRITE LEN-OF-CONS)
        (:REWRITE MINUS-CANCELLATION-ON-LEFT)
        (:TYPE-PRESCRIPTION FIZZBUZZ)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Warnings:  Non-rec
Time:  0.05 seconds (prove: 0.05, print: 0.00, other: 0.00)
Prover steps counted:  7650
 FIZZBUZZ-LENGTH
ACL2 !>(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (fizzbuzz1 (+ n 1))) (fizzbuzz (+ n 1)))))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LIST ...):  A :REWRITE
rule generated from FIZZBUZZ-LIST will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.

Goal'

([ A key checkpoint:

Goal'
(IMPLIES (INTEGERP N) (< N 0))

*1 (Goal') is pushed for proof by induction.

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE EQUAL-WHEN-APPEND-SAME)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.03, print: 0.00, other: 0.00)
Prover steps counted:  3724

---
The key checkpoint goal, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal'
(IMPLIES (INTEGERP N) (< N 0))

ACL2 Error in ( DEFTHM FIZZBUZZ-LIST ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm fizzbuzz-list-bad
    (implies (and (integerp n) (>= n 0)
		  (integerp m) (< n m))
	     (equal (nth (- n 1) (fizzbuzz m))
		    (fizzbuzz1 n))))

Splitter note (see :DOC splitter) for Goal (16 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 16
Subgoal 16'

([ A key checkpoint:

Subgoal 16'
(IMPLIES (AND (INTEGERP N)
              (<= 0 N)
              (INTEGERP M)
              (< N M)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N)))
         (EQUAL (NTH (+ -1 N) (FIZZBUZZ M))
                "fizzbuzz"))

*1 (Subgoal 16') is pushed for proof by induction.

])
Subgoal 15
Subgoal 14
Subgoal 13
Subgoal 12
Subgoal 12'
Subgoal 12''
Subgoal 11
Subgoal 10
Subgoal 10'

([ A key checkpoint:

Subgoal 10'
(IMPLIES
 (AND
    (INTEGERP N)
    (<= 0 N)
    (INTEGERP M)
    (< N M)
    (INTEGERP (* 1/3 N))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (NTH (+ -1 N) (FIZZBUZZ M))
        "fizz"))

Normally we would attempt to prove Subgoal 10' by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ M).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P M N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP M)) (:P M N))
     (IMPLIES (AND (INTEGERP M)
                   (< 0 M)
                   (:P (+ -1 M) N))
              (:P M N))
     (IMPLIES (AND (INTEGERP M) (<= M 0))
              (:P M N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
two nontautological subgoals.
Subgoal *1/2
Subgoal *1/2'

Splitter note (see :DOC splitter) for Subgoal *1/2' (115 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))

Subgoal *1/2.115
Subgoal *1/2.115'
Subgoal *1/2.115''

Splitter note (see :DOC splitter) for Subgoal *1/2.115'' (1080 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE EQUAL-CONSTANT-+)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))

Subgoal *1/2.115.1080
Subgoal *1/2.115.1080'
Subgoal *1/2.115.1079
Subgoal *1/2.115.1079'
Subgoal *1/2.115.1078
Subgoal *1/2.115.1078'
Subgoal *1/2.115.1077
Subgoal *1/2.115.1077'
Subgoal *1/2.115.1076
Subgoal *1/2.115.1076'
Subgoal *1/2.115.1075
Subgoal *1/2.115.1075'
Subgoal *1/2.115.1074
Subgoal *1/2.115.1074'
Subgoal *1/2.115.1073
Subgoal *1/2.115.1073'
Subgoal *1/2.115.1072
Subgoal *1/2.115.1072'
Subgoal *1/2.115.1071
Subgoal *1/2.115.1071'
Subgoal *1/2.115.1070
Subgoal *1/2.115.1070'
Subgoal *1/2.115.1069
Subgoal *1/2.115.1069'
Subgoal *1/2.115.1068
Subgoal *1/2.115.1068'
Subgoal *1/2.115.1067
Subgoal *1/2.115.1067'
Subgoal *1/2.115.1066
Subgoal *1/2.115.1066'
Subgoal *1/2.115.1065
Subgoal *1/2.115.1065'
Subgoal *1/2.115.1064
Subgoal *1/2.115.1064'
Subgoal *1/2.115.1063
Subgoal *1/2.115.1063'
Subgoal *1/2.115.1062
Subgoal *1/2.115.1062'
Subgoal *1/2.115.1061
Subgoal *1/2.115.1061'
Subgoal *1/2.115.1060
Subgoal *1/2.115.1060'
Subgoal *1/2.115.1059
Subgoal *1/2.115.1059'
Subgoal *1/2.115.1058
Subgoal *1/2.115.1058'
Subgoal *1/2.115.1057
Subgoal *1/2.115.1057'
Subgoal *1/2.115.1056
Subgoal *1/2.115.1056'
Subgoal *1/2.115.1055
Subgoal *1/2.115.1055'
Subgoal *1/2.115.1054
Subgoal *1/2.115.1054'
Subgoal *1/2.115.1053
Subgoal *1/2.115.1053'
Subgoal *1/2.115.1052
Subgoal *1/2.115.1052'
Subgoal *1/2.115.1051
Subgoal *1/2.115.1051'
Subgoal *1/2.115.1050
Subgoal *1/2.115.1050'
Subgoal *1/2.115.1049
Subgoal *1/2.115.1049'
Subgoal *1/2.115.1048
Subgoal *1/2.115.1048'
Subgoal *1/2.115.1047
Subgoal *1/2.115.1047'
Subgoal *1/2.115.1046
Subgoal *1/2.115.1046'
Subgoal *1/2.115.1045
Subgoal *1/2.115.1045'
Subgoal *1/2.115.1044
Subgoal *1/2.115.1044'
Subgoal *1/2.115.1043
Subgoal *1/2.115.1043'
Subgoal *1/2.115.1042
Subgoal *1/2.115.1042'
Subgoal *1/2.115.1041
Subgoal *1/2.115.1041'
Subgoal *1/2.115.1040
Subgoal *1/2.115.1040'
Subgoal *1/2.115.1039
Subgoal *1/2.115.1039'
Subgoal *1/2.115.1038
Subgoal *1/2.115.1038'
Subgoal *1/2.115.1037
Subgoal *1/2.115.1037'
Subgoal *1/2.115.1036
Subgoal *1/2.115.1036'
Subgoal *1/2.115.1035
Subgoal *1/2.115.1035'
Subgoal *1/2.115.1034
Subgoal *1/2.115.1034'
Subgoal *1/2.115.1033
Subgoal *1/2.115.1033'
Subgoal *1/2.115.1032
Subgoal *1/2.115.1032'
Subgoal *1/2.115.1031
Subgoal *1/2.115.1031'
Subgoal *1/2.115.1030
Subgoal *1/2.115.1030'
Subgoal *1/2.115.1029
Subgoal *1/2.115.1029'
Subgoal *1/2.115.1028
Subgoal *1/2.115.1028'
Subgoal *1/2.115.1027
Subgoal *1/2.115.1027'
Subgoal *1/2.115.1026
Subgoal *1/2.115.1026'
Subgoal *1/2.115.1025
Subgoal *1/2.115.1025'
Subgoal *1/2.115.1024
Subgoal *1/2.115.1024'
Subgoal *1/2.115.1023
Subgoal *1/2.115.1023'
Subgoal *1/2.115.1022
Subgoal *1/2.115.1022'
Subgoal *1/2.115.1021
Subgoal *1/2.115.1021'
Subgoal *1/2.115.1020
Subgoal *1/2.115.1020'
Subgoal *1/2.115.1019
Subgoal *1/2.115.1019'
Subgoal *1/2.115.1018
Subgoal *1/2.115.1018'
Subgoal *1/2.115.1017
Subgoal *1/2.115.1017'
Subgoal *1/2.115.1016
Subgoal *1/2.115.1016'
Subgoal *1/2.115.1015
Subgoal *1/2.115.1015'
Subgoal *1/2.115.1014
Subgoal *1/2.115.1014'
Subgoal *1/2.115.1013
Subgoal *1/2.115.1013'
Subgoal *1/2.115.1012
Subgoal *1/2.115.1012'
Subgoal *1/2.115.1011
Subgoal *1/2.115.1011'
Subgoal *1/2.115.1010
Subgoal *1/2.115.1010'
Subgoal *1/2.115.1009
Subgoal *1/2.115.1009'
Subgoal *1/2.115.1008
Subgoal *1/2.115.1008'
Subgoal *1/2.115.1007
Subgoal *1/2.115.1007'
Subgoal *1/2.115.1006
Subgoal *1/2.115.1006'
Subgoal *1/2.115.1005
Subgoal *1/2.115.1005'
Subgoal *1/2.115.1004
Subgoal *1/2.115.1004'
Subgoal *1/2.115.1003
Subgoal *1/2.115.1003'
Subgoal *1/2.115.1002
Subgoal *1/2.115.1002'
Subgoal *1/2.115.1001
Subgoal *1/2.115.1001'
Subgoal *1/2.115.1000
Subgoal *1/2.115.1000'
Subgoal *1/2.115.999
Subgoal *1/2.115.999'
Subgoal *1/2.115.998
Subgoal *1/2.115.998'
Subgoal *1/2.115.997
Subgoal *1/2.115.997'
Subgoal *1/2.115.996
Subgoal *1/2.115.996'
Subgoal *1/2.115.995
Subgoal *1/2.115.995'
Subgoal *1/2.115.994
Subgoal *1/2.115.994'
Subgoal *1/2.115.993
Subgoal *1/2.115.993'
Subgoal *1/2.115.992
Subgoal *1/2.115.992'
Subgoal *1/2.115.991
Subgoal *1/2.115.991'
Subgoal *1/2.115.990
Subgoal *1/2.115.990'
Subgoal *1/2.115.989
Subgoal *1/2.115.989'
Subgoal *1/2.115.988
Subgoal *1/2.115.988'
Subgoal *1/2.115.987
Subgoal *1/2.115.987'
Subgoal *1/2.115.986
Subgoal *1/2.115.986'
Subgoal *1/2.115.985
Subgoal *1/2.115.985'
Subgoal *1/2.115.984
Subgoal *1/2.115.984'
Subgoal *1/2.115.983
Subgoal *1/2.115.983'
Subgoal *1/2.115.982
Subgoal *1/2.115.982'
Subgoal *1/2.115.981
Subgoal *1/2.115.981'
Subgoal *1/2.115.980
Subgoal *1/2.115.980'
Subgoal *1/2.115.979
Subgoal *1/2.115.979'
Subgoal *1/2.115.978
Subgoal *1/2.115.978'
Subgoal *1/2.115.977
Subgoal *1/2.115.977'
Subgoal *1/2.115.976
Subgoal *1/2.115.976'
Subgoal *1/2.115.975
Subgoal *1/2.115.975'
Subgoal *1/2.115.974
Subgoal *1/2.115.974'
Subgoal *1/2.115.973
Subgoal *1/2.115.973'
Subgoal *1/2.115.972
Subgoal *1/2.115.972'
Subgoal *1/2.115.971
Subgoal *1/2.115.971'
Subgoal *1/2.115.970
Subgoal *1/2.115.970'
Subgoal *1/2.115.969
Subgoal *1/2.115.969'
Subgoal *1/2.115.968
Subgoal *1/2.115.968'
Subgoal *1/2.115.967
Subgoal *1/2.115.967'
Subgoal *1/2.115.966
Subgoal *1/2.115.966'
Subgoal *1/2.115.965
Subgoal *1/2.115.965'
Subgoal *1/2.115.964
Subgoal *1/2.115.964'
Subgoal *1/2.115.963
Subgoal *1/2.115.963'
Subgoal *1/2.115.962
Subgoal *1/2.115.962'
Subgoal *1/2.115.961
Subgoal *1/2.115.961'
Subgoal *1/2.115.960
Subgoal *1/2.115.960'
Subgoal *1/2.115.959
Subgoal *1/2.115.959'
Subgoal *1/2.115.958
Subgoal *1/2.115.958'
Subgoal *1/2.115.957
Subgoal *1/2.115.957'
Subgoal *1/2.115.956
Subgoal *1/2.115.956'
Subgoal *1/2.115.955
Subgoal *1/2.115.955'
Subgoal *1/2.115.954
Subgoal *1/2.115.954'
Subgoal *1/2.115.953
Subgoal *1/2.115.953'
Subgoal *1/2.115.952
Subgoal *1/2.115.952'
Subgoal *1/2.115.951
Subgoal *1/2.115.951'
Subgoal *1/2.115.950
Subgoal *1/2.115.950'
Subgoal *1/2.115.949
Subgoal *1/2.115.949'
Subgoal *1/2.115.948
Subgoal *1/2.115.948'
Subgoal *1/2.115.947
Subgoal *1/2.115.947'
Subgoal *1/2.115.946
Subgoal *1/2.115.946'
Subgoal *1/2.115.945
Subgoal *1/2.115.945'
Subgoal *1/2.115.944
Subgoal *1/2.115.944'
Subgoal *1/2.115.943
Subgoal *1/2.115.943'
Subgoal *1/2.115.942
Subgoal *1/2.115.942'
Subgoal *1/2.115.941
Subgoal *1/2.115.941'
Subgoal *1/2.115.940
Subgoal *1/2.115.940'
Subgoal *1/2.115.939
Subgoal *1/2.115.939'
Subgoal *1/2.115.938
Subgoal *1/2.115.938'
Subgoal *1/2.115.937
Subgoal *1/2.115.937'
Subgoal *1/2.115.936
Subgoal *1/2.115.936'
Subgoal *1/2.115.935
Subgoal *1/2.115.935'
Subgoal *1/2.115.934
Subgoal *1/2.115.934'
Subgoal *1/2.115.933
Subgoal *1/2.115.933'
Subgoal *1/2.115.932
Subgoal *1/2.115.932'
Subgoal *1/2.115.931
Subgoal *1/2.115.931'
Subgoal *1/2.115.930
Subgoal *1/2.115.930'
Subgoal *1/2.115.929
Subgoal *1/2.115.929'
Subgoal *1/2.115.928
Subgoal *1/2.115.928'
Subgoal *1/2.115.927
Subgoal *1/2.115.927'
Subgoal *1/2.115.926
Subgoal *1/2.115.926'
Subgoal *1/2.115.925
Subgoal *1/2.115.925'
Subgoal *1/2.115.924
Subgoal *1/2.115.924'
Subgoal *1/2.115.923
Subgoal *1/2.115.923'
Subgoal *1/2.115.922
Subgoal *1/2.115.922'
Subgoal *1/2.115.921
Subgoal *1/2.115.921'
Subgoal *1/2.115.920
Subgoal *1/2.115.920'
Subgoal *1/2.115.919
Subgoal *1/2.115.919'
Subgoal *1/2.115.918
Subgoal *1/2.115.918'
Subgoal *1/2.115.917
Subgoal *1/2.115.917'
Subgoal *1/2.115.916
Subgoal *1/2.115.916'
Subgoal *1/2.115.915
Subgoal *1/2.115.915'
Subgoal *1/2.115.914
Subgoal *1/2.115.914'
Subgoal *1/2.115.913
Subgoal *1/2.115.913'
Subgoal *1/2.115.912
Subgoal *1/2.115.912'
Subgoal *1/2.115.911
Subgoal *1/2.115.911'
Subgoal *1/2.115.910
Subgoal *1/2.115.910'
Subgoal *1/2.115.909
Subgoal *1/2.115.909'
Subgoal *1/2.115.908
Subgoal *1/2.115.908'
Subgoal *1/2.115.907
Subgoal *1/2.115.907'
Subgoal *1/2.115.906
Subgoal *1/2.115.906'
Subgoal *1/2.115.905
Subgoal *1/2.115.905'
Subgoal *1/2.115.904
Subgoal *1/2.115.904'
Subgoal *1/2.115.903
Subgoal *1/2.115.903'
Subgoal *1/2.115.902
Subgoal *1/2.115.902'
Subgoal *1/2.115.901
Subgoal *1/2.115.901'
Subgoal *1/2.115.900
Subgoal *1/2.115.900'
Subgoal *1/2.115.899
Subgoal *1/2.115.899'
Subgoal *1/2.115.898
Subgoal *1/2.115.898'
Subgoal *1/2.115.897
Subgoal *1/2.115.897'
Subgoal *1/2.115.896
Subgoal *1/2.115.896'
Subgoal *1/2.115.895
Subgoal *1/2.115.895'
Subgoal *1/2.115.894
Subgoal *1/2.115.894'
Subgoal *1/2.115.893
Subgoal *1/2.115.893'
Subgoal *1/2.115.892
Subgoal *1/2.115.892'
Subgoal *1/2.115.891
Subgoal *1/2.115.891'
Subgoal *1/2.115.890
Subgoal *1/2.115.890'
Subgoal *1/2.115.889
Subgoal *1/2.115.889'
Subgoal *1/2.115.888
Subgoal *1/2.115.888'
Subgoal *1/2.115.887
Subgoal *1/2.115.887'
Subgoal *1/2.115.886
Subgoal *1/2.115.886'
Subgoal *1/2.115.885
Subgoal *1/2.115.885'
Subgoal *1/2.115.884
Subgoal *1/2.115.884'
Subgoal *1/2.115.883
Subgoal *1/2.115.883'
Subgoal *1/2.115.882
Subgoal *1/2.115.882'
Subgoal *1/2.115.881
Subgoal *1/2.115.881'
Subgoal *1/2.115.880
Subgoal *1/2.115.880'
Subgoal *1/2.115.879
Subgoal *1/2.115.879'
Subgoal *1/2.115.878
Subgoal *1/2.115.878'
Subgoal *1/2.115.877
Subgoal *1/2.115.877'
Subgoal *1/2.115.876
Subgoal *1/2.115.876'
Subgoal *1/2.115.875
Subgoal *1/2.115.875'
Subgoal *1/2.115.874
Subgoal *1/2.115.874'
Subgoal *1/2.115.873
Subgoal *1/2.115.873'
Subgoal *1/2.115.872
Subgoal *1/2.115.872'
Subgoal *1/2.115.871
Subgoal *1/2.115.871'
Subgoal *1/2.115.870
Subgoal *1/2.115.870'
Subgoal *1/2.115.869
Subgoal *1/2.115.869'
Subgoal *1/2.115.868
Subgoal *1/2.115.868'
Subgoal *1/2.115.867
Subgoal *1/2.115.867'
Subgoal *1/2.115.866
Subgoal *1/2.115.866'
Subgoal *1/2.115.865
Subgoal *1/2.115.865'
Subgoal *1/2.115.864
Subgoal *1/2.115.864'
Subgoal *1/2.115.863
Subgoal *1/2.115.863'
Subgoal *1/2.115.862
Subgoal *1/2.115.862'
Subgoal *1/2.115.861
Subgoal *1/2.115.861'
Subgoal *1/2.115.860
Subgoal *1/2.115.860'
Subgoal *1/2.115.859
Subgoal *1/2.115.859'
Subgoal *1/2.115.858
Subgoal *1/2.115.858'
Subgoal *1/2.115.857
Subgoal *1/2.115.857'
Subgoal *1/2.115.856
Subgoal *1/2.115.856'
Subgoal *1/2.115.855
Subgoal *1/2.115.855'
Subgoal *1/2.115.854
Subgoal *1/2.115.854'
Subgoal *1/2.115.853
Subgoal *1/2.115.853'
Subgoal *1/2.115.852
Subgoal *1/2.115.852'
Subgoal *1/2.115.851
Subgoal *1/2.115.851'
Subgoal *1/2.115.850
Subgoal *1/2.115.850'
Subgoal *1/2.115.849
Subgoal *1/2.115.849'
Subgoal *1/2.115.848
Subgoal *1/2.115.848'
Subgoal *1/2.115.847
Subgoal *1/2.115.847'
Subgoal *1/2.115.846
Subgoal *1/2.115.846'
Subgoal *1/2.115.845
Subgoal *1/2.115.845'
Subgoal *1/2.115.844
Subgoal *1/2.115.844'
Subgoal *1/2.115.843
Subgoal *1/2.115.843'
Subgoal *1/2.115.842
Subgoal *1/2.115.842'
Subgoal *1/2.115.841
Subgoal *1/2.115.841'
Subgoal *1/2.115.840
Subgoal *1/2.115.840'
Subgoal *1/2.115.839
Subgoal *1/2.115.839'
Subgoal *1/2.115.838
Subgoal *1/2.115.838'
Subgoal *1/2.115.837
Subgoal *1/2.115.837'
Subgoal *1/2.115.836
Subgoal *1/2.115.836'
Subgoal *1/2.115.835
Subgoal *1/2.115.835'
Subgoal *1/2.115.834
Subgoal *1/2.115.834'
Subgoal *1/2.115.833
Subgoal *1/2.115.833'
Subgoal *1/2.115.832
Subgoal *1/2.115.832'
Subgoal *1/2.115.831
Subgoal *1/2.115.831'
Subgoal *1/2.115.830
Subgoal *1/2.115.830'
Subgoal *1/2.115.829
Subgoal *1/2.115.829'
Subgoal *1/2.115.828
Subgoal *1/2.115.828'
Subgoal *1/2.115.827
Subgoal *1/2.115.827'
Subgoal *1/2.115.826
Subgoal *1/2.115.826'
Subgoal *1/2.115.825
Subgoal *1/2.115.825'
Subgoal *1/2.115.824
Subgoal *1/2.115.824'
Subgoal *1/2.115.823
Subgoal *1/2.115.823'
Subgoal *1/2.115.822
Subgoal *1/2.115.822'
Subgoal *1/2.115.821
Subgoal *1/2.115.821'
Subgoal *1/2.115.820
Subgoal *1/2.115.820'
Subgoal *1/2.115.819
Subgoal *1/2.115.819'
Subgoal *1/2.115.818
Subgoal *1/2.115.818'
Subgoal *1/2.115.817
Subgoal *1/2.115.817'
Subgoal *1/2.115.816
Subgoal *1/2.115.816'
Subgoal *1/2.115.815
Subgoal *1/2.115.815'
Subgoal *1/2.115.814
Subgoal *1/2.115.814'
Subgoal *1/2.115.813
Subgoal *1/2.115.813'
Subgoal *1/2.115.812
Subgoal *1/2.115.812'
Subgoal *1/2.115.811
Subgoal *1/2.115.811'
Subgoal *1/2.115.810
Subgoal *1/2.115.810'
Subgoal *1/2.115.809
Subgoal *1/2.115.809'
Subgoal *1/2.115.808
Subgoal *1/2.115.808'
Subgoal *1/2.115.807
Subgoal *1/2.115.807'
Subgoal *1/2.115.806
Subgoal *1/2.115.806'
Subgoal *1/2.115.805
Subgoal *1/2.115.805'
Subgoal *1/2.115.804
Subgoal *1/2.115.804'
Subgoal *1/2.115.803
Subgoal *1/2.115.803'
Subgoal *1/2.115.802
Subgoal *1/2.115.802'
Subgoal *1/2.115.801
Subgoal *1/2.115.801'
Subgoal *1/2.115.800
Subgoal *1/2.115.800'
Subgoal *1/2.115.799
Subgoal *1/2.115.799'
Subgoal *1/2.115.798
Subgoal *1/2.115.798'
Subgoal *1/2.115.797
Subgoal *1/2.115.797'
Subgoal *1/2.115.796
Subgoal *1/2.115.796'
Subgoal *1/2.115.795
Subgoal *1/2.115.795'
Subgoal *1/2.115.794
Subgoal *1/2.115.794'
Subgoal *1/2.115.793
Subgoal *1/2.115.793'
Subgoal *1/2.115.792
Subgoal *1/2.115.792'
Subgoal *1/2.115.791
Subgoal *1/2.115.791'
Subgoal *1/2.115.790
Subgoal *1/2.115.790'
Subgoal *1/2.115.789
Subgoal *1/2.115.789'
Subgoal *1/2.115.788
Subgoal *1/2.115.788'
Subgoal *1/2.115.787
Subgoal *1/2.115.787'
Subgoal *1/2.115.786
Subgoal *1/2.115.786'
Subgoal *1/2.115.785
Subgoal *1/2.115.785'
Subgoal *1/2.115.784
Subgoal *1/2.115.784'
Subgoal *1/2.115.783
Subgoal *1/2.115.783'
Subgoal *1/2.115.782
Subgoal *1/2.115.782'
Subgoal *1/2.115.781
Subgoal *1/2.115.781'
Subgoal *1/2.115.780
Subgoal *1/2.115.780'
Subgoal *1/2.115.779
Subgoal *1/2.115.779'
Subgoal *1/2.115.778
Subgoal *1/2.115.778'
Subgoal *1/2.115.777
Subgoal *1/2.115.777'
Subgoal *1/2.115.776
Subgoal *1/2.115.776'
Subgoal *1/2.115.775
Subgoal *1/2.115.775'
Subgoal *1/2.115.774
Subgoal *1/2.115.774'
Subgoal *1/2.115.773
Subgoal *1/2.115.773'
Subgoal *1/2.115.772
Subgoal *1/2.115.772'
Subgoal *1/2.115.771
Subgoal *1/2.115.771'
Subgoal *1/2.115.770
Subgoal *1/2.115.770'
Subgoal *1/2.115.769
Subgoal *1/2.115.769'
Subgoal *1/2.115.768
Subgoal *1/2.115.768'
Subgoal *1/2.115.767
Subgoal *1/2.115.767'
Subgoal *1/2.115.766
Subgoal *1/2.115.766'
Subgoal *1/2.115.765
Subgoal *1/2.115.765'
Subgoal *1/2.115.764
Subgoal *1/2.115.764'
Subgoal *1/2.115.763
Subgoal *1/2.115.763'
Subgoal *1/2.115.762
Subgoal *1/2.115.762'
Subgoal *1/2.115.761
Subgoal *1/2.115.761'
Subgoal *1/2.115.760
Subgoal *1/2.115.760'
Subgoal *1/2.115.759
Subgoal *1/2.115.759'
Subgoal *1/2.115.758
Subgoal *1/2.115.758'
Subgoal *1/2.115.757
Subgoal *1/2.115.757'
Subgoal *1/2.115.756
Subgoal *1/2.115.756'
Subgoal *1/2.115.755
Subgoal *1/2.115.755'
Subgoal *1/2.115.754
Subgoal *1/2.115.754'
Subgoal *1/2.115.753
Subgoal *1/2.115.753'
Subgoal *1/2.115.752
Subgoal *1/2.115.752'
Subgoal *1/2.115.751
Subgoal *1/2.115.751'
Subgoal *1/2.115.750
Subgoal *1/2.115.750'
Subgoal *1/2.115.749
Subgoal *1/2.115.749'
Subgoal *1/2.115.748
Subgoal *1/2.115.748'
Subgoal *1/2.115.747
Subgoal *1/2.115.747'
Subgoal *1/2.115.746
Subgoal *1/2.115.746'
Subgoal *1/2.115.745
Subgoal *1/2.115.745'
Subgoal *1/2.115.744
Subgoal *1/2.115.744'
Subgoal *1/2.115.743
Subgoal *1/2.115.743'
Subgoal *1/2.115.742
Subgoal *1/2.115.742'
Subgoal *1/2.115.741
Subgoal *1/2.115.741'
Subgoal *1/2.115.740
Subgoal *1/2.115.740'
Subgoal *1/2.115.739
Subgoal *1/2.115.739'
Subgoal *1/2.115.738
Subgoal *1/2.115.738'
Subgoal *1/2.115.737
Subgoal *1/2.115.737'
Subgoal *1/2.115.736
Subgoal *1/2.115.736'
Subgoal *1/2.115.735
Subgoal *1/2.115.735'
Subgoal *1/2.115.734
Subgoal *1/2.115.734'
Subgoal *1/2.115.733
Subgoal *1/2.115.733'
Subgoal *1/2.115.732
Subgoal *1/2.115.732'
Subgoal *1/2.115.731
Subgoal *1/2.115.731'
Subgoal *1/2.115.730
Subgoal *1/2.115.730'
Subgoal *1/2.115.729
Subgoal *1/2.115.729'
Subgoal *1/2.115.728
Subgoal *1/2.115.728'
Subgoal *1/2.115.727
Subgoal *1/2.115.727'
Subgoal *1/2.115.726
Subgoal *1/2.115.726'
Subgoal *1/2.115.725
Subgoal *1/2.115.725'
Subgoal *1/2.115.724
Subgoal *1/2.115.724'
Subgoal *1/2.115.723
Subgoal *1/2.115.723'
Subgoal *1/2.115.722
Subgoal *1/2.115.722'
Subgoal *1/2.115.721
Subgoal *1/2.115.721'
Subgoal *1/2.115.720
Subgoal *1/2.115.720'
Subgoal *1/2.115.719
Subgoal *1/2.115.719'
Subgoal *1/2.115.718
Subgoal *1/2.115.718'
Subgoal *1/2.115.717
Subgoal *1/2.115.717'
Subgoal *1/2.115.716
Subgoal *1/2.115.716'
Subgoal *1/2.115.715
Subgoal *1/2.115.715'
Subgoal *1/2.115.714
Subgoal *1/2.115.714'
Subgoal *1/2.115.713
Subgoal *1/2.115.713'
Subgoal *1/2.115.712
Subgoal *1/2.115.712'
Subgoal *1/2.115.711
Subgoal *1/2.115.711'
Subgoal *1/2.115.710
Subgoal *1/2.115.710'
Subgoal *1/2.115.709
Subgoal *1/2.115.709'
Subgoal *1/2.115.708
Subgoal *1/2.115.708'
Subgoal *1/2.115.707
Subgoal *1/2.115.707'
Subgoal *1/2.115.706
Subgoal *1/2.115.706'
Subgoal *1/2.115.705
Subgoal *1/2.115.705'
Subgoal *1/2.115.704
Subgoal *1/2.115.704'
Subgoal *1/2.115.703
Subgoal *1/2.115.703'
Subgoal *1/2.115.702
Subgoal *1/2.115.702'
Subgoal *1/2.115.701
Subgoal *1/2.115.701'
Subgoal *1/2.115.700
Subgoal *1/2.115.700'
Subgoal *1/2.115.699
Subgoal *1/2.115.699'
Subgoal *1/2.115.698
Subgoal *1/2.115.698'
Subgoal *1/2.115.697
Subgoal *1/2.115.697'
Subgoal *1/2.115.696
Subgoal *1/2.115.696'
Subgoal *1/2.115.695
Subgoal *1/2.115.695'
Subgoal *1/2.115.694
Subgoal *1/2.115.694'
Subgoal *1/2.115.693
Subgoal *1/2.115.693'
Subgoal *1/2.115.692
Subgoal *1/2.115.692'
Subgoal *1/2.115.691
Subgoal *1/2.115.691'
Subgoal *1/2.115.690
Subgoal *1/2.115.690'
Subgoal *1/2.115.689
Subgoal *1/2.115.689'
Subgoal *1/2.115.688
Subgoal *1/2.115.688'
Subgoal *1/2.115.687
Subgoal *1/2.115.687'
Subgoal *1/2.115.686
Subgoal *1/2.115.686'
Subgoal *1/2.115.685
Subgoal *1/2.115.685'
Subgoal *1/2.115.684
Subgoal *1/2.115.684'
Subgoal *1/2.115.683
Subgoal *1/2.115.683'
Subgoal *1/2.115.682
Subgoal *1/2.115.682'
Subgoal *1/2.115.681
Subgoal *1/2.115.681'
Subgoal *1/2.115.680
Subgoal *1/2.115.680'
Subgoal *1/2.115.679
Subgoal *1/2.115.679'
Subgoal *1/2.115.678
Subgoal *1/2.115.678'
Subgoal *1/2.115.677
Subgoal *1/2.115.677'
Subgoal *1/2.115.676
Subgoal *1/2.115.676'
Subgoal *1/2.115.675
Subgoal *1/2.115.675'
Subgoal *1/2.115.674
Subgoal *1/2.115.674'
Subgoal *1/2.115.673
Subgoal *1/2.115.673'
Subgoal *1/2.115.672
Subgoal *1/2.115.672'
Subgoal *1/2.115.671
Subgoal *1/2.115.671'
Subgoal *1/2.115.670
Subgoal *1/2.115.670'
Subgoal *1/2.115.669
Subgoal *1/2.115.669'
Subgoal *1/2.115.668
Subgoal *1/2.115.668'
Subgoal *1/2.115.667
Subgoal *1/2.115.667'
Subgoal *1/2.115.666
Subgoal *1/2.115.666'
Subgoal *1/2.115.665
Subgoal *1/2.115.665'
Subgoal *1/2.115.664
Subgoal *1/2.115.664'
Subgoal *1/2.115.663
Subgoal *1/2.115.663'
Subgoal *1/2.115.662
Subgoal *1/2.115.662'
Subgoal *1/2.115.661
Subgoal *1/2.115.661'
Subgoal *1/2.115.660
Subgoal *1/2.115.660'
Subgoal *1/2.115.659
Subgoal *1/2.115.659'
Subgoal *1/2.115.658
Subgoal *1/2.115.658'
Subgoal *1/2.115.657
Subgoal *1/2.115.657'
Subgoal *1/2.115.656
Subgoal *1/2.115.656'
Subgoal *1/2.115.655
Subgoal *1/2.115.655'
Subgoal *1/2.115.654
Subgoal *1/2.115.654'
Subgoal *1/2.115.653
Subgoal *1/2.115.653'
Subgoal *1/2.115.652
Subgoal *1/2.115.652'
Subgoal *1/2.115.651
Subgoal *1/2.115.651'
Subgoal *1/2.115.650
Subgoal *1/2.115.650'
Subgoal *1/2.115.649
Subgoal *1/2.115.649'
Subgoal *1/2.115.648
Subgoal *1/2.115.648'
Subgoal *1/2.115.647
Subgoal *1/2.115.647'
Subgoal *1/2.115.646
Subgoal *1/2.115.646'
Subgoal *1/2.115.645
Subgoal *1/2.115.645'
Subgoal *1/2.115.644
Subgoal *1/2.115.644'
Subgoal *1/2.115.643
Subgoal *1/2.115.643'
Subgoal *1/2.115.642
Subgoal *1/2.115.642'
Subgoal *1/2.115.641
Subgoal *1/2.115.641'
Subgoal *1/2.115.640
Subgoal *1/2.115.640'
Subgoal *1/2.115.639
Subgoal *1/2.115.639'
Subgoal *1/2.115.638
Subgoal *1/2.115.638'
Subgoal *1/2.115.637
Subgoal *1/2.115.637'
Subgoal *1/2.115.636
Subgoal *1/2.115.636'
Subgoal *1/2.115.635
Subgoal *1/2.115.635'
Subgoal *1/2.115.634
Subgoal *1/2.115.634'
Subgoal *1/2.115.633
Subgoal *1/2.115.633'
Subgoal *1/2.115.632
Subgoal *1/2.115.632'
Subgoal *1/2.115.631
Subgoal *1/2.115.631'
Subgoal *1/2.115.630
Subgoal *1/2.115.630'
Subgoal *1/2.115.629
Subgoal *1/2.115.629'
Subgoal *1/2.115.628
Subgoal *1/2.115.628'
Subgoal *1/2.115.627
Subgoal *1/2.115.627'
Subgoal *1/2.115.626
Subgoal *1/2.115.626'
Subgoal *1/2.115.625
Subgoal *1/2.115.625'
Subgoal *1/2.115.624
Subgoal *1/2.115.624'
Subgoal *1/2.115.623
Subgoal *1/2.115.623'
Subgoal *1/2.115.622
Subgoal *1/2.115.622'
Subgoal *1/2.115.621
Subgoal *1/2.115.621'
Subgoal *1/2.115.620
Subgoal *1/2.115.620'
Subgoal *1/2.115.619
Subgoal *1/2.115.619'
Subgoal *1/2.115.618
Subgoal *1/2.115.618'
Subgoal *1/2.115.617
Subgoal *1/2.115.617'
Subgoal *1/2.115.616
Subgoal *1/2.115.616'
Subgoal *1/2.115.615
Subgoal *1/2.115.615'
Subgoal *1/2.115.614
Subgoal *1/2.115.614'
Subgoal *1/2.115.613
Subgoal *1/2.115.613'
Subgoal *1/2.115.612
Subgoal *1/2.115.612'
Subgoal *1/2.115.611
Subgoal *1/2.115.611'
Subgoal *1/2.115.610
Subgoal *1/2.115.610'
Subgoal *1/2.115.609
Subgoal *1/2.115.609'
Subgoal *1/2.115.608
Subgoal *1/2.115.608'
Subgoal *1/2.115.607
Subgoal *1/2.115.607'
Subgoal *1/2.115.606
Subgoal *1/2.115.606'
Subgoal *1/2.115.605
Subgoal *1/2.115.605'
Subgoal *1/2.115.604
Subgoal *1/2.115.604'
Subgoal *1/2.115.603
Subgoal *1/2.115.603'
Subgoal *1/2.115.602
Subgoal *1/2.115.602'
Subgoal *1/2.115.601
Subgoal *1/2.115.601'
Subgoal *1/2.115.600
Subgoal *1/2.115.600'
Subgoal *1/2.115.599
Subgoal *1/2.115.599'
Subgoal *1/2.115.598
Subgoal *1/2.115.598'
Subgoal *1/2.115.597
Subgoal *1/2.115.597'
Subgoal *1/2.115.596
Subgoal *1/2.115.596'
Subgoal *1/2.115.595
Subgoal *1/2.115.595'
Subgoal *1/2.115.594
Subgoal *1/2.115.594'
Subgoal *1/2.115.593
Subgoal *1/2.115.593'
Subgoal *1/2.115.592
Subgoal *1/2.115.592'
Subgoal *1/2.115.591
Subgoal *1/2.115.591'
Subgoal *1/2.115.590
Subgoal *1/2.115.590'
Subgoal *1/2.115.589
Subgoal *1/2.115.589'
Subgoal *1/2.115.588
Subgoal *1/2.115.588'
Subgoal *1/2.115.587
Subgoal *1/2.115.587'
Subgoal *1/2.115.586
Subgoal *1/2.115.586'
Subgoal *1/2.115.585
Subgoal *1/2.115.585'
Subgoal *1/2.115.584
Subgoal *1/2.115.584'
Subgoal *1/2.115.583
Subgoal *1/2.115.583'
Subgoal *1/2.115.582
Subgoal *1/2.115.582'
Subgoal *1/2.115.581
Subgoal *1/2.115.581'
Subgoal *1/2.115.580
Subgoal *1/2.115.580'
Subgoal *1/2.115.579
Subgoal *1/2.115.579'
Subgoal *1/2.115.578
Subgoal *1/2.115.578'
Subgoal *1/2.115.577
Subgoal *1/2.115.577'
Subgoal *1/2.115.576
Subgoal *1/2.115.576'
Subgoal *1/2.115.576''

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.115.576''
NIL

A goal of NIL, Subgoal *1/2.115.576'', has been generated!  Obviously,
the proof attempt has failed.

])

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST-BAD ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION HIDE)
        (:DEFINITION IFF)
        (:DEFINITION MOD)
        (:DEFINITION NFIX)
        (:DEFINITION NOT)
        (:DEFINITION NTH)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART CONSP)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART NONNEGATIVE-INTEGER-QUOTIENT)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NTH)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:FORWARD-CHAINING NUMERATOR-NONZERO-FORWARD)
        (:INDUCTION FIZZBUZZ)
        (:META CANCEL_PLUS-LESSP-CORRECT)
        (:REWRITE |(< 0 (len x))|)
        (:REWRITE <-*-0)
        (:REWRITE <-+-NEGATIVE-0-1)
        (:REWRITE <-0-+-NEGATIVE-1)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE CAR-CONS)
        (:REWRITE CDR-CONS)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NTH-OF-APPEND)
        (:REWRITE NTH-OF-NIL)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:REWRITE ZP-OPEN)
        (:TYPE-PRESCRIPTION LEN)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT)
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE EQUAL-CONSTANT-+)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))
Time:  0.59 seconds (prove: 0.55, print: 0.04, other: 0.00)
Prover steps counted:  172603

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal
<GOAL>

*** Key checkpoint under a top-level induction
    before generating a goal of NIL (see :DOC nil-goal): ***

Subgoal *1/2.115.576''
NIL

ACL2 Error in ( DEFTHM FIZZBUZZ-LIST-BAD ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(defthm fizzbuzz-15
    (implies (equal n 20)
	     (equal (nth 14 (fizzbuzz n)) (fizzbuzz1 15))))
Goal'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-15 ...)
Rules: ((:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ1)
        (:EXECUTABLE-COUNTERPART NTH))
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
Prover steps counted:  33
 FIZZBUZZ-15
ACL2 !>:ubt! 1
           0:x(EXIT-BOOT-STRAP-MODE)
ACL2 !>(local (include-book "arithmetic/top-with-meta" :dir :system)
       (include-book "std/lists/top" :dir :system))

(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))


ACL2 Error in macro expansion:  Wrong number of args in macro expansion
of 
(LOCAL (INCLUDE-BOOK "arithmetic/top-with-meta"
                     :DIR :SYSTEM)
       (INCLUDE-BOOK "std/lists/top"
                     :DIR :SYSTEM)).


ACL2 !>
Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ1
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  3325
 FIZZBUZZ1-MOD3
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  4096
 FIZZBUZZ1-MOD5
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (63 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 63

([ A key checkpoint:

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

*1 (Subgoal 63) is pushed for proof by induction.

])
Subgoal 62

([ A key checkpoint:

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 62 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.02 seconds (prove: 0.02, print: 0.00, other: 0.00)
Prover steps counted:  3001

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>
ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-N ...):  A :REWRITE rule
generated from FIZZBUZZ1-N will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (7 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 7
Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-N ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  5058
 FIZZBUZZ1-N
ACL2 !>(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))


The event ( DEFTHM FIZZBUZZ1-MOD5 ...) is redundant.  See :DOC redundant-
events.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: NIL
Time:  0.01 seconds (prove: 0.00, print: 0.00, other: 0.01)
 :REDUNDANT
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (63 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 63

([ A key checkpoint:

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

*1 (Subgoal 63) is pushed for proof by induction.

])
Subgoal 62

([ A key checkpoint:

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

Normally we would attempt to prove Subgoal 62 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

No induction schemes are suggested by *1.  Consequently, the proof
attempt has failed.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))
Warnings:  Non-rec
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  3409

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoints before reverting to proof by induction: ***

Subgoal 63
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N))))))))
         (EQUAL N "fizzbuzz"))

Subgoal 62
(IMPLIES (AND (EQUAL (DENOMINATOR (* 1/15 N)) 1)
              (EQUAL 0
                     (+ N (- (* 15 (NUMERATOR (* 1/15 N))))))
              (EQUAL (DENOMINATOR (* 1/3 N)) 1)
              (NOT (EQUAL 0
                          (+ N (- (* 3 (NUMERATOR (* 1/3 N)))))))
              (EQUAL (DENOMINATOR (* 1/5 N)) 1))
         (NOT (EQUAL 0
                     (+ N (- (* 5 (NUMERATOR (* 1/5 N))))))))

ACL2 Error in ( DEFTHM FIZZBUZZ1-MOD15 ...):  See :DOC failure.

******** FAILED ********
ACL2 !>:ubt! 1
           0:x(EXIT-BOOT-STRAP-MODE)
ACL2 !>(include-book "arithmetic/top-with-meta" :dir :system)
(include-book "std/lists/top" :dir :system)

(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

Summary
Form:  ( INCLUDE-BOOK "arithmetic/top-with-meta" ...)
Rules: NIL
Time:  0.14 seconds (prove: 0.00, print: 0.00, other: 0.14)
 "/usr/share/acl2-8.2dfsg/books/arithmetic/top-with-meta.lisp"
ACL2 !>Note (from clause-processors/equality): disabling DISJOIN, DISJOIN2,
CONJOIN and CONJOIN2.


Summary
Form:  ( INCLUDE-BOOK "std/lists/top" ...)
Rules: NIL
Time:  0.53 seconds (prove: 0.00, print: 0.00, other: 0.53)
 "/usr/share/acl2-8.2dfsg/books/std/lists/top.lisp"
ACL2 !>
Since FIZZBUZZ1 is non-recursive, its admission is trivial.  We observe
that the type of FIZZBUZZ1 is described by the theorem 
(OR (STRINGP (FIZZBUZZ1 N)) (EQUAL (FIZZBUZZ1 N) N)).  

Summary
Form:  ( DEFUN FIZZBUZZ1 ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ1
ACL2 !>(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD3 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD3 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 6
Subgoal 5
Subgoal 5'
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD3 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.03, print: 0.00, other: 0.00)
Prover steps counted:  4050
 FIZZBUZZ1-MOD3
ACL2 !>(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD5 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD5 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (6 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 6
Subgoal 5
Subgoal 5'
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD5 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.03, print: 0.00, other: 0.00)
Prover steps counted:  4881
 FIZZBUZZ1-MOD5
ACL2 !>(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-MOD15 ...):  A :REWRITE
rule generated from FIZZBUZZ1-MOD15 will be triggered only by terms
containing the function symbol FIZZBUZZ1, which has a non-recursive
definition.  Unless this definition is disabled, this rule is unlikely
ever to be used.


Splitter note (see :DOC splitter) for Goal (20 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 20
Subgoal 19
Subgoal 18
Subgoal 17
Subgoal 16
Subgoal 16'
Subgoal 16''
Subgoal 15
Subgoal 15'
Subgoal 15''
Subgoal 14
Subgoal 14'
Subgoal 13
Subgoal 13'
Subgoal 12
Subgoal 12'
Subgoal 12''
Subgoal 11
Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 6'
Subgoal 6''
Subgoal 5
Subgoal 5'
Subgoal 5''
Subgoal 4
Subgoal 4'
Subgoal 4''
Subgoal 3
Subgoal 3'
Subgoal 3''
Subgoal 2
Subgoal 2'
Subgoal 2''
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-MOD15 ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION HIDE)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-*-1)
        (:REWRITE DEFAULT-+-1)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.13 seconds (prove: 0.13, print: 0.00, other: 0.00)
Prover steps counted:  17412
 FIZZBUZZ1-MOD15
ACL2 !>(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ1-N ...):  A :REWRITE rule
generated from FIZZBUZZ1-N will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (10 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))

Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 6'
Subgoal 5
Subgoal 4
Subgoal 4'
Subgoal 3
Subgoal 3'
Subgoal 2
Subgoal 2'
Subgoal 1
Subgoal 1'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ1-N ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE COMMUTATIVITY-2-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DEFAULT-DENOMINATOR)
        (:REWRITE DEFAULT-NUMERATOR)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FIZZBUZZ1-MOD5)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-RIGHT)
        (:REWRITE FUNCTIONAL-SELF-INVERSION-OF-MINUS)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NOT)
             (:REWRITE EQUAL-DENOMINATOR-1))
Warnings:  Non-rec
Time:  0.08 seconds (prove: 0.08, print: 0.00, other: 0.00)
Prover steps counted:  9708
 FIZZBUZZ1-N
ACL2 !>(defun fizzbuzz (n)
  (if (integerp n)
      (if (<= n 0) NIL
	  (append (fizzbuzz (- n 1)) (list (fizzbuzz1 n))))
      NIL))

The admission of FIZZBUZZ is trivial, using the relation O< (which
is known to be well-founded on the domain recognized by O-P) and the
measure (ACL2-COUNT N).  We observe that the type of FIZZBUZZ is described
by the theorem (TRUE-LISTP (FIZZBUZZ N)).  We used primitive type reasoning
and the :type-prescription rules BINARY-APPEND and TRUE-LISTP-APPEND.

Summary
Form:  ( DEFUN FIZZBUZZ ...)
Rules: ((:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:TYPE-PRESCRIPTION BINARY-APPEND)
        (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 FIZZBUZZ
ACL2 !>(defthm fizzbuzz-length
    (implies (and (integerp n) (>= n 0))
	     (equal (length (fizzbuzz n)) n)))


ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LENGTH ...):  A :REWRITE
rule generated from FIZZBUZZ-LENGTH will be triggered only by terms
containing the function symbol LENGTH, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.

Goal'

([ A key checkpoint:

Goal'
(IMPLIES (AND (INTEGERP N) (<= 0 N))
         (EQUAL (LEN (FIZZBUZZ N)) N))

*1 (Goal') is pushed for proof by induction.

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P N))
     (IMPLIES (AND (INTEGERP N) (< 0 N) (:P (+ -1 N)))
              (:P N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
four nontautological subgoals.
Subgoal *1/4
Subgoal *1/3
Subgoal *1/2
Subgoal *1/1

*1 is COMPLETED!
Thus key checkpoint Goal' is COMPLETED!

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-LENGTH ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION LENGTH)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART LEN)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE LEN-OF-APPEND)
        (:REWRITE LEN-OF-CONS)
        (:REWRITE MINUS-CANCELLATION-ON-LEFT)
        (:TYPE-PRESCRIPTION FIZZBUZZ)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Warnings:  Non-rec
Time:  0.05 seconds (prove: 0.05, print: 0.00, other: 0.00)
Prover steps counted:  7650
 FIZZBUZZ-LENGTH
ACL2 !>(defthm fizzbuzz-15
    (implies (equal n 20)
	     (equal (nth 14 (fizzbuzz n)) (fizzbuzz1 15))))
Goal'

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-15 ...)
Rules: ((:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ1)
        (:EXECUTABLE-COUNTERPART NTH))
Time:  0.01 seconds (prove: 0.01, print: 0.00, other: 0.00)
Prover steps counted:  33
 FIZZBUZZ-15
ACL2 !>(fizzbuzz 15)
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz")
ACL2 !>(append (fizzbuzz 15) (fizzbuzz1 16))
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz" . 16)
ACL2 !>(append (fizzbuzz 15) (list (fizzbuzz1 16)))
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz" 16)
ACL2 !>(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (fizzbuzz1 (+ n 1))) (list (fizzbuzz (+ n 1))))))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LIST ...):  A :REWRITE
rule generated from FIZZBUZZ-LIST will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (36 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal 36

([ A key checkpoint:

Subgoal 36
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "fizzbuzz")
        (LIST (APPEND (FIZZBUZZ N) '("fizzbuzz")))))

*1 (Subgoal 36) is pushed for proof by induction.

])
Subgoal 35

([ A key checkpoint:

Subgoal 35
(IMPLIES
 (AND
  (INTEGERP N)
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ N) "buzz")
        (LIST (APPEND (FIZZBUZZ N) '("buzz")))))

Normally we would attempt to prove Subgoal 35 by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ N).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P L N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP N)) (:P L N))
     (IMPLIES (AND (INTEGERP N)
                   (< 0 N)
                   (:P L (+ -1 N)))
              (:P L N))
     (IMPLIES (AND (INTEGERP N) (<= N 0))
              (:P L N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
two nontautological subgoals.
Subgoal *1/2
Subgoal *1/2'

Splitter note (see :DOC splitter) for Subgoal *1/2' (96 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal *1/2.96
Subgoal *1/2.96'
Subgoal *1/2.96''
Subgoal *1/2.96'''
Subgoal *1/2.96'4'
Subgoal *1/2.96'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.96'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N))
              (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                                  '("fizzbuzz"))
                          (FIZZBUZZ (+ -1 N)))))
         (< N 0))

*1.1 (Subgoal *1/2.96'5') is pushed for proof by induction.

])
Subgoal *1/2.95
Subgoal *1/2.95'
Subgoal *1/2.95''
Subgoal *1/2.95'''
Subgoal *1/2.95'4'
Subgoal *1/2.95'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.95'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N))
              (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz" . "fizzbuzz"))
                     (LIST (APPEND (FIZZBUZZ (+ -1 N))
                                   '("fizzbuzz")))))
         (< N 0))

*1.2 (Subgoal *1/2.95'5') is pushed for proof by induction.

])
Subgoal *1/2.94
Subgoal *1/2.93
Subgoal *1/2.92
Subgoal *1/2.91
Subgoal *1/2.90
Subgoal *1/2.89
Subgoal *1/2.88
Subgoal *1/2.87
Subgoal *1/2.86
Subgoal *1/2.85
Subgoal *1/2.84
Subgoal *1/2.83
Subgoal *1/2.82
Subgoal *1/2.82'
Subgoal *1/2.82''
Subgoal *1/2.82'''

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.82'
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (INTEGERP (* 1/3 N))
          (NOT (INTEGERP (* 1/5 N)))
          (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N)))))
          (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                              '("fizzbuzz"))
                      (FIZZBUZZ (+ -1 N)))))
     (< N 0))

*1.3 (Subgoal *1/2.82''') is pushed for proof by induction.

])
Subgoal *1/2.81
Subgoal *1/2.80
Subgoal *1/2.80'
Subgoal *1/2.80''
Subgoal *1/2.80'''
Subgoal *1/2.80'4'
Subgoal *1/2.80'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.80'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (INTEGERP (* 1/3 N))
     (NOT (INTEGERP (* 1/5 N)))
     (NOT (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                 (FIZZBUZZ (+ -1 N)))))
 (< N 0))

*1.4 (Subgoal *1/2.80'5') is pushed for proof by induction.

])
Subgoal *1/2.79
Subgoal *1/2.79'
Subgoal *1/2.79''
Subgoal *1/2.79'''
Subgoal *1/2.79'4'
Subgoal *1/2.79'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.79'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (INTEGERP (* 1/3 N))
     (NOT (INTEGERP (* 1/5 N)))
     (NOT (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                    '("fizz" . "fizz"))
            (LIST (APPEND (FIZZBUZZ (+ -1 N))
                          '("fizz")))))
 (< N 0))

*1.5 (Subgoal *1/2.79'5') is pushed for proof by induction.

])
Subgoal *1/2.78
Subgoal *1/2.77
Subgoal *1/2.76
Subgoal *1/2.75
Subgoal *1/2.74
Subgoal *1/2.73
Subgoal *1/2.72
Subgoal *1/2.71
Subgoal *1/2.70
Subgoal *1/2.69
Subgoal *1/2.68
Subgoal *1/2.67
Subgoal *1/2.66
Subgoal *1/2.65
Subgoal *1/2.64
Subgoal *1/2.63
Subgoal *1/2.62
Subgoal *1/2.61
Subgoal *1/2.60
Subgoal *1/2.60'
Subgoal *1/2.60''
Subgoal *1/2.60'''

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.60'
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (NOT (INTEGERP (* 1/3 N)))
          (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N)))))
          (INTEGERP (* 1/5 N))
          (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                              '("fizzbuzz"))
                      (FIZZBUZZ (+ -1 N)))))
     (< N 0))

*1.6 (Subgoal *1/2.60''') is pushed for proof by induction.

])
Subgoal *1/2.59
Subgoal *1/2.58
Subgoal *1/2.57
Subgoal *1/2.56
Subgoal *1/2.56'
Subgoal *1/2.56''
Subgoal *1/2.56'''
Subgoal *1/2.56'4'
Subgoal *1/2.56'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.56'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (INTEGERP (* 1/5 N))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("buzz"))
                 (FIZZBUZZ (+ -1 N)))))
 (< N 0))

*1.7 (Subgoal *1/2.56'5') is pushed for proof by induction.

])
Subgoal *1/2.55
Subgoal *1/2.55'
Subgoal *1/2.55''
Subgoal *1/2.55'''
Subgoal *1/2.55'4'
Subgoal *1/2.55'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.55'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (INTEGERP (* 1/5 N))
     (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                    '("buzz" . "buzz"))
            (LIST (APPEND (FIZZBUZZ (+ -1 N))
                          '("buzz")))))
 (< N 0))

*1.8 (Subgoal *1/2.55'5') is pushed for proof by induction.

])
Subgoal *1/2.54
Subgoal *1/2.53
Subgoal *1/2.52
Subgoal *1/2.51
Subgoal *1/2.50
Subgoal *1/2.49
Subgoal *1/2.48
Subgoal *1/2.47
Subgoal *1/2.46
Subgoal *1/2.45
Subgoal *1/2.44
Subgoal *1/2.43
Subgoal *1/2.42
Subgoal *1/2.41
Subgoal *1/2.40
Subgoal *1/2.39
Subgoal *1/2.38
Subgoal *1/2.38'
Subgoal *1/2.38''
Subgoal *1/2.38'''
Subgoal *1/2.38'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.38
(IMPLIES
     (AND (INTEGERP N)
          (< 0 N)
          (NOT (INTEGERP (* 1/3 N)))
          (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N)))))
          (NOT (INTEGERP (* 1/5 N)))
          (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N)))))
          (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                              '("fizzbuzz"))
                      (FIZZBUZZ (+ -1 N)))))
     (< N 0))

*1.9 (Subgoal *1/2.38'4') is pushed for proof by induction.

])
Subgoal *1/2.37
Subgoal *1/2.36
Subgoal *1/2.36'
Subgoal *1/2.36''
Subgoal *1/2.36'''
Subgoal *1/2.36'4'
Subgoal *1/2.36'5'
Subgoal *1/2.36'6'
Subgoal *1/2.36'7'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.36
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (EQUAL N
            (* 3
               (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                             (DENOMINATOR (* 1/3 N)))))
     (NOT (INTEGERP (* 1/5 N)))
     (NOT (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("fizz"))
                 (FIZZBUZZ (+ -1 N)))))
 (< N 0))

*1.10 (Subgoal *1/2.36'7') is pushed for proof by induction.

])
Subgoal *1/2.35
Subgoal *1/2.34
Subgoal *1/2.34'
Subgoal *1/2.34''
Subgoal *1/2.34'''
Subgoal *1/2.34'4'
Subgoal *1/2.34'5'
Subgoal *1/2.34'6'
Subgoal *1/2.34'7'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.34
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (NOT (INTEGERP (* 1/5 N)))
     (EQUAL N
            (* 5
               (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                             (DENOMINATOR (* 1/5 N)))))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) '("buzz"))
                 (FIZZBUZZ (+ -1 N)))))
 (< N 0))

*1.11 (Subgoal *1/2.34'7') is pushed for proof by induction.

])
Subgoal *1/2.33
Subgoal *1/2.32
Subgoal *1/2.32'
Subgoal *1/2.32''
Subgoal *1/2.32'''
Subgoal *1/2.32'4'
Subgoal *1/2.32'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.32'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (NOT (INTEGERP (* 1/5 N)))
     (NOT (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
                 (FIZZBUZZ (+ -1 N))))
     (<= 0 N)
     (INTEGERP (+ 1/3 (* 1/3 N)))
     (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizzbuzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizzbuzz"))))))

*1.12 (Subgoal *1/2.32'5') is pushed for proof by induction.

])
Subgoal *1/2.31
Subgoal *1/2.30
Subgoal *1/2.29
Subgoal *1/2.28
Subgoal *1/2.28'
Subgoal *1/2.28''
Subgoal *1/2.28'''
Subgoal *1/2.28'4'
Subgoal *1/2.28'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.28'
(IMPLIES
 (AND
     (INTEGERP N)
     (< 0 N)
     (NOT (INTEGERP (* 1/3 N)))
     (NOT (EQUAL N
                 (* 3
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                                  (DENOMINATOR (* 1/3 N))))))
     (NOT (INTEGERP (* 1/5 N)))
     (NOT (EQUAL N
                 (* 5
                    (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                  (DENOMINATOR (* 1/5 N))))))
     (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
                 (FIZZBUZZ (+ -1 N))))
     (<= 0 N)
     (INTEGERP (+ 1/3 (* 1/3 N)))
     (NOT (INTEGERP (+ 1/5 (* 1/5 N)))))
 (NOT
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1)))

*1.13 (Subgoal *1/2.28'5') is pushed for proof by induction.

])
Subgoal *1/2.27
Subgoal *1/2.26
Subgoal *1/2.26'
Subgoal *1/2.26''
Subgoal *1/2.26'''
Subgoal *1/2.26'4'
Subgoal *1/2.26'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.26'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (INTEGERP (+ 1/3 (* 1/3 N)))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizz"))))))

*1.14 (Subgoal *1/2.26'5') is pushed for proof by induction.

])
Subgoal *1/2.25
Subgoal *1/2.24
Subgoal *1/2.24'
Subgoal *1/2.24''
Subgoal *1/2.24'''
Subgoal *1/2.24'4'
Subgoal *1/2.24'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.24'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1))
 (NOT (INTEGERP (+ 1/5 (* 1/5 N)))))

*1.15 (Subgoal *1/2.24'5') is pushed for proof by induction.

])
Subgoal *1/2.23
Subgoal *1/2.23'
Subgoal *1/2.23''
Subgoal *1/2.23'''
Subgoal *1/2.23'4'
Subgoal *1/2.23'5'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.23'
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (INTEGERP (+ 1/5 (* 1/5 N))))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "buzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("buzz"))))))

*1.16 (Subgoal *1/2.23'5') is pushed for proof by induction.

])
Subgoal *1/2.22
Subgoal *1/2.21
Subgoal *1/2.20
Subgoal *1/2.20'
Subgoal *1/2.20''
Subgoal *1/2.20'''
Subgoal *1/2.20'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.20
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizzbuzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizzbuzz"))))))

*1.17 (Subgoal *1/2.20'4') is pushed for proof by induction.

])
Subgoal *1/2.19
Subgoal *1/2.19'
Subgoal *1/2.19''
Subgoal *1/2.19'''
Subgoal *1/2.19'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.19
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "buzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("buzz"))))))

*1.18 (Subgoal *1/2.19'4') is pushed for proof by induction.

])
Subgoal *1/2.18
Subgoal *1/2.18'
Subgoal *1/2.18''
Subgoal *1/2.18'''
Subgoal *1/2.18'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.18
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizz"))))))

*1.19 (Subgoal *1/2.18'4') is pushed for proof by induction.

])
Subgoal *1/2.17
Subgoal *1/2.17'
Subgoal *1/2.17''
Subgoal *1/2.17'''
Subgoal *1/2.17'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.17
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))
              (FIZZBUZZ (+ -1 N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N (+ 1 N)))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (LIST N (+ 1 N))))))

*1.20 (Subgoal *1/2.17'4') is pushed for proof by induction.

])
Subgoal *1/2.16
Subgoal *1/2.15
Subgoal *1/2.14
Subgoal *1/2.13
Subgoal *1/2.12
Subgoal *1/2.11
Subgoal *1/2.10
Subgoal *1/2.9
Subgoal *1/2.8
Subgoal *1/2.7
Subgoal *1/2.6
Subgoal *1/2.5
Subgoal *1/2.4
Subgoal *1/2.4'
Subgoal *1/2.4''
Subgoal *1/2.4'''
Subgoal *1/2.4'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.4
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (CONS N N))
         (LIST (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizzbuzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizzbuzz"))))))

*1.21 (Subgoal *1/2.4'4') is pushed for proof by induction.

])
Subgoal *1/2.3
Subgoal *1/2.3'
Subgoal *1/2.3''
Subgoal *1/2.3'''
Subgoal *1/2.3'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.3
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (CONS N N))
         (LIST (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (EQUAL
   (+ N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
   -1))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "buzz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("buzz"))))))

*1.22 (Subgoal *1/2.3'4') is pushed for proof by induction.

])
Subgoal *1/2.2
Subgoal *1/2.2'
Subgoal *1/2.2''
Subgoal *1/2.2'''
Subgoal *1/2.2'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.2
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (CONS N N))
         (LIST (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (EQUAL
   (+ N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
   -1)
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N "fizz"))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (CONS N '("fizz"))))))

*1.23 (Subgoal *1/2.2'4') is pushed for proof by induction.

])
Subgoal *1/2.1
Subgoal *1/2.1'
Subgoal *1/2.1''
Subgoal *1/2.1'''
Subgoal *1/2.1'4'

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.1
(IMPLIES
 (AND
  (INTEGERP N)
  (< 0 N)
  (NOT (INTEGERP (* 1/3 N)))
  (NOT (EQUAL N
              (* 3
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/3 N))
                                               (DENOMINATOR (* 1/3 N))))))
  (NOT (INTEGERP (* 1/5 N)))
  (NOT (EQUAL N
              (* 5
                 (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                               (DENOMINATOR (* 1/5 N))))))
  (EQUAL (APPEND (FIZZBUZZ (+ -1 N)) (CONS N N))
         (LIST (APPEND (FIZZBUZZ (+ -1 N)) (LIST N))))
  (<= 0 N)
  (NOT (INTEGERP (+ 1/3 (* 1/3 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 3
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/3 (* 1/3 N)))
                                          (DENOMINATOR (+ 1/3 (* 1/3 N)))))))
    -1))
  (NOT (INTEGERP (+ 1/5 (* 1/5 N))))
  (NOT
   (EQUAL
    (+
      N
      (- (* 5
            (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (+ 1/5 (* 1/5 N)))
                                          (DENOMINATOR (+ 1/5 (* 1/5 N)))))))
    -1)))
 (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                (CONS N (+ 1 N)))
        (LIST (APPEND (FIZZBUZZ (+ -1 N))
                      (LIST N (+ 1 N))))))

*1.24 (Subgoal *1/2.1'4') is pushed for proof by induction.

])
Subgoal *1/1
Subgoal *1/1'
Subgoal *1/1''

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/1''
NIL

A goal of NIL, Subgoal *1/1'', has been generated!  Obviously, the
proof attempt has failed.

])

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART BINARY-APPEND)
        (:EXECUTABLE-COUNTERPART CONS)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ1)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:FORWARD-CHAINING NUMERATOR-NONZERO-FORWARD)
        (:INDUCTION FIZZBUZZ)
        (:REWRITE <-+-NEGATIVE-0-1)
        (:REWRITE APPEND-OF-CONS)
        (:REWRITE APPEND-UNDER-IFF)
        (:REWRITE APPEND-WHEN-NOT-CONSP)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE ASSOCIATIVITY-OF-APPEND)
        (:REWRITE CDR-CONS)
        (:REWRITE CDR-OF-APPEND-WHEN-CONSP)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE CONSP-UNDER-IFF-WHEN-TRUE-LISTP)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FIZZBUZZ1-MOD5)
        (:REWRITE FIZZBUZZ1-N)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE MINUS-CANCELLATION-ON-RIGHT)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION BINARY-APPEND)
        (:TYPE-PRESCRIPTION FIZZBUZZ)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT)
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE EQUAL-CONSTANT-+))
Warnings:  Non-rec
Time:  4.67 seconds (prove: 4.62, print: 0.04, other: 0.01)
Prover steps counted:  860819

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal
<GOAL>

*** Key checkpoints under a top-level induction
    before generating a goal of NIL (see :DOC nil-goal): ***

Subgoal *1/1''
NIL

Subgoal *1/2.96'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N))
              (NOT (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                                  '("fizzbuzz"))
                          (FIZZBUZZ (+ -1 N)))))
         (< N 0))

Subgoal *1/2.95'
(IMPLIES (AND (INTEGERP N)
              (< 0 N)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N))
              (EQUAL (APPEND (FIZZBUZZ (+ -1 N))
                             '("fizzbuzz" . "fizzbuzz"))
                     (LIST (APPEND (FIZZBUZZ (+ -1 N))
                                   '("fizzbuzz")))))
         (< N 0))

Note: There are 22 additional key checkpoints under a top-level induction.
See :DOC set-checkpoint-summary-limit to change the number printed.

ACL2 Error in ( DEFTHM FIZZBUZZ-LIST ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(append (fizzbuzz 15) (list (fizzbuzz1 16)))
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz" 16)
ACL2 !>(fizzbuzz 16)
(1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz"
   "buzz" 11 "fizz" 13 14 "fizzbuzz" 16)
ACL2 !>(equal (append (fizzbuzz 15) (list (fizzbuzz1 16))) (fizzbuzz 16))
T
ACL2 !>(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (list (fizzbuzz1 (+ n 1)))) (fizzbuzz (+ n 1)))))

ACL2 Warning [Non-rec] in ( DEFTHM FIZZBUZZ-LIST ...):  A :REWRITE
rule generated from FIZZBUZZ-LIST will be triggered only by terms containing
the function symbol FIZZBUZZ1, which has a non-recursive definition.
Unless this definition is disabled, this rule is unlikely ever to be
used.


Splitter note (see :DOC splitter) for Goal (18 subgoals).
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE CONS-EQUAL)
             (:REWRITE EQUAL-CONSTANT-+))

Subgoal 18
Subgoal 17
Subgoal 16
Subgoal 15
Subgoal 14
Subgoal 13
Subgoal 12
Subgoal 11
Subgoal 10
Subgoal 9
Subgoal 8
Subgoal 7
Subgoal 6
Subgoal 5
Subgoal 4
Subgoal 3
Subgoal 2
Subgoal 1

Q.E.D.

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION MOD)
        (:DEFINITION NOT)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIX)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART TAU-SYSTEM)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE CONS-EQUAL)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE EQUAL-WHEN-APPEND-SAME)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE MINUS-CANCELLATION-ON-RIGHT)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-0)
        (:REWRITE UNICITY-OF-1)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:REWRITE CONS-EQUAL)
             (:REWRITE EQUAL-CONSTANT-+))
Warnings:  Non-rec
Time:  0.03 seconds (prove: 0.03, print: 0.00, other: 0.00)
Prover steps counted:  6987
 FIZZBUZZ-LIST
ACL2 !>(defthm fizzbuzz-list-bad
    (implies (and (integerp n) (>= n 0)
		  (integerp m) (< n m))
	     (equal (nth (- n 1) (fizzbuzz m))
		    (fizzbuzz1 n))))

Splitter note (see :DOC splitter) for Goal (16 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR))

Subgoal 16
Subgoal 16'

([ A key checkpoint:

Subgoal 16'
(IMPLIES (AND (INTEGERP N)
              (<= 0 N)
              (INTEGERP M)
              (< N M)
              (INTEGERP (* 1/3 N))
              (INTEGERP (* 1/5 N)))
         (EQUAL (NTH (+ -1 N) (FIZZBUZZ M))
                "fizzbuzz"))

*1 (Subgoal 16') is pushed for proof by induction.

])
Subgoal 15
Subgoal 14
Subgoal 13
Subgoal 12
Subgoal 12'
Subgoal 12''
Subgoal 11
Subgoal 10
Subgoal 10'

([ A key checkpoint:

Subgoal 10'
(IMPLIES
 (AND
    (INTEGERP N)
    (<= 0 N)
    (INTEGERP M)
    (< N M)
    (INTEGERP (* 1/3 N))
    (NOT (INTEGERP (* 1/5 N)))
    (NOT (EQUAL N
                (* 5
                   (NONNEGATIVE-INTEGER-QUOTIENT (NUMERATOR (* 1/5 N))
                                                 (DENOMINATOR (* 1/5 N)))))))
 (EQUAL (NTH (+ -1 N) (FIZZBUZZ M))
        "fizz"))

Normally we would attempt to prove Subgoal 10' by induction.  However,
we prefer in this instance to focus on the original input conjecture
rather than this simplified special case.  We therefore abandon our
previous work on this conjecture and reassign the name *1 to the original
conjecture.  (See :DOC otf-flg.)

])

Perhaps we can prove *1 by induction.  One induction scheme is suggested
by this conjecture.  

We will induct according to a scheme suggested by (FIZZBUZZ M).  This
suggestion was produced using the :induction rule FIZZBUZZ.  If we
let (:P M N) denote *1 above then the induction scheme we'll use is
(AND (IMPLIES (NOT (INTEGERP M)) (:P M N))
     (IMPLIES (AND (INTEGERP M)
                   (< 0 M)
                   (:P (+ -1 M) N))
              (:P M N))
     (IMPLIES (AND (INTEGERP M) (<= M 0))
              (:P M N))).
This induction is justified by the same argument used to admit FIZZBUZZ.
When applied to the goal at hand the above induction scheme produces
two nontautological subgoals.
Subgoal *1/2
Subgoal *1/2'

Splitter note (see :DOC splitter) for Subgoal *1/2' (115 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))

Subgoal *1/2.115
Subgoal *1/2.115'
Subgoal *1/2.115''

Splitter note (see :DOC splitter) for Subgoal *1/2.115'' (1080 subgoals).
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE EQUAL-CONSTANT-+)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))

Subgoal *1/2.115.1080
Subgoal *1/2.115.1080'
Subgoal *1/2.115.1079
Subgoal *1/2.115.1079'
Subgoal *1/2.115.1078
Subgoal *1/2.115.1078'
Subgoal *1/2.115.1077
Subgoal *1/2.115.1077'
Subgoal *1/2.115.1076
Subgoal *1/2.115.1076'
Subgoal *1/2.115.1075
Subgoal *1/2.115.1075'
Subgoal *1/2.115.1074
Subgoal *1/2.115.1074'
Subgoal *1/2.115.1073
Subgoal *1/2.115.1073'
Subgoal *1/2.115.1072
Subgoal *1/2.115.1072'
Subgoal *1/2.115.1071
Subgoal *1/2.115.1071'
Subgoal *1/2.115.1070
Subgoal *1/2.115.1070'
Subgoal *1/2.115.1069
Subgoal *1/2.115.1069'
Subgoal *1/2.115.1068
Subgoal *1/2.115.1068'
Subgoal *1/2.115.1067
Subgoal *1/2.115.1067'
Subgoal *1/2.115.1066
Subgoal *1/2.115.1066'
Subgoal *1/2.115.1065
Subgoal *1/2.115.1065'
Subgoal *1/2.115.1064
Subgoal *1/2.115.1064'
Subgoal *1/2.115.1063
Subgoal *1/2.115.1063'
Subgoal *1/2.115.1062
Subgoal *1/2.115.1062'
Subgoal *1/2.115.1061
Subgoal *1/2.115.1061'
Subgoal *1/2.115.1060
Subgoal *1/2.115.1060'
Subgoal *1/2.115.1059
Subgoal *1/2.115.1059'
Subgoal *1/2.115.1058
Subgoal *1/2.115.1058'
Subgoal *1/2.115.1057
Subgoal *1/2.115.1057'
Subgoal *1/2.115.1056
Subgoal *1/2.115.1056'
Subgoal *1/2.115.1055
Subgoal *1/2.115.1055'
Subgoal *1/2.115.1054
Subgoal *1/2.115.1054'
Subgoal *1/2.115.1053
Subgoal *1/2.115.1053'
Subgoal *1/2.115.1052
Subgoal *1/2.115.1052'
Subgoal *1/2.115.1051
Subgoal *1/2.115.1051'
Subgoal *1/2.115.1050
Subgoal *1/2.115.1050'
Subgoal *1/2.115.1049
Subgoal *1/2.115.1049'
Subgoal *1/2.115.1048
Subgoal *1/2.115.1048'
Subgoal *1/2.115.1047
Subgoal *1/2.115.1047'
Subgoal *1/2.115.1046
Subgoal *1/2.115.1046'
Subgoal *1/2.115.1045
Subgoal *1/2.115.1045'
Subgoal *1/2.115.1044
Subgoal *1/2.115.1044'
Subgoal *1/2.115.1043
Subgoal *1/2.115.1043'
Subgoal *1/2.115.1042
Subgoal *1/2.115.1042'
Subgoal *1/2.115.1041
Subgoal *1/2.115.1041'
Subgoal *1/2.115.1040
Subgoal *1/2.115.1040'
Subgoal *1/2.115.1039
Subgoal *1/2.115.1039'
Subgoal *1/2.115.1038
Subgoal *1/2.115.1038'
Subgoal *1/2.115.1037
Subgoal *1/2.115.1037'
Subgoal *1/2.115.1036
Subgoal *1/2.115.1036'
Subgoal *1/2.115.1035
Subgoal *1/2.115.1035'
Subgoal *1/2.115.1034
Subgoal *1/2.115.1034'
Subgoal *1/2.115.1033
Subgoal *1/2.115.1033'
Subgoal *1/2.115.1032
Subgoal *1/2.115.1032'
Subgoal *1/2.115.1031
Subgoal *1/2.115.1031'
Subgoal *1/2.115.1030
Subgoal *1/2.115.1030'
Subgoal *1/2.115.1029
Subgoal *1/2.115.1029'
Subgoal *1/2.115.1028
Subgoal *1/2.115.1028'
Subgoal *1/2.115.1027
Subgoal *1/2.115.1027'
Subgoal *1/2.115.1026
Subgoal *1/2.115.1026'
Subgoal *1/2.115.1025
Subgoal *1/2.115.1025'
Subgoal *1/2.115.1024
Subgoal *1/2.115.1024'
Subgoal *1/2.115.1023
Subgoal *1/2.115.1023'
Subgoal *1/2.115.1022
Subgoal *1/2.115.1022'
Subgoal *1/2.115.1021
Subgoal *1/2.115.1021'
Subgoal *1/2.115.1020
Subgoal *1/2.115.1020'
Subgoal *1/2.115.1019
Subgoal *1/2.115.1019'
Subgoal *1/2.115.1018
Subgoal *1/2.115.1018'
Subgoal *1/2.115.1017
Subgoal *1/2.115.1017'
Subgoal *1/2.115.1016
Subgoal *1/2.115.1016'
Subgoal *1/2.115.1015
Subgoal *1/2.115.1015'
Subgoal *1/2.115.1014
Subgoal *1/2.115.1014'
Subgoal *1/2.115.1013
Subgoal *1/2.115.1013'
Subgoal *1/2.115.1012
Subgoal *1/2.115.1012'
Subgoal *1/2.115.1011
Subgoal *1/2.115.1011'
Subgoal *1/2.115.1010
Subgoal *1/2.115.1010'
Subgoal *1/2.115.1009
Subgoal *1/2.115.1009'
Subgoal *1/2.115.1008
Subgoal *1/2.115.1008'
Subgoal *1/2.115.1007
Subgoal *1/2.115.1007'
Subgoal *1/2.115.1006
Subgoal *1/2.115.1006'
Subgoal *1/2.115.1005
Subgoal *1/2.115.1005'
Subgoal *1/2.115.1004
Subgoal *1/2.115.1004'
Subgoal *1/2.115.1003
Subgoal *1/2.115.1003'
Subgoal *1/2.115.1002
Subgoal *1/2.115.1002'
Subgoal *1/2.115.1001
Subgoal *1/2.115.1001'
Subgoal *1/2.115.1000
Subgoal *1/2.115.1000'
Subgoal *1/2.115.999
Subgoal *1/2.115.999'
Subgoal *1/2.115.998
Subgoal *1/2.115.998'
Subgoal *1/2.115.997
Subgoal *1/2.115.997'
Subgoal *1/2.115.996
Subgoal *1/2.115.996'
Subgoal *1/2.115.995
Subgoal *1/2.115.995'
Subgoal *1/2.115.994
Subgoal *1/2.115.994'
Subgoal *1/2.115.993
Subgoal *1/2.115.993'
Subgoal *1/2.115.992
Subgoal *1/2.115.992'
Subgoal *1/2.115.991
Subgoal *1/2.115.991'
Subgoal *1/2.115.990
Subgoal *1/2.115.990'
Subgoal *1/2.115.989
Subgoal *1/2.115.989'
Subgoal *1/2.115.988
Subgoal *1/2.115.988'
Subgoal *1/2.115.987
Subgoal *1/2.115.987'
Subgoal *1/2.115.986
Subgoal *1/2.115.986'
Subgoal *1/2.115.985
Subgoal *1/2.115.985'
Subgoal *1/2.115.984
Subgoal *1/2.115.984'
Subgoal *1/2.115.983
Subgoal *1/2.115.983'
Subgoal *1/2.115.982
Subgoal *1/2.115.982'
Subgoal *1/2.115.981
Subgoal *1/2.115.981'
Subgoal *1/2.115.980
Subgoal *1/2.115.980'
Subgoal *1/2.115.979
Subgoal *1/2.115.979'
Subgoal *1/2.115.978
Subgoal *1/2.115.978'
Subgoal *1/2.115.977
Subgoal *1/2.115.977'
Subgoal *1/2.115.976
Subgoal *1/2.115.976'
Subgoal *1/2.115.975
Subgoal *1/2.115.975'
Subgoal *1/2.115.974
Subgoal *1/2.115.974'
Subgoal *1/2.115.973
Subgoal *1/2.115.973'
Subgoal *1/2.115.972
Subgoal *1/2.115.972'
Subgoal *1/2.115.971
Subgoal *1/2.115.971'
Subgoal *1/2.115.970
Subgoal *1/2.115.970'
Subgoal *1/2.115.969
Subgoal *1/2.115.969'
Subgoal *1/2.115.968
Subgoal *1/2.115.968'
Subgoal *1/2.115.967
Subgoal *1/2.115.967'
Subgoal *1/2.115.966
Subgoal *1/2.115.966'
Subgoal *1/2.115.965
Subgoal *1/2.115.965'
Subgoal *1/2.115.964
Subgoal *1/2.115.964'
Subgoal *1/2.115.963
Subgoal *1/2.115.963'
Subgoal *1/2.115.962
Subgoal *1/2.115.962'
Subgoal *1/2.115.961
Subgoal *1/2.115.961'
Subgoal *1/2.115.960
Subgoal *1/2.115.960'
Subgoal *1/2.115.959
Subgoal *1/2.115.959'
Subgoal *1/2.115.958
Subgoal *1/2.115.958'
Subgoal *1/2.115.957
Subgoal *1/2.115.957'
Subgoal *1/2.115.956
Subgoal *1/2.115.956'
Subgoal *1/2.115.955
Subgoal *1/2.115.955'
Subgoal *1/2.115.954
Subgoal *1/2.115.954'
Subgoal *1/2.115.953
Subgoal *1/2.115.953'
Subgoal *1/2.115.952
Subgoal *1/2.115.952'
Subgoal *1/2.115.951
Subgoal *1/2.115.951'
Subgoal *1/2.115.950
Subgoal *1/2.115.950'
Subgoal *1/2.115.949
Subgoal *1/2.115.949'
Subgoal *1/2.115.948
Subgoal *1/2.115.948'
Subgoal *1/2.115.947
Subgoal *1/2.115.947'
Subgoal *1/2.115.946
Subgoal *1/2.115.946'
Subgoal *1/2.115.945
Subgoal *1/2.115.945'
Subgoal *1/2.115.944
Subgoal *1/2.115.944'
Subgoal *1/2.115.943
Subgoal *1/2.115.943'
Subgoal *1/2.115.942
Subgoal *1/2.115.942'
Subgoal *1/2.115.941
Subgoal *1/2.115.941'
Subgoal *1/2.115.940
Subgoal *1/2.115.940'
Subgoal *1/2.115.939
Subgoal *1/2.115.939'
Subgoal *1/2.115.938
Subgoal *1/2.115.938'
Subgoal *1/2.115.937
Subgoal *1/2.115.937'
Subgoal *1/2.115.936
Subgoal *1/2.115.936'
Subgoal *1/2.115.935
Subgoal *1/2.115.935'
Subgoal *1/2.115.934
Subgoal *1/2.115.934'
Subgoal *1/2.115.933
Subgoal *1/2.115.933'
Subgoal *1/2.115.932
Subgoal *1/2.115.932'
Subgoal *1/2.115.931
Subgoal *1/2.115.931'
Subgoal *1/2.115.930
Subgoal *1/2.115.930'
Subgoal *1/2.115.929
Subgoal *1/2.115.929'
Subgoal *1/2.115.928
Subgoal *1/2.115.928'
Subgoal *1/2.115.927
Subgoal *1/2.115.927'
Subgoal *1/2.115.926
Subgoal *1/2.115.926'
Subgoal *1/2.115.925
Subgoal *1/2.115.925'
Subgoal *1/2.115.924
Subgoal *1/2.115.924'
Subgoal *1/2.115.923
Subgoal *1/2.115.923'
Subgoal *1/2.115.922
Subgoal *1/2.115.922'
Subgoal *1/2.115.921
Subgoal *1/2.115.921'
Subgoal *1/2.115.920
Subgoal *1/2.115.920'
Subgoal *1/2.115.919
Subgoal *1/2.115.919'
Subgoal *1/2.115.918
Subgoal *1/2.115.918'
Subgoal *1/2.115.917
Subgoal *1/2.115.917'
Subgoal *1/2.115.916
Subgoal *1/2.115.916'
Subgoal *1/2.115.915
Subgoal *1/2.115.915'
Subgoal *1/2.115.914
Subgoal *1/2.115.914'
Subgoal *1/2.115.913
Subgoal *1/2.115.913'
Subgoal *1/2.115.912
Subgoal *1/2.115.912'
Subgoal *1/2.115.911
Subgoal *1/2.115.911'
Subgoal *1/2.115.910
Subgoal *1/2.115.910'
Subgoal *1/2.115.909
Subgoal *1/2.115.909'
Subgoal *1/2.115.908
Subgoal *1/2.115.908'
Subgoal *1/2.115.907
Subgoal *1/2.115.907'
Subgoal *1/2.115.906
Subgoal *1/2.115.906'
Subgoal *1/2.115.905
Subgoal *1/2.115.905'
Subgoal *1/2.115.904
Subgoal *1/2.115.904'
Subgoal *1/2.115.903
Subgoal *1/2.115.903'
Subgoal *1/2.115.902
Subgoal *1/2.115.902'
Subgoal *1/2.115.901
Subgoal *1/2.115.901'
Subgoal *1/2.115.900
Subgoal *1/2.115.900'
Subgoal *1/2.115.899
Subgoal *1/2.115.899'
Subgoal *1/2.115.898
Subgoal *1/2.115.898'
Subgoal *1/2.115.897
Subgoal *1/2.115.897'
Subgoal *1/2.115.896
Subgoal *1/2.115.896'
Subgoal *1/2.115.895
Subgoal *1/2.115.895'
Subgoal *1/2.115.894
Subgoal *1/2.115.894'
Subgoal *1/2.115.893
Subgoal *1/2.115.893'
Subgoal *1/2.115.892
Subgoal *1/2.115.892'
Subgoal *1/2.115.891
Subgoal *1/2.115.891'
Subgoal *1/2.115.890
Subgoal *1/2.115.890'
Subgoal *1/2.115.889
Subgoal *1/2.115.889'
Subgoal *1/2.115.888
Subgoal *1/2.115.888'
Subgoal *1/2.115.887
Subgoal *1/2.115.887'
Subgoal *1/2.115.886
Subgoal *1/2.115.886'
Subgoal *1/2.115.885
Subgoal *1/2.115.885'
Subgoal *1/2.115.884
Subgoal *1/2.115.884'
Subgoal *1/2.115.883
Subgoal *1/2.115.883'
Subgoal *1/2.115.882
Subgoal *1/2.115.882'
Subgoal *1/2.115.881
Subgoal *1/2.115.881'
Subgoal *1/2.115.880
Subgoal *1/2.115.880'
Subgoal *1/2.115.879
Subgoal *1/2.115.879'
Subgoal *1/2.115.878
Subgoal *1/2.115.878'
Subgoal *1/2.115.877
Subgoal *1/2.115.877'
Subgoal *1/2.115.876
Subgoal *1/2.115.876'
Subgoal *1/2.115.875
Subgoal *1/2.115.875'
Subgoal *1/2.115.874
Subgoal *1/2.115.874'
Subgoal *1/2.115.873
Subgoal *1/2.115.873'
Subgoal *1/2.115.872
Subgoal *1/2.115.872'
Subgoal *1/2.115.871
Subgoal *1/2.115.871'
Subgoal *1/2.115.870
Subgoal *1/2.115.870'
Subgoal *1/2.115.869
Subgoal *1/2.115.869'
Subgoal *1/2.115.868
Subgoal *1/2.115.868'
Subgoal *1/2.115.867
Subgoal *1/2.115.867'
Subgoal *1/2.115.866
Subgoal *1/2.115.866'
Subgoal *1/2.115.865
Subgoal *1/2.115.865'
Subgoal *1/2.115.864
Subgoal *1/2.115.864'
Subgoal *1/2.115.863
Subgoal *1/2.115.863'
Subgoal *1/2.115.862
Subgoal *1/2.115.862'
Subgoal *1/2.115.861
Subgoal *1/2.115.861'
Subgoal *1/2.115.860
Subgoal *1/2.115.860'
Subgoal *1/2.115.859
Subgoal *1/2.115.859'
Subgoal *1/2.115.858
Subgoal *1/2.115.858'
Subgoal *1/2.115.857
Subgoal *1/2.115.857'
Subgoal *1/2.115.856
Subgoal *1/2.115.856'
Subgoal *1/2.115.855
Subgoal *1/2.115.855'
Subgoal *1/2.115.854
Subgoal *1/2.115.854'
Subgoal *1/2.115.853
Subgoal *1/2.115.853'
Subgoal *1/2.115.852
Subgoal *1/2.115.852'
Subgoal *1/2.115.851
Subgoal *1/2.115.851'
Subgoal *1/2.115.850
Subgoal *1/2.115.850'
Subgoal *1/2.115.849
Subgoal *1/2.115.849'
Subgoal *1/2.115.848
Subgoal *1/2.115.848'
Subgoal *1/2.115.847
Subgoal *1/2.115.847'
Subgoal *1/2.115.846
Subgoal *1/2.115.846'
Subgoal *1/2.115.845
Subgoal *1/2.115.845'
Subgoal *1/2.115.844
Subgoal *1/2.115.844'
Subgoal *1/2.115.843
Subgoal *1/2.115.843'
Subgoal *1/2.115.842
Subgoal *1/2.115.842'
Subgoal *1/2.115.841
Subgoal *1/2.115.841'
Subgoal *1/2.115.840
Subgoal *1/2.115.840'
Subgoal *1/2.115.839
Subgoal *1/2.115.839'
Subgoal *1/2.115.838
Subgoal *1/2.115.838'
Subgoal *1/2.115.837
Subgoal *1/2.115.837'
Subgoal *1/2.115.836
Subgoal *1/2.115.836'
Subgoal *1/2.115.835
Subgoal *1/2.115.835'
Subgoal *1/2.115.834
Subgoal *1/2.115.834'
Subgoal *1/2.115.833
Subgoal *1/2.115.833'
Subgoal *1/2.115.832
Subgoal *1/2.115.832'
Subgoal *1/2.115.831
Subgoal *1/2.115.831'
Subgoal *1/2.115.830
Subgoal *1/2.115.830'
Subgoal *1/2.115.829
Subgoal *1/2.115.829'
Subgoal *1/2.115.828
Subgoal *1/2.115.828'
Subgoal *1/2.115.827
Subgoal *1/2.115.827'
Subgoal *1/2.115.826
Subgoal *1/2.115.826'
Subgoal *1/2.115.825
Subgoal *1/2.115.825'
Subgoal *1/2.115.824
Subgoal *1/2.115.824'
Subgoal *1/2.115.823
Subgoal *1/2.115.823'
Subgoal *1/2.115.822
Subgoal *1/2.115.822'
Subgoal *1/2.115.821
Subgoal *1/2.115.821'
Subgoal *1/2.115.820
Subgoal *1/2.115.820'
Subgoal *1/2.115.819
Subgoal *1/2.115.819'
Subgoal *1/2.115.818
Subgoal *1/2.115.818'
Subgoal *1/2.115.817
Subgoal *1/2.115.817'
Subgoal *1/2.115.816
Subgoal *1/2.115.816'
Subgoal *1/2.115.815
Subgoal *1/2.115.815'
Subgoal *1/2.115.814
Subgoal *1/2.115.814'
Subgoal *1/2.115.813
Subgoal *1/2.115.813'
Subgoal *1/2.115.812
Subgoal *1/2.115.812'
Subgoal *1/2.115.811
Subgoal *1/2.115.811'
Subgoal *1/2.115.810
Subgoal *1/2.115.810'
Subgoal *1/2.115.809
Subgoal *1/2.115.809'
Subgoal *1/2.115.808
Subgoal *1/2.115.808'
Subgoal *1/2.115.807
Subgoal *1/2.115.807'
Subgoal *1/2.115.806
Subgoal *1/2.115.806'
Subgoal *1/2.115.805
Subgoal *1/2.115.805'
Subgoal *1/2.115.804
Subgoal *1/2.115.804'
Subgoal *1/2.115.803
Subgoal *1/2.115.803'
Subgoal *1/2.115.802
Subgoal *1/2.115.802'
Subgoal *1/2.115.801
Subgoal *1/2.115.801'
Subgoal *1/2.115.800
Subgoal *1/2.115.800'
Subgoal *1/2.115.799
Subgoal *1/2.115.799'
Subgoal *1/2.115.798
Subgoal *1/2.115.798'
Subgoal *1/2.115.797
Subgoal *1/2.115.797'
Subgoal *1/2.115.796
Subgoal *1/2.115.796'
Subgoal *1/2.115.795
Subgoal *1/2.115.795'
Subgoal *1/2.115.794
Subgoal *1/2.115.794'
Subgoal *1/2.115.793
Subgoal *1/2.115.793'
Subgoal *1/2.115.792
Subgoal *1/2.115.792'
Subgoal *1/2.115.791
Subgoal *1/2.115.791'
Subgoal *1/2.115.790
Subgoal *1/2.115.790'
Subgoal *1/2.115.789
Subgoal *1/2.115.789'
Subgoal *1/2.115.788
Subgoal *1/2.115.788'
Subgoal *1/2.115.787
Subgoal *1/2.115.787'
Subgoal *1/2.115.786
Subgoal *1/2.115.786'
Subgoal *1/2.115.785
Subgoal *1/2.115.785'
Subgoal *1/2.115.784
Subgoal *1/2.115.784'
Subgoal *1/2.115.783
Subgoal *1/2.115.783'
Subgoal *1/2.115.782
Subgoal *1/2.115.782'
Subgoal *1/2.115.781
Subgoal *1/2.115.781'
Subgoal *1/2.115.780
Subgoal *1/2.115.780'
Subgoal *1/2.115.779
Subgoal *1/2.115.779'
Subgoal *1/2.115.778
Subgoal *1/2.115.778'
Subgoal *1/2.115.777
Subgoal *1/2.115.777'
Subgoal *1/2.115.776
Subgoal *1/2.115.776'
Subgoal *1/2.115.775
Subgoal *1/2.115.775'
Subgoal *1/2.115.774
Subgoal *1/2.115.774'
Subgoal *1/2.115.773
Subgoal *1/2.115.773'
Subgoal *1/2.115.772
Subgoal *1/2.115.772'
Subgoal *1/2.115.771
Subgoal *1/2.115.771'
Subgoal *1/2.115.770
Subgoal *1/2.115.770'
Subgoal *1/2.115.769
Subgoal *1/2.115.769'
Subgoal *1/2.115.768
Subgoal *1/2.115.768'
Subgoal *1/2.115.767
Subgoal *1/2.115.767'
Subgoal *1/2.115.766
Subgoal *1/2.115.766'
Subgoal *1/2.115.765
Subgoal *1/2.115.765'
Subgoal *1/2.115.764
Subgoal *1/2.115.764'
Subgoal *1/2.115.763
Subgoal *1/2.115.763'
Subgoal *1/2.115.762
Subgoal *1/2.115.762'
Subgoal *1/2.115.761
Subgoal *1/2.115.761'
Subgoal *1/2.115.760
Subgoal *1/2.115.760'
Subgoal *1/2.115.759
Subgoal *1/2.115.759'
Subgoal *1/2.115.758
Subgoal *1/2.115.758'
Subgoal *1/2.115.757
Subgoal *1/2.115.757'
Subgoal *1/2.115.756
Subgoal *1/2.115.756'
Subgoal *1/2.115.755
Subgoal *1/2.115.755'
Subgoal *1/2.115.754
Subgoal *1/2.115.754'
Subgoal *1/2.115.753
Subgoal *1/2.115.753'
Subgoal *1/2.115.752
Subgoal *1/2.115.752'
Subgoal *1/2.115.751
Subgoal *1/2.115.751'
Subgoal *1/2.115.750
Subgoal *1/2.115.750'
Subgoal *1/2.115.749
Subgoal *1/2.115.749'
Subgoal *1/2.115.748
Subgoal *1/2.115.748'
Subgoal *1/2.115.747
Subgoal *1/2.115.747'
Subgoal *1/2.115.746
Subgoal *1/2.115.746'
Subgoal *1/2.115.745
Subgoal *1/2.115.745'
Subgoal *1/2.115.744
Subgoal *1/2.115.744'
Subgoal *1/2.115.743
Subgoal *1/2.115.743'
Subgoal *1/2.115.742
Subgoal *1/2.115.742'
Subgoal *1/2.115.741
Subgoal *1/2.115.741'
Subgoal *1/2.115.740
Subgoal *1/2.115.740'
Subgoal *1/2.115.739
Subgoal *1/2.115.739'
Subgoal *1/2.115.738
Subgoal *1/2.115.738'
Subgoal *1/2.115.737
Subgoal *1/2.115.737'
Subgoal *1/2.115.736
Subgoal *1/2.115.736'
Subgoal *1/2.115.735
Subgoal *1/2.115.735'
Subgoal *1/2.115.734
Subgoal *1/2.115.734'
Subgoal *1/2.115.733
Subgoal *1/2.115.733'
Subgoal *1/2.115.732
Subgoal *1/2.115.732'
Subgoal *1/2.115.731
Subgoal *1/2.115.731'
Subgoal *1/2.115.730
Subgoal *1/2.115.730'
Subgoal *1/2.115.729
Subgoal *1/2.115.729'
Subgoal *1/2.115.728
Subgoal *1/2.115.728'
Subgoal *1/2.115.727
Subgoal *1/2.115.727'
Subgoal *1/2.115.726
Subgoal *1/2.115.726'
Subgoal *1/2.115.725
Subgoal *1/2.115.725'
Subgoal *1/2.115.724
Subgoal *1/2.115.724'
Subgoal *1/2.115.723
Subgoal *1/2.115.723'
Subgoal *1/2.115.722
Subgoal *1/2.115.722'
Subgoal *1/2.115.721
Subgoal *1/2.115.721'
Subgoal *1/2.115.720
Subgoal *1/2.115.720'
Subgoal *1/2.115.719
Subgoal *1/2.115.719'
Subgoal *1/2.115.718
Subgoal *1/2.115.718'
Subgoal *1/2.115.717
Subgoal *1/2.115.717'
Subgoal *1/2.115.716
Subgoal *1/2.115.716'
Subgoal *1/2.115.715
Subgoal *1/2.115.715'
Subgoal *1/2.115.714
Subgoal *1/2.115.714'
Subgoal *1/2.115.713
Subgoal *1/2.115.713'
Subgoal *1/2.115.712
Subgoal *1/2.115.712'
Subgoal *1/2.115.711
Subgoal *1/2.115.711'
Subgoal *1/2.115.710
Subgoal *1/2.115.710'
Subgoal *1/2.115.709
Subgoal *1/2.115.709'
Subgoal *1/2.115.708
Subgoal *1/2.115.708'
Subgoal *1/2.115.707
Subgoal *1/2.115.707'
Subgoal *1/2.115.706
Subgoal *1/2.115.706'
Subgoal *1/2.115.705
Subgoal *1/2.115.705'
Subgoal *1/2.115.704
Subgoal *1/2.115.704'
Subgoal *1/2.115.703
Subgoal *1/2.115.703'
Subgoal *1/2.115.702
Subgoal *1/2.115.702'
Subgoal *1/2.115.701
Subgoal *1/2.115.701'
Subgoal *1/2.115.700
Subgoal *1/2.115.700'
Subgoal *1/2.115.699
Subgoal *1/2.115.699'
Subgoal *1/2.115.698
Subgoal *1/2.115.698'
Subgoal *1/2.115.697
Subgoal *1/2.115.697'
Subgoal *1/2.115.696
Subgoal *1/2.115.696'
Subgoal *1/2.115.695
Subgoal *1/2.115.695'
Subgoal *1/2.115.694
Subgoal *1/2.115.694'
Subgoal *1/2.115.693
Subgoal *1/2.115.693'
Subgoal *1/2.115.692
Subgoal *1/2.115.692'
Subgoal *1/2.115.691
Subgoal *1/2.115.691'
Subgoal *1/2.115.690
Subgoal *1/2.115.690'
Subgoal *1/2.115.689
Subgoal *1/2.115.689'
Subgoal *1/2.115.688
Subgoal *1/2.115.688'
Subgoal *1/2.115.687
Subgoal *1/2.115.687'
Subgoal *1/2.115.686
Subgoal *1/2.115.686'
Subgoal *1/2.115.685
Subgoal *1/2.115.685'
Subgoal *1/2.115.684
Subgoal *1/2.115.684'
Subgoal *1/2.115.683
Subgoal *1/2.115.683'
Subgoal *1/2.115.682
Subgoal *1/2.115.682'
Subgoal *1/2.115.681
Subgoal *1/2.115.681'
Subgoal *1/2.115.680
Subgoal *1/2.115.680'
Subgoal *1/2.115.679
Subgoal *1/2.115.679'
Subgoal *1/2.115.678
Subgoal *1/2.115.678'
Subgoal *1/2.115.677
Subgoal *1/2.115.677'
Subgoal *1/2.115.676
Subgoal *1/2.115.676'
Subgoal *1/2.115.675
Subgoal *1/2.115.675'
Subgoal *1/2.115.674
Subgoal *1/2.115.674'
Subgoal *1/2.115.673
Subgoal *1/2.115.673'
Subgoal *1/2.115.672
Subgoal *1/2.115.672'
Subgoal *1/2.115.671
Subgoal *1/2.115.671'
Subgoal *1/2.115.670
Subgoal *1/2.115.670'
Subgoal *1/2.115.669
Subgoal *1/2.115.669'
Subgoal *1/2.115.668
Subgoal *1/2.115.668'
Subgoal *1/2.115.667
Subgoal *1/2.115.667'
Subgoal *1/2.115.666
Subgoal *1/2.115.666'
Subgoal *1/2.115.665
Subgoal *1/2.115.665'
Subgoal *1/2.115.664
Subgoal *1/2.115.664'
Subgoal *1/2.115.663
Subgoal *1/2.115.663'
Subgoal *1/2.115.662
Subgoal *1/2.115.662'
Subgoal *1/2.115.661
Subgoal *1/2.115.661'
Subgoal *1/2.115.660
Subgoal *1/2.115.660'
Subgoal *1/2.115.659
Subgoal *1/2.115.659'
Subgoal *1/2.115.658
Subgoal *1/2.115.658'
Subgoal *1/2.115.657
Subgoal *1/2.115.657'
Subgoal *1/2.115.656
Subgoal *1/2.115.656'
Subgoal *1/2.115.655
Subgoal *1/2.115.655'
Subgoal *1/2.115.654
Subgoal *1/2.115.654'
Subgoal *1/2.115.653
Subgoal *1/2.115.653'
Subgoal *1/2.115.652
Subgoal *1/2.115.652'
Subgoal *1/2.115.651
Subgoal *1/2.115.651'
Subgoal *1/2.115.650
Subgoal *1/2.115.650'
Subgoal *1/2.115.649
Subgoal *1/2.115.649'
Subgoal *1/2.115.648
Subgoal *1/2.115.648'
Subgoal *1/2.115.647
Subgoal *1/2.115.647'
Subgoal *1/2.115.646
Subgoal *1/2.115.646'
Subgoal *1/2.115.645
Subgoal *1/2.115.645'
Subgoal *1/2.115.644
Subgoal *1/2.115.644'
Subgoal *1/2.115.643
Subgoal *1/2.115.643'
Subgoal *1/2.115.642
Subgoal *1/2.115.642'
Subgoal *1/2.115.641
Subgoal *1/2.115.641'
Subgoal *1/2.115.640
Subgoal *1/2.115.640'
Subgoal *1/2.115.639
Subgoal *1/2.115.639'
Subgoal *1/2.115.638
Subgoal *1/2.115.638'
Subgoal *1/2.115.637
Subgoal *1/2.115.637'
Subgoal *1/2.115.636
Subgoal *1/2.115.636'
Subgoal *1/2.115.635
Subgoal *1/2.115.635'
Subgoal *1/2.115.634
Subgoal *1/2.115.634'
Subgoal *1/2.115.633
Subgoal *1/2.115.633'
Subgoal *1/2.115.632
Subgoal *1/2.115.632'
Subgoal *1/2.115.631
Subgoal *1/2.115.631'
Subgoal *1/2.115.630
Subgoal *1/2.115.630'
Subgoal *1/2.115.629
Subgoal *1/2.115.629'
Subgoal *1/2.115.628
Subgoal *1/2.115.628'
Subgoal *1/2.115.627
Subgoal *1/2.115.627'
Subgoal *1/2.115.626
Subgoal *1/2.115.626'
Subgoal *1/2.115.625
Subgoal *1/2.115.625'
Subgoal *1/2.115.624
Subgoal *1/2.115.624'
Subgoal *1/2.115.623
Subgoal *1/2.115.623'
Subgoal *1/2.115.622
Subgoal *1/2.115.622'
Subgoal *1/2.115.621
Subgoal *1/2.115.621'
Subgoal *1/2.115.620
Subgoal *1/2.115.620'
Subgoal *1/2.115.619
Subgoal *1/2.115.619'
Subgoal *1/2.115.618
Subgoal *1/2.115.618'
Subgoal *1/2.115.617
Subgoal *1/2.115.617'
Subgoal *1/2.115.616
Subgoal *1/2.115.616'
Subgoal *1/2.115.615
Subgoal *1/2.115.615'
Subgoal *1/2.115.614
Subgoal *1/2.115.614'
Subgoal *1/2.115.613
Subgoal *1/2.115.613'
Subgoal *1/2.115.612
Subgoal *1/2.115.612'
Subgoal *1/2.115.611
Subgoal *1/2.115.611'
Subgoal *1/2.115.610
Subgoal *1/2.115.610'
Subgoal *1/2.115.609
Subgoal *1/2.115.609'
Subgoal *1/2.115.608
Subgoal *1/2.115.608'
Subgoal *1/2.115.607
Subgoal *1/2.115.607'
Subgoal *1/2.115.606
Subgoal *1/2.115.606'
Subgoal *1/2.115.605
Subgoal *1/2.115.605'
Subgoal *1/2.115.604
Subgoal *1/2.115.604'
Subgoal *1/2.115.603
Subgoal *1/2.115.603'
Subgoal *1/2.115.602
Subgoal *1/2.115.602'
Subgoal *1/2.115.601
Subgoal *1/2.115.601'
Subgoal *1/2.115.600
Subgoal *1/2.115.600'
Subgoal *1/2.115.599
Subgoal *1/2.115.599'
Subgoal *1/2.115.598
Subgoal *1/2.115.598'
Subgoal *1/2.115.597
Subgoal *1/2.115.597'
Subgoal *1/2.115.596
Subgoal *1/2.115.596'
Subgoal *1/2.115.595
Subgoal *1/2.115.595'
Subgoal *1/2.115.594
Subgoal *1/2.115.594'
Subgoal *1/2.115.593
Subgoal *1/2.115.593'
Subgoal *1/2.115.592
Subgoal *1/2.115.592'
Subgoal *1/2.115.591
Subgoal *1/2.115.591'
Subgoal *1/2.115.590
Subgoal *1/2.115.590'
Subgoal *1/2.115.589
Subgoal *1/2.115.589'
Subgoal *1/2.115.588
Subgoal *1/2.115.588'
Subgoal *1/2.115.587
Subgoal *1/2.115.587'
Subgoal *1/2.115.586
Subgoal *1/2.115.586'
Subgoal *1/2.115.585
Subgoal *1/2.115.585'
Subgoal *1/2.115.584
Subgoal *1/2.115.584'
Subgoal *1/2.115.583
Subgoal *1/2.115.583'
Subgoal *1/2.115.582
Subgoal *1/2.115.582'
Subgoal *1/2.115.581
Subgoal *1/2.115.581'
Subgoal *1/2.115.580
Subgoal *1/2.115.580'
Subgoal *1/2.115.579
Subgoal *1/2.115.579'
Subgoal *1/2.115.578
Subgoal *1/2.115.578'
Subgoal *1/2.115.577
Subgoal *1/2.115.577'
Subgoal *1/2.115.576
Subgoal *1/2.115.576'
Subgoal *1/2.115.576''

([ A key checkpoint while proving *1 (descended from Goal):

Subgoal *1/2.115.576''
NIL

A goal of NIL, Subgoal *1/2.115.576'', has been generated!  Obviously,
the proof attempt has failed.

])

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST-BAD ...)
Rules: ((:DEFINITION FIX)
        (:DEFINITION FIZZBUZZ)
        (:DEFINITION FIZZBUZZ1)
        (:DEFINITION FLOOR)
        (:DEFINITION HIDE)
        (:DEFINITION IFF)
        (:DEFINITION MOD)
        (:DEFINITION NFIX)
        (:DEFINITION NOT)
        (:DEFINITION NTH)
        (:DEFINITION SYNP)
        (:EXECUTABLE-COUNTERPART <)
        (:EXECUTABLE-COUNTERPART ACL2-NUMBERP)
        (:EXECUTABLE-COUNTERPART BINARY-*)
        (:EXECUTABLE-COUNTERPART BINARY-+)
        (:EXECUTABLE-COUNTERPART CONSP)
        (:EXECUTABLE-COUNTERPART DENOMINATOR)
        (:EXECUTABLE-COUNTERPART EQUAL)
        (:EXECUTABLE-COUNTERPART FIZZBUZZ)
        (:EXECUTABLE-COUNTERPART INTEGERP)
        (:EXECUTABLE-COUNTERPART NONNEGATIVE-INTEGER-QUOTIENT)
        (:EXECUTABLE-COUNTERPART NOT)
        (:EXECUTABLE-COUNTERPART NTH)
        (:EXECUTABLE-COUNTERPART NUMERATOR)
        (:EXECUTABLE-COUNTERPART UNARY--)
        (:EXECUTABLE-COUNTERPART UNARY-/)
        (:FAKE-RUNE-FOR-LINEAR NIL)
        (:FAKE-RUNE-FOR-TYPE-SET NIL)
        (:FORWARD-CHAINING NUMERATOR-NONZERO-FORWARD)
        (:INDUCTION FIZZBUZZ)
        (:META CANCEL_PLUS-LESSP-CORRECT)
        (:REWRITE |(< 0 (len x))|)
        (:REWRITE <-*-0)
        (:REWRITE <-+-NEGATIVE-0-1)
        (:REWRITE <-0-+-NEGATIVE-1)
        (:REWRITE ASSOCIATIVITY-OF-+)
        (:REWRITE CAR-CONS)
        (:REWRITE CDR-CONS)
        (:REWRITE COMMUTATIVITY-OF-*)
        (:REWRITE COMMUTATIVITY-OF-+)
        (:REWRITE DISTRIBUTIVITY)
        (:REWRITE EQUAL-CONSTANT-+)
        (:REWRITE EQUAL-DENOMINATOR-1)
        (:REWRITE FIZZBUZZ1-MOD3)
        (:REWRITE FOLD-CONSTS-IN-*)
        (:REWRITE FOLD-CONSTS-IN-+)
        (:REWRITE INTEGERP==>DENOMINATOR=1)
        (:REWRITE INVERSE-OF-+)
        (:REWRITE INVERSE-OF-+-AS=0)
        (:REWRITE NTH-OF-APPEND)
        (:REWRITE NTH-OF-NIL)
        (:REWRITE NUMERATOR-WHEN-INTEGERP)
        (:REWRITE UNICITY-OF-1)
        (:REWRITE ZP-OPEN)
        (:TYPE-PRESCRIPTION LEN)
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT)
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
Splitter rules (see :DOC splitter):
  if-intro: ((:DEFINITION FIX)
             (:DEFINITION FIZZBUZZ)
             (:DEFINITION FIZZBUZZ1)
             (:DEFINITION FLOOR)
             (:DEFINITION NFIX)
             (:DEFINITION NOT)
             (:DEFINITION NTH)
             (:REWRITE EQUAL-CONSTANT-+)
             (:REWRITE NTH-OF-APPEND)
             (:REWRITE ZP-OPEN))
Time:  0.56 seconds (prove: 0.52, print: 0.04, other: 0.00)
Prover steps counted:  172603

---
The key checkpoint goals, below, may help you to debug this failure.
See :DOC failure and see :DOC set-checkpoint-summary-limit.
---

*** Key checkpoint at the top level: ***

Goal
<GOAL>

*** Key checkpoint under a top-level induction
    before generating a goal of NIL (see :DOC nil-goal): ***

Subgoal *1/2.115.576''
NIL

ACL2 Error in ( DEFTHM FIZZBUZZ-LIST-BAD ...):  See :DOC failure.

******** FAILED ********
ACL2 !>(fizzbuzz 0)
NIL
ACL2 !>(fizzbuzz 20)
(1 2 "fizz" 4 "buzz"
   "fizz" 7 8 "fizz" "buzz" 11 "fizz"
   13 14 "fizzbuzz" 16 17 "fizz" 19 "buzz")
ACL2 !>(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (list (fizzbuzz1 (+ n 1)))) (fizzbuzz (+ n 1)))))

The event ( DEFTHM FIZZBUZZ-LIST ...) is redundant.  See :DOC redundant-
events.

Summary
Form:  ( DEFTHM FIZZBUZZ-LIST ...)
Rules: NIL
Time:  0.00 seconds (prove: 0.00, print: 0.00, other: 0.00)
 :REDUNDANT
ACL2 !>