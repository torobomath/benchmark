;; DOMAIN:    Geometry, transformational geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1992, Problem 4
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; In the plane let $C$ be a circle, $L$ a line tangent to the circle $C$, and $M$ a
;; point on $L$. Find the locus of all points $P$ with the following property: there
;; exists two points $Q$, $R$ on $L$ such that $M$ is the midpoint of $QR$ and $C$ is
;; the inscribed circle of triangle $PQR$.
;; </PROBLEM-TEXT>

(namespace 2d)

;;@ NOTE:

;;@ L is set to the x-axis.

;;@ C is set to x^2 + (y - r)^2 = r^2 where r > 0.

;;@ M is set to (Mx, 0).

(def-directive p
  (Find (answer)
  (&& (< 0 r)
      (exists (L C M) (&&
    (= L (x-axis))
    (= C (circle (point 0 r) r))
    (< 0 r)
    (= M (point Mx 0))
    (= answer (shape-of-cpfun (PLam P (exists (Q R) (&&
      (on Q L)
      (on R L)
      (= M (midpoint-of Q R))
      (is-triangle P Q R)
      (is-inscribed-in C (triangle P Q R))
    )))))
      ))
  )
))

(def-answer p (PLam answer (&&
  (< 0 r)
  (exists (C L lp M X Y Z U) (&&
    (= C (circle (point 0 r) r))
    (= answer (shape-of-cpfun (PLam p (on p (inner-part-of (half-line Z U))))))
    (= L (x-axis))
    (tangent L C X)
    (is-diameter-of (seg X Z) C)
    (= M (point Mx 0))
    (on Y L)
    (point-symmetry X Y M)
    (= lp (line Y Z))
    (point-symmetry Y U Z)
  ))
)))

