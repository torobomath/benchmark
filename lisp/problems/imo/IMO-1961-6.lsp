;; DOMAIN:    Geometry, coordinates and vectors in 3D space
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Consider a plane $\epsilon$ and three non-collinear points $A$, $B$, $C$ on the same
;; side of $\epsilon$; suppose the plane determined by these three points is
;; not parallel to $\epsilon$. In plane $\epsilon$ take three arbitrary points $A'$, $B'$, $C'$.
;; Let $L$, $M$, $N$ be the midpoints of segments $AA'$, $BB'$, $CC'$; let $G$ be the
;; centroid of triangle $LMN$. (We will not consider positions of the
;; points $A'$, $B'$, $C'$ such that the points $L$, $M$, $N$ do not form a triangle.)
;; What is the locus of point $G$ as $A'$ , $B'$ , $C'$ range independently over
;; the plane $\epsilon$.
;; </PROBLEM-TEXT>

(namespace 3d)

;;@ NOTE: eps is set to the xy-plane

(def-directive p
  (Find (Gs)
  (exists (eps A B C)
    (&& (= eps (xy-plane))
            (= A (point Ax Ay Az))
            (= B (point Bx By Bz))
            (= C (point Cx Cy Cz))
            (< 0 Az)
            (< 0 Bz)
            (< 0 Cz)
        (! (colinear A B C))
        (! (parallel (plane1 A B C) eps))
            (= Gs (shape-of-cpfun (PLam G
                                    (exists (A2 B2 C2 L M N)
                                      (&& (on A2 eps)
                                          (on B2 eps)
                                          (on C2 eps)
                                          (= (midpoint-of A A2) L)
                                          (= (midpoint-of B B2) M)
                                          (= (midpoint-of C C2) N)
                                          (is-triangle L M N)
                                          (= G (centroid-of (triangle L M N))))))))))))

(def-answer p
  (PLam Gs (&& (! (colinear (point Ax Ay Az)
                            (point Bx By Bz)
                            (point Cx Cy Cz)))
               (|| (! (= Az Bz))
                   (! (= Bz Cz))
                   (! (= Cz Az)))
               (< 0 Az)
               (< 0 Bz)
               (< 0 Cz)
               (= Gs (shape-of-cpfun (PLam G (= (z-coord G) (/ (+ Az Bz Cz) 6))))))))

