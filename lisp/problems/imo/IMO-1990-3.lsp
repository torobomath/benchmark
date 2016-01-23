;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1990, Problem 3
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; Determine all integers $n > 1$ such that
;; ¥[
;; ¥frac{2^n + 1}{n^2}
;; ¥]
;; is an integer.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (n)
     (&& (< 1 n)
     (is-divisible-by (+ (^ 2 n) 1) (^ n 2)))))

(def-answer p (PLam n (= n 3)))

