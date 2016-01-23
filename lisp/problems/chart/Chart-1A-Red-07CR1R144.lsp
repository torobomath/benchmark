;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R144
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 3d)

(def-directive p
  (Show
    (forall(A B C) (->
      (is-acute-triangle A B C)
      (exists (D) (&&
        (is-tetrahedron A B C D)
        (congruent (triangle A B C) (triangle A B D))
        (congruent (triangle A B C) (triangle B C D))
        (congruent (triangle A B C) (triangle C A D))
      ))
    ))
  )
)

