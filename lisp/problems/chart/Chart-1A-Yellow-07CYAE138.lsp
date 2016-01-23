;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE138
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C G)
      (->
        (&&
          (is-triangle A B C)
          (= G (centroid-of (triangle A B C)))
        )
        (= (+ (^ (length-of (seg A B)) 2) (^ (length-of (seg C B)) 2) (^ (length-of (seg A C)) 2))
            (* 3 (+ (^ (length-of (seg A G)) 2) (^ (length-of (seg B G)) 2) (^ (length-of (seg C G)) 2))))
      )
    )
  )
)

