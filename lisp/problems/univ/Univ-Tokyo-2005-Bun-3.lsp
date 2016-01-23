;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2005, Humanities Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-01-10
;;
;; <PROBLEM-TEXT>
;; When the real numbers $s$ and $t$ equal to or larger than $0$ move
;; satisfying $s^2+t^2=1$, find the range of the possible solutions of
;; the equation $x^4-2(s+t)x^2+(s-t)^2=0$.
;; </PROBLEM-TEXT>

(def-directive
        p
  (Find (x)
        (exists (s t)
          (&& (= 1 (+ (^ s 2) (^ t 2)))
        (= 0 (+ (^ x 4) (* -2 (+ s t) (^ x 2)) (^ (- s t) 2)))
        (<= 0 s)
        (<= 0 t)))))

(def-answer p (PLam x (&& (<= (- (^ 2 (/ 3 4))) x)
                          (<= x (^ 2 (/ 3 4))))))

