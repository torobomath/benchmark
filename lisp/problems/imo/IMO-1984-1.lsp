;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1984, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; Prove that $0 ¥le yz + zx + xy - 2xyz ¥le 7/27$, where $x$, $y$ and $z$ are
;; non-negative real numbers for which $x + y + z = 1$.
;; </PROBLEM-TEXT>

(def-directive p
  (Show
   (forall (x y z)
     (-> (&& (>= x 0)
               (>= y 0)
               (>= z 0)
               (= (+ x y z) 1))
           (&& (<= 0 (- (+ (* x y) (* y z) (* z x)) (* 2 x y z)))
               (<= (- (+ (* x y) (* y z) (* z x)) (* 2 x y z)) (/ 7 27)))))))

