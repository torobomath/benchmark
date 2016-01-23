;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E263
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 3d)

(def-directive p
  (Find (PC)
    (forall (A B C P) (->
      (&& (is-tetrahedron A B C P)
        (= 80 (distance A B))
        (= (cos-of-angle (angle P A C)) (/ (sqrt 3) 2))
        (= (cos (* 2 (rad-of-angle (angle P A B)))) (- (/ (sqrt 3) 2)))
        (= (cos-of-angle (angle P B A)) (/ 1 2))
      )
      (= PC (distance P C))
    ))
  )
)

(def-answer p (PLam PC (= PC (* 20 (sqrt 6)))))

