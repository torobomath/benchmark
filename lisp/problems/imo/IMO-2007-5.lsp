;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2007, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Let a and b be positive integers. Show that if 4ab - 1 divides (4a^2 - 1)^2,
;; then a = b.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (forall (a b)
                (-> (&& (< 0 a)
                        (< 0 b)
                        (is-divisible-by (^ (- (* 4 (^ a 2)) 1) 2)
                                         (- (* 4 a b) 1)))
                    (= a b)))))

