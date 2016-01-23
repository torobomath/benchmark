;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR071
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Show
    (forall (A B C) (->
      (&& (is-triangle A B C)
        (= 2 (distance A B))
        (= 4 (distance B C))
        (= 3 (distance C A))
      )
      (&& (< (cos-of-angle (angle C A B)) (cos-of-angle (angle A B C)))
        (< (cos-of-angle (angle A B C)) (cos-of-angle (angle B C A)))
      )
    ))
  )
)

(def-directive p2
  (Show
    (forall (A B C t) (->
      (&& (is-triangle A B C)
        (= t (cos-of-angle (angle C A B)))
        (< (/ 1 2) t) (< t (/ 1 (sqrt 2)))
        (= 0 (+ (* 64 (^ t 6)) (+ (* -96 (^ t 4)) (+ (* 36 (^ t 2)) -3))))
        (= (/ 1 2) (cos-of-angle (angle A B C)))
      )
      (&& (< (distance B C) (distance C A))
        (< (distance C A) (distance A B))
      )
    ))
  )
)

