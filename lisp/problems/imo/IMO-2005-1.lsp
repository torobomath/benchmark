;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2005, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; Six points are chosen on the sides of an equilateral triangle
;; ABC: A1, A2 on BC, B1, B2 on CA and C1, C2 on AB, such that they are
;; the vertices of a convex hexagon A1A2B1B2C1C2 with equal side lengths.
;; Prove that the lines A1B2, B1C2 and C1A2 are concurrent.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C A1 A2 B1 B2 C1 C2)
                (-> (&& (is-triangle A B C)
                        (on A1 (seg B C))
                        (on A2 (seg B C))
                        (on B1 (seg C A))
                        (on B2 (seg C A))
                        (on C1 (seg A B))
                        (on C2 (seg A B))
                        (is-convex-shape (polygon (list-of A1 A2 B1 B2 C1 C2)))
                        (= (distance A1 A2) (distance A2 B1))
                        (= (distance A2 B1) (distance B1 B2))
                        (= (distance B1 B2) (distance B2 C1))
                        (= (distance B2 C1) (distance C2 A1))
                        (= (distance C2 A1) (distance A1 A2)))
                    (lines-intersect-at-one (list-of (line A1 B2)
                                                     (line B1 C2)
                                                     (line C1 A2)))))))

