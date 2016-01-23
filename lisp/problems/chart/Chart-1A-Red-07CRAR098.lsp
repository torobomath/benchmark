;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR098
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C H) (->
      (&& (is-triangle A B C)
        (is-right (angle C A B))
        (= H (foot-of-perpendicular-line-from-to A (line B C)))
      )
      (= (* (distance^2 A B) (distance C H)) (* (distance^2 A C) (distance B H)))
    ))
  )
)

