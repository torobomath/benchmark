;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR094
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (Cir A B C D E F G)
                (-> (&& (circle-type Cir)
                        (on A Cir)
                        (on B Cir)
                        (on C Cir)
                        (on D Cir)
                        (pairwise-distinct (list-of A B C D))
      (intersect (seg A B) (seg C D) E)
                        (! (= F E))
                        (parallel (line E F) (line B C))
                        (intersect (line E F) (line A D) F)
                        (tangent (line F G) Cir G))
                    (= (length-of (seg F G)) (length-of (seg E F)))))))

