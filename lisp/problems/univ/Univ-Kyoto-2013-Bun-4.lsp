;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2013, Humanities Course, Problem 4
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Let ${\alpha}$ and ${\beta}$ be real numbers. On the $xy$ plane, the
;; circle $C$ centered at the point $(0, 3)$ and the parabola
;; $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$ share the point
;; $P(\sqrt{3}, 0)$ and the tangent at $P$. Answer the following
;; questions:
;;
;; (1) Find the values of ${\alpha}$ and ${\beta}$.
;;
;; (2) Find the area of the region enclosed by the circle $C$, the
;; parabola $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$, and the $y$ axis.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (Ans) (exists (a1 a2 b1 b2 alpha beta)
    (let* (
        (P  (point (sqrt 3) 0))
        (c (point 0 3))
        (r (distance c P))
        (C  (circle c r))
        (F (graph-of (poly-fun (list-of (- beta) alpha (-(/ 1 3))))))
        (l (line (point a1 a2) (point b1 b2)))
      )
      (&&
        (tangent C l P)
        (tangent F l P)
        (= Ans (list-of alpha beta))
      )
    )
  ))
)

(def-answer p1 (PLam Ans (= Ans (list-of (sqrt 3) 2))))

(def-directive
  p2
  (Find (S) (exists (a1 a2 b1 b2 alpha beta)
    (let* (
        (P  (point (sqrt 3) 0))
        (c (point 0 3))
        (r (distance c P))
        (C  (circle c r))
        (F (graph-of (poly-fun (list-of (- beta) alpha (-(/ 1 3))))))
        (l (line (point a1 a2) (point b1 b2)))
      )
      (&&
        (tangent C l P)
        (tangent F l P)
        (= S (area-of (shape-enclosed-by (list-of C F (y-axis)))))
      )
    )
  ))
)

(def-answer p2 (PLam S (= S (+ (* (/ 7 3) (sqrt 3)) (- (Pi))))))

