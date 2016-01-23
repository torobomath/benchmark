;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1989, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-13
;;
;; <PROBLEM-TEXT>
;; Assume that $k > 0$. When the curves
;;
;; $y = k(x - x^3)$ and $x = k(y - y^3)$
;;
;; on the $x y$ plane have the intersection $({\alpha}, {\beta})$, where
;; ${\alpha}\not= {\beta}$, in the first quadrant, find the range of
;; $k$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (k)
    (exists (C1 C2)
      (&& (< 0 k)
          (= C1 (shape-of-cpfun (PLam p (= (y-coord p) (* k (- (x-coord p) (^ (x-coord p) 3)))))))
    (= C2 (shape-of-cpfun (PLam p (= (x-coord p) (* k (- (y-coord p) (^ (y-coord p) 3)))))))
    (exists (a b)
            (&& (! (= a b))
    (< 0 a)
    (< 0 b)
    (on (point a b) C1)
    (on (point a b) C2)))))))

(def-answer p (PLam k (< 2 k)))

