;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2013, Humanities Course, Problem 2
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; For the parallelogram $ABCD$, let $E$ be the point that internally
;; divides the side $AB$ in a ratio of $1:1$, $F$ the point that
;; internally divides the side $BC$ in a ratio of $2:1$, and $G$, the
;; point that internally divides the side $CD$ in a ratio of $3:1$. Let
;; $P$ be the intersection of the line segments $CE$ and $FG$, let $Q$
;; be the intersection of the extended line of the line segment $AP$ and
;; the side $BC$, then find the ratio $AP:PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (r)
    (exists (p1 p2 d1 d2 q1 q2)
      (let* (
          (u (vec2d 1 0))
          (v (vec2d d1 d2))
          (A (origin))
          (B (vec->point u))
          (C (vec->point (v+ u v)))
          (D (vec->point v))
          (E (vec->point (v+ (sv* (/ 1 2) (vec (origin) A)) (sv* (/ 1 2) (vec (origin) B)))))
          (F (vec->point (v+ (sv* (/ 1 3) (vec (origin) B)) (sv* (/ 2 3) (vec (origin) C)))))
          (G (vec->point (v+ (sv* (/ 1 4) (vec (origin) C)) (sv* (/ 3 4) (vec (origin) D)))))
          (P (point p1 p2))
          (Q (point q1 q2))
        )
        (&& (< 0 d2)
          (lines-intersect-at (list-of (line C E) (line F G)) P)
          (lines-intersect-at (list-of (line A P) (line B C)) Q)
          (= r (sqrt (/ (distance^2 P Q) (distance^2 A P))))
        )
      )
    )
  )
)

(def-answer p (PLam r (= r (/ 3 19))))

