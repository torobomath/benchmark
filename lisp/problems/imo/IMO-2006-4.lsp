;; DOMAIN:    Number Theory, equations
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2006, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-28
;;
;; <PROBLEM-TEXT>
;; Determine all pairs (x, y) of integers such that
;; 1 + 2^x + 2^(2x+1) = y^2.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (xy)
    (exists (x y)
       (&& (= xy (list-of x y))
           (= (+ 1 (^ 2 x) (^ 2 (+ (* 2 x) 1))) (^ y 2))))))

(def-answer p (PLam xy (= xy (list-of 0 2))))

