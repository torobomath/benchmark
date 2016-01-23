;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P228
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 3d)

(def-directive p
  (Find (l)
    (forall (S A B C D) (->
      (&& (sphere-type S)
        (= 1 (radius-of S))
        (is-regular-tetrahedron A B C D)
        (all
          (PLam side (tangent side S))
          (list-of (line A B) (line A C) (line A D) (line B C) (line B D) (line C D))
        )
      )
      (= l (distance A B))
    ))
  )
)

(def-answer p (PLam l (= l (* 2 (sqrt 2)))))

