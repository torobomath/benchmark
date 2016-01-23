;; DOMAIN:    Number Theory, divisors and multiples
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 1
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-09
;;
;; <PROBLEM-TEXT>
;; Prove that the fraction
;; $\frac{21n+4}{14n+3}$
;; is irreducible for every natural number $n$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (forall (n)
      (->
        (is-natural-number n)
        (are-coprime (+ (* 21 n) 4) (+ (* 14 n) 3))
        )
      )
   )
)

