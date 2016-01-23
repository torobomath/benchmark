;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP159
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C) (->
      (&& (is-triangle A B C)
        (= (cos-of-angle (angle A B C)) (cos (* 2 (rad-of-angle (angle B C A)))))
      )
      (= (- (distance^2 A C) (distance^2 A B)) (* (distance A B) (distance B C)))
    ))
  )
)

