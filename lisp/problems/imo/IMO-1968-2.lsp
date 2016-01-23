;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1968, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Find all natural numbers $x$ such that the product of their digits
;; (in decimal notation) is equal to $x^2 - 10x - 22$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (x)
  (&& (int.> x 0)
      (= (- (- (^ x 2) (* 10 x)) 22)
         (product (int2decimal x))
         )
      )
   )
)

(def-answer p (PLam x (= x 12)))

