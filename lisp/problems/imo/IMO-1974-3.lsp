;; DOMAIN:    Combinatorics, puzzles and games
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1974, Problem 3
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-27
;;
;; <PROBLEM-TEXT>
;; Prove that the number $\sum_{k=0}^n \binom{2n+1}{2k+1} 2^{3k}$
;; is not divisible by $5$ for any integer $n \geq 0$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (n)
     (-> (<= 0 n)
         (! (is-divisible-by (sum (finseq (Lam k (* (combination (+ (* 2 n) 1)
                                                                 (+ (* 2 k) 1))
                                                    (^ 2 (* 3 k))))
                                          0 n))
                             5))))))

