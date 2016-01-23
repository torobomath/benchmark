;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1987, Problem 2
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-11
;;
;; <PROBLEM-TEXT>
;; In an acute-angled triangle $ABC$ the interior bisector of the angle $A$
;; intersects $BC$ at $L$ and intersects the circumcircle of $ABC$ again at $N$. From
;; point $L$ perpendiculars are drawn to $AB$ and $AC$, the feet of these
;; perpendiculars being $K$ and $M$ respectively. Prove that the quadrilateral $AKNM$
;; and the triangle $ABC$ have equal areas.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C L N K M Circle)
      (-> (&& (is-acute-triangle A B C)
              (is-angle-bisector (line A L) (angle C A B))
              (on L (line B C))
              (circle-type Circle)
              (is-inscribed-in (triangle A B C) Circle)
              (intersect (line A L) Circle N)
              (! (= A N))
              (= K (foot-of-perpendicular-line-from-to L (line A B)))
              (= M (foot-of-perpendicular-line-from-to L (line A C))))
          (= (area-of (triangle A B C)) (area-of (square A K N M)))))))

