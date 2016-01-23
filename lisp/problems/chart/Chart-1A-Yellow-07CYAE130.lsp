;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE130
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C M L1 L2 D E)
      (->  (&&
          (is-triangle A B C)
          (= (midpoint-of B C) M)
          (line-type L1) (line-type L2)
          (is-angle-bisector L1 (angle A M B))
          (is-angle-bisector L2 (angle A M C))
          (intersect L1 (seg A B) D)
          (intersect L2 (seg A C) E)
        )
        (parallel (line D E) (line B C))
      )
    )
  )
)

