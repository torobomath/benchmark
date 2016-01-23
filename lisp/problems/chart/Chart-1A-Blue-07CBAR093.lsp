;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR093
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C P Q R O S)
                (-> (&& (is-triangle A B C)
                        (on P (seg B C))
                        (on Q (seg C A))
                        (on R (seg A B))
                        (on O (seg A P))
                        (on O (seg B Q))
                        (on O (seg C R))
                        (intersect (line Q R) (line B C) S))
                    (= (/ (length-of (seg B P)) (length-of (seg P C)))
                       (/ (length-of (seg B S)) (length-of (seg S C))))))))

(def-directive
  p2
  (Find (anglePAS)
        (exists (A B C P Q R O S)
                (&& (is-triangle A B C)
                    (on P (seg B C))
                    (on Q (seg C A))
                    (on R (seg A B))
                    (on O (seg A P))
                    (on O (seg B Q))
                    (on O (seg C R))
                    (intersect (line Q R) (line B C) S)
                    (is-incenter-of O (triangle A B C))
                    (= anglePAS (rad-of-angle (angle P A S)))))))

(def-answer p2 (PLam anglePAS (= anglePAS (* 90 (Degree)))))

