;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1996, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-06
;;
;; <PROBLEM-TEXT>
;; The positive integers $a$ and $b$ are such that the numbers $15a + 16b$ and
;; $16a - 15b$ are both squares of positive integers. What is the least possible
;; value that can be taken on by the smaller of these two squares?
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (c)
  (minimum (set-by-def (PLam x
           (exists (a b v w)
             (&& (< 0 a)
                           (< 0 b)
                           (is-square-number v)
                           (is-square-number w)
                 (= v (+ (* 15 a) (* 16 b)))
               (= w (- (* 16 a) (* 15 b)))
                           (|| (= x v)
                               (= x w))))))
     c)))

(def-answer p (PLam c (= c (^ 481 2))))

