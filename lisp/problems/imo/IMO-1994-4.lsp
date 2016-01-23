;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-12
;;
;; <PROBLEM-TEXT>
;; Determine all ordered pairs $(m, n)$ of positive integers such that
;; ¥[
;; ¥frac{n^3 +1}{mn-1}
;; ¥]
;; is an integer.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (l)
    (exists (m n)
  (&& (= l (list-of m n))
        (< 0 m)
        (< 0 n)
        (is-divisible-by (+ (^ n 3) 1) (- (* m n) 1))))))

(def-answer p
  (PLam l (|| (= l (list-of 1 2))
              (= l (list-of 1 3))
              (= l (list-of 2 1))
              (= l (list-of 2 2))
              (= l (list-of 2 5))
              (= l (list-of 3 1))
              (= l (list-of 5 2))
              (= l (list-of 5 3)))))

