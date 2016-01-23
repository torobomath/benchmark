;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2007, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Let $l$ be the tangent to the graph of the cubic function
;; $y=x^3-2 x^2-x+2$ at the point $(1, 0)$. Find the volume of the solid
;; obtained by rotating the region enclosed by this graph of the cubic
;; function and the tangent $l$ around the $x$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Find (v)
  (exists (l S)
    (&& (2d.line-type l)
        (2d.tangent (2d.graph-of (poly-fun (list-of 2 -1 -2 1))) l
        (2d.point 1 0))
        (= S (2d.shape-enclosed-by (list-of (2d.graph-of (poly-fun
                      (list-of 2 -1 -2 1))) l)))
        (= v (volume-of (solid-of-revolution (shape-of-cpfun
                (PLam p (&& (2d.on (2d.point (x-coord p) (y-coord p)) S)
                      (= 0 (z-coord p))))) (x-axis))))))))

(def-answer p1 (PLam v (= v (* (/ 22 105) (Pi)))))

