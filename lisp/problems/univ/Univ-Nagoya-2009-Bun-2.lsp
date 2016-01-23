;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2009, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-06
;;
;; <PROBLEM-TEXT>
;; Assume that the parabola $y = a x^2$ ( $a > 0$) and the circle
;; $(x - b)^2 +(y - 1)^2 = 1$ ( $b > 0$) are in contact with each other
;; at the point $P(p, q)$, where $0 < p < b$. Let $R$ be the
;; intersection of the $x$ axis and the perpendicular drawn from the
;; center $Q$ of this circle to the $x$ axis, and assume that
;; $\angle POR = 120^{\circ}$. Here, the fact the parabola and the
;; circle are in contact with each other at the point $P$ means that $P$
;; is a common point of the parabola and the circle, and the tangents to
;; the parabola at the point $P$ matches the tangent to the circle at
;; the point $P$.
;;
;; (1) Find the values of $a$ and $b$.
;;
;; (2) Find the area of the region enclosed by the $x$ axis, the
;; parabola, and the shorter one of the arcs connecting the points $P$
;; and $R$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (ab)
    (exists (a b p q)
      (let* ((Q (point b 1))
          (P (point p q))
          (R (foot-of-perpendicular-line-from-to Q (x-axis))))
            (&& (< 0 a)
         (< 0 p)
         (< p b)
         (= (* (/ 2 3) (Pi)) (rad-of-angle (angle P Q R)))
         (on P (graph-of (poly-fun (list-of 0 0 a))))
         (on P (circle Q 1))
         (exists (l)
          (&& (line-type l)
        (tangent (graph-of (poly-fun (list-of 0 0 a))) l P)
        (tangent (circle Q 1) l P)))
         (= ab (list-of a b)))))))

(def-answer p1 (PLam ab (= ab (list-of (/ 1 2) (* (/ 3 2) (sqrt 3))))))

(def-directive
  p2
  (Find (x)
  (exists (a b p q)
         (let* ((Q (point b 1))
          (P (point p q))
          (R (foot-of-perpendicular-line-from-to Q (x-axis))))
     (&& (< 0 a)
         (< 0 p)
         (< p b)
         (= (* (/ 2 3) (Pi)) (rad-of-angle (angle P Q R)))
         (on P (graph-of (poly-fun (list-of 0 0 a))))
         (on P (circle Q 1))
         (exists (l)
          (&& (line-type l)
        (tangent (graph-of (poly-fun (list-of 0 0 a))) l P)
        (tangent (circle Q 1) l P)))
         (= x (area-of (shape-enclosed-by (list-of
                   (graph-of (poly-fun (list-of 0 0 a)))
                   (x-axis)
                   (arc Q 1 (* (/ 150 180) (Pi))
                  (* (/ 3 2) (Pi))))))))))))

(def-answer p2 (PLam x (= x (- (* (/ 9 8) (sqrt 3)) (* (/ 1 3) (Pi))))))

