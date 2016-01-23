;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1998, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-05
;;
;; <PROBLEM-TEXT>
;; Determine all pairs $(a, b)$ of positive integers such that $ab^2 + b + 7$ divides
;; $a^2 b + a + b$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (lp)
    (exists (a b)
    (&& (= lp (list-of a b))
        (is-divisible-by (+ (* (^ a 2) b) a b) (+ (* a (^ b 2)) b 7))))))

(def-answer p
  (PLam lp (|| (= lp (list-of 11 1))
         (= lp (list-of 49 1))
         (exists (k) (= lp (list-of (* 7 (^ k 2)) (* 7 k)))))))

