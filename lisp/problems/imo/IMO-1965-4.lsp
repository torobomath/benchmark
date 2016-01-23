;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1965, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Find all sets of four real numbers $x_1$, $x_2$, $x_3$, $x_4$ such that the sum
;; of any one and the product of the other three is equal to $2$.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (xyzw)
  (exists (x y z w)
    (&& (= xyzw (list-of x y z w))
        (= (+ x (* y z w)) 2)
        (= (+ y (* x z w)) 2)
        (= (+ z (* y x w)) 2)
        (= (+ w (* y z x)) 2)))))

(def-answer p (PLam xyzw (|| (= xyzw (list-of 1 1 1 1))
                             (= xyzw (list-of 3 -1 -1 -1))
                             (= xyzw (list-of -1 3 -1 -1))
                             (= xyzw (list-of -1 -1 3 -1))
                             (= xyzw (list-of -1 -1 -1 3)))))

