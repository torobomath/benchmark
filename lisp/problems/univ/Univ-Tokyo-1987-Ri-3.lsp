;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Science Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-17
;;
;; <PROBLEM-TEXT>
;; Consider the spherical surface $K$ with the center at the point
;; $P(0, 0, 1)$ and the radius $1$ in the $x y z$ space.
;;
;; When the point $Q(a, b, c)$ on $K$ moves on $K$ under the conditions
;; $a>0$, $b>0$, and $c>1$, let $L$ be the plane in contact with $K$ at
;; $Q$, and let $A$, $B$, and $C$ be the intersections of $L$ and the
;; $x$, $y$, and $z$ axes, respectively.
;; Find the minimum area of the triangle $ABC$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (S_min)
        (exists (S_set K)
                (&& (minimum S_set S_min)
                    (= K (sphere (point 0 0 1) 1))
                    (= S_set (set-by-def (PLam S (exists (a b c Q L A B C)
                                                         (&& (= Q (point a b c))
                                                             (on Q K)
                                                             (> a 0)
                                                             (> b 0)
                                                             (> c 1)
                                                             (plane-type L)
                                                             (tangent L K Q)
                                                             (on A (intersection L (x-axis)))
                                                             (on B (intersection L (y-axis)))
                                                             (on C (intersection L (z-axis)))
                                                             (= S (area-of (triangle A B C))))))))))))

(def-answer p (PLam S_min (= S_min (+ 3 (* 2 (sqrt 2))))))

