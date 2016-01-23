;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2003, Science Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-04
;;
;; <PROBLEM-TEXT>
;; Let $P$ and $Q$ be the intersections of the circumference $A$:
;; $x^2 + y^2 = 1$ with a radius of $1$ and the straight line $l$:
;; $y = d$ ( $0 < d < 1$) on the coordinate plane with the origin $O$.
;; The point $R(x, y)$ on the circumference $A$ moves in the range of
;; $y > d$. Let $S$ be the intersection of the line segments $OR$ and
;; $PQ$, and let $T$ be the foot of the perpendicular drawn from the
;; point $R$ to the line segment $PQ$, then represent the maximum length
;; of the line segment $ST$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (max)
  (exists (P Q)
    (&& (< 0 d)
        (< d 1)
        (intersect (circle (origin) 1) (graph-of (poly-fun (list-of d))) P)
        (intersect (circle (origin) 1) (graph-of (poly-fun (list-of d))) Q)
        (! (= P Q))
        (maximum (set-by-def (PLam st
                 (exists (R S)
                   (&& (< d (y-coord R))
                 (on R (circle (origin) 1))
                 (intersect (seg (origin) R) (seg P Q) S)
                 (= st (distance S (foot-of-perpendicular-line-from-to R (line P Q))))))))
           max)))))

(def-answer
  p1
  (PLam max (= max (^ (- 1 (^ d (/ 2 3))) (/ 3 2)))))

