;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE151
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C D E) (->
      (&& (is-acute-triangle A B C)
        (on D (line A B))
        (on E (line A C))
        (is-angle-bisector (line B E) (angle A B C))
        (is-angle-bisector (line C D) (angle B C A))
        (parallel (line D E) (line B C))
      )
      (= (distance A B) (distance A C))
    ))
  )
)

