;; DOMAIN:    Combinatorics, puzzles and games
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1972, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-27
;;
;; <PROBLEM-TEXT>
;; Let $m$ and $n$ be arbitrary non-negative integers. Prove that\[
;; \frac{(2m)! (2n)!}{m! n! (m+n)!}
;; \]is an integer. ($0! = 1$.)
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (m n)
     (-> (&& (int.>= m 0)
               (int.>= n 0))
           (is-divisible-by (* (factorial (* 2 m)) (factorial (* 2 n)))
                            (* (factorial n) (factorial m) (factorial (+ n m))))))))

