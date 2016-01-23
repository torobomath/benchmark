;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Consider the spherical surface
;; $S=\{(x, y, z)| x^2+y^2+z^2=1, where x, y, and z are real numbers\}$
;; with the center at the origin and the radius $1$ in the $xyz$ space,
;; and let $A$ be the fixed point $(0, 0, 1)$ on $S$. For the point
;; $P(x, y, z)$ on $S$ other than $A$, let $Q(u, v, 0)$ be the
;; intersection of the straight line $AP$ and the $xy$ plane. When the
;; point $P$ moves satisfying
;; $x^2+y^2+z^2=1, x\ge\frac{1}{k}, y\ge\frac{1}{k}, z\ge\frac{1}{k}$,
;; where $k$ is a positive constant, draw the moving range of the
;; corresponding point $Q$ on the $uv$ plane.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (uv)
        (exists (S A)
                (&& (= S (shape-of-cpfun (PLam p (= (+ (^ (x-coord p) 2)
                                                       (^ (y-coord p) 2)
                                                       (^ (z-coord p) 2))
                                                    1))))
                    (= A (point 0 0 1))
                    (exists (P Q u v)
                            (&& (! (= P A))
                                (on P S)
                                (on Q (intersection (line A P)
                                                  (xy-plane)))
                                (= u (x-coord Q))
                                (= v (y-coord Q))
                                (< 0 k)
                                (= uv (list-of u v))
                                (>= (x-coord P) (/ 1 k))
                                (>= (y-coord P) (/ 1 k))
                                (>= (z-coord P) (/ 1 k))))))))

(def-answer p (PLam uv (exists (u v) (&&
  (= uv (list-of u v))
                         (&& (<= (+ (^ (- u k) 2) (^ v 2)) (- (^ k 2) 1))
                             (<= (+ (^ u 2) (- (^ (- v k) 2))) (- (^ k 2) 1))
                             (>= (+ (^ u 2) (^ v 2)) (/ (+ k 1) (- k 1)))
                             (> k 1))))))

