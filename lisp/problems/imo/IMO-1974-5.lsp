;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1974, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-26
;;
;; <PROBLEM-TEXT>
;; Determine all possible values of\[
;; S = \frac{a}{a+b+d} + \frac{b}{a+b+c} + \frac{c}{b+c+d} + \frac{d}{a+c+d}
;; \]where $a$, $b$, $c$, $d$ are arbitrary positive numbers.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (S)
  (exists (a b c d)
    (&& (> a 0) (> b 0) (> c 0) (> d 0)
        (= S (+ (/ a (+ a b d)) (/ b (+ a b c)) (/ c (+ b c d)) (/ d (+ a c d))))))))

(def-answer
  p
  (PLam S (&& (< 1 S) (< S 2))))

