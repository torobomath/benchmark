;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1997, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-27
;;
;; <PROBLEM-TEXT>
;; The angle at $A$ is the smallest angle of triangle $ABC$. The points $B$ and $C$
;; divide the circumcircle of the triangle into two arcs. Let $U$ be an interior
;; point of the arc between $B$ and $C$ which does not contain $A$. The perpendicular
;; bisectors of $AB$ and $AC$ meet the line $AU$ at $V$ and $W$, respectively. The
;; lines $BV$ and $CW$ meet at $T$. Show that
;; ¥[
;; AU = T B + T C.
;; ¥]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C U V W T c r s t l m)
                (-> (&& (is-triangle A B C)
                        (<= (rad-of-angle (angle C A B)) (rad-of-angle (angle A B C)))
                        (<= (rad-of-angle (angle C A B)) (rad-of-angle (angle B C A)))
                        (is-inscribed-in (triangle A B C) (circle c r))
                        (real-number s)
                        (real-number t)
                        (! (on A (arc c r s t)))
                        (|| (&& (= (arc-ini-point (arc c r s t)) B)
                                (= (arc-end-point (arc c r s t)) C))
                            (&& (= (arc-ini-point (arc c r s t)) C)
                                (= (arc-end-point (arc c r s t)) B)))
                        (on U (arc c r s t))
                        (! (= U B))
                        (! (= U C))
                        (line-type l)
                        (line-type m)
                        (is-perp-bisector l (seg A B))
                        (is-perp-bisector m (seg A C))
                        (intersect l (line A U) V)
                        (intersect l (line A U) W)
                        (intersect (line B V) (line C W) T))
                    (= (distance A U)
                       (+ (distance T B) (distance T C)))))))

