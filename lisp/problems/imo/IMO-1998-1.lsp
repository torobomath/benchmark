;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1998, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-05
;;
;; <PROBLEM-TEXT>
;; In the convex quadrilateral $ABCD$, the diagonals $AC$ and $BD$ are perpendicular
;; and the opposite sides $AB$ and $DC$ are not parallel. Suppose that the point $P$,
;; where the perpendicular bisectors of $AB$ and $DC$ meet, is inside $ABCD$. Prove
;; that $ABCD$ is a cyclic quadrilateral if and only if the triangles $ABP$ and $CDP$
;; have equal areas.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D L1 L2 P)
     (-> (&& (is-square A B C D)
               (perpendicular (line A C) (line B D))
               (! (parallel (line A B) (line D C)))
               (line-type L1) (line-type L2)
               (is-perp-bisector L1 (seg A B))
               (is-perp-bisector L2 (seg C D))
               (intersect L1 L2 P)
               (point-inside-of P (square A B C D)))
         (<-> (exists (K)
            (&& (circle-type K)
                      (is-inscribed-in (polygon (list-of A B C D)) K)))
            (= (area-of (triangle A B P))
                   (area-of (triangle C D P))))))))

