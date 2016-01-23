;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2011, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Consider the four points $O(0, 0, 0)$, $A(0, 2, 3)$, $B(1, 0, 3)$,
;; and $C(1, 2, 0)$ in a space. Answer the following questions:
;;
;; (1) Find the coordinates of the center $D$ of the spherical surface
;; containing the four points $O$, $A$, $B$, and $C$.
;;
;; (2) Draw a perpendicular from the point $D$ to the plane containing
;; the four points $A$, $B$, and $C$, and let $F$ be the intersection.
;; Find the length of the line segment $DF$.
;;
;; (3) Find the volume of the tetrahedron $ABCD$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (D)
        (exists (r S)
                (&& (= S (sphere D r))
                    (on (origin) S)
                    (on (point 0 2 3) S)
                    (on (point 1 0 3) S)
                    (on (point 1 2 0) S)))))

(def-directive
  p2
  (Find (DF)
        (exists (O A B C D r S ABC F)
                (&& (= S (sphere D r))
                    (= O (origin))
                    (= A (point 0 2 3))
                    (= B (point 1 0 3))
                    (= C (point 1 2 0))
                    (on O S)
                    (on A S)
                    (on B S)
                    (on C S)
                    (plane-type ABC)
                    (on A ABC)
                    (on B ABC)
                    (on C ABC)
                    (on F ABC)
                    (is-normal-vector-of (vec D F) ABC)
                    (= DF (distance D F))))))

(def-directive
  p3
  (Find (V)
        (exists (O A B C D r S)
                (&& (= S (sphere D r))
                    (= O (origin))
                    (= A (point 0 2 3))
                    (= B (point 1 0 3))
                    (= C (point 1 2 0))
                    (on O S)
                    (on A S)
                    (on B S)
                    (on C S)
                    (= V (volume-of (tetrahedron A B C D)))))))

(def-answer p1 (PLam D (= D (point (/ 1 2) 1 (/ 3 2)))))

(def-answer p2 (PLam DF (= DF (/ 3 7))))

(def-answer p3 (PLam V (= V (/ 1 2))))

