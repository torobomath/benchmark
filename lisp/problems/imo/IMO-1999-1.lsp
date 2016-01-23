;; DOMAIN:    Geometry, polyhedrons
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 1999, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Determine all finite sets S of at least three points in the plane
;; which satisfy the following condition:
;; for any two distinct points A and B in S, the perpendicular bisector
;; of the line segment AB is an axis of symmetry for S.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (S)
        (&& (int.<= 3 (list-len S))
            (forall (A B P l)
                    (-> (&& (! (= A B))
                            (member A S)
                            (member B S)
                            (member P S)
                            (line-type l)
                            (is-perp-bisector l (seg A B)))
                        (exists (Q R)
                                (&& (member Q S)
                                    (perpendicular (line P Q)
                                                   l)
                                    (intersect l (line P Q) R)
                                    (= (distance P R)
                                       (distance Q R)))))))))

(def-answer p (PLam S (is-regular-polygon (polygon S))))

