;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE148
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C G P L1 L2 L3)
      (->
        (&&
          (is-triangle A B C)
          (= (centroid-of (triangle A B C)) G)
          (! (on P (line A B))) (! (on P (line C B))) (! (on P (line A C)))
          (= L1 (line A (midpoint-of B C)))
          (= L2 (line B (midpoint-of C A)))
          (= L3 (line C (midpoint-of A B)))
          (! (on P L1)) (! (on P L2)) (! (on P L3))
        )
        (= (+ (^ (length-of (seg A P)) 2)
            (^ (length-of (seg B P)) 2)
            (^ (length-of (seg C P)) 2))
           (+ (^ (length-of (seg A G)) 2)
            (^ (length-of (seg B G)) 2)
            (^ (length-of (seg C G)) 2)
            (* 3 (^ (length-of (seg P G)) 2))))
      )
    )
  )
)

