;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1999, Humanities Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2015-02-07
;;
;; <PROBLEM-TEXT>
;; Let $c$ be a real number that satisfies $c>\frac{1}{4}$. Let $A$ be
;; the parabola $y=x^2$ on the $xy$ plane, and $B$ the parabola
;; symmetric to $A$ about the straight line $y=x-c$. When the point $P$
;; moves on the parabola $A$, and the point $Q$ moves on the parabola
;; $B$, represent the minimum length of the line segment $PQ$ using $c$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (minPQ)
        (minimum
          (set-by-def (PLam PQ
                            (exists (P Q A B L)
                                    (&&
                                      (> c (/ 1 4))
                                      (= A (graph-of (poly-fun (list-of 0 0 1))))
                                      (= L (graph-of (poly-fun (list-of (- c) 1))))
                                      (line-symmetry-shapes A B L)
                                      (on P A)
                                      (on Q B)
                                      (= PQ (distance P Q))))))
          minPQ)))

(def-answer p (PLam minPQ (&&
  (< (/ 1 4) c)
  (= minPQ (* (sqrt 2) (- c (/ 1 4))))
)))

