;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR107
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C P) (->
      (&& (is-triangle A B C)
        (! (= A P))
        (is-angle-bisector (line A P) (angle B A (vec-translate A (vec C A))))
      )
      (< (+ (distance A B) (distance A C)) (+ (distance P B) (distance P C)))
    ))
  )
)

