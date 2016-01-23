;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE162
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall  (A B C D E)
      (->
        (&&
          (is-triangle A B C)
          (= (rad-of-angle (angle A B C)) (* 90 (Degree)))
          (on D (seg B C)) (! (= D B)) (! (= D C))
          (= (rad-of-angle (angle A D E)) (* 90 (Degree)))
          (= (rad-of-angle (angle D A E))
             (rad-of-angle (angle B A C)))
        )
        (exists (K) (&&
          (circle-type K)
          (on A K) (on D K) (on C K) (on E K)
        ))
      )
    )
  )
)

