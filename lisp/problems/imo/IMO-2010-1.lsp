;; DOMAIN:    Algebra, functional equations
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2010, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Determine all functions f : R -> R such that the equality
;; f(floor(x) y) = f(x) floor(f(y))
;; holds for all x, y in R. (Here floor(z) denotes the greatest integer
;; less than or equal to z.)
;; </PROBLEM-TEXT>

(def-directive p
  (Find (f)
        (forall (x y)
                (= (LamApp f (* (floor x) y))
                   (* (LamApp f x) (floor (LamApp f y)))))))

(def-answer p
   (PLam f (exists (a)
                   (&& (<= 1 a) (< a 2)
                       (|| (= f (Lam x 0))
                           (= f (Lam x a)))))))

