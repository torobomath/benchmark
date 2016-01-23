;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2007, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; In triangle ABC the bisector of angle BCA intersects the circumcircle
;; again at R, the perpendicular bisector of BC at P, and the perpendicular
;; bisector of AC at Q. The midpoint of BC is K and the midpoint of AC is L.
;; Prove that the triangles RPK and RQL have the same area.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C l S P R Q  m n K L)
                (-> (&& (is-triangle A B C)
                        (line-type l)
                        (line-type m)
                        (line-type n)
                        (is-angle-bisector l (angle B C A))
                        (circle-type S)
                        (is-inscribed-in (triangle A B C) S)
                        (intersect l S R)
                        (is-perp-bisector m (seg B C))
                        (intersect l m P)
                        (is-perp-bisector n (seg A C))
                        (intersect l n Q)
                        (= K (midpoint-of B C))
                        (= L (midpoint-of A C)))
                    (= (area-of (triangle P R K))
                       (area-of (triangle R Q L)))))))

