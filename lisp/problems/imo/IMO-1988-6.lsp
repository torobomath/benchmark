;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1988, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-18
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be positive integers such that $ab + 1$ divides $a^2 + b^2$.
;; Show that
;; ¥[
;; ¥frac{a^2 + b^2}{ab + 1}
;; ¥]
;; is the square of an integer.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (a b)
     (-> (&& (> a 0)
               (> b 0)
               (is-divisible-by (+ (^ a 2) (^ b 2)) (+ (* a b) 1)))
           (is-square-number (div (+ (^ a 2) (^ b 2)) (+ (* a b) 1)))))))

