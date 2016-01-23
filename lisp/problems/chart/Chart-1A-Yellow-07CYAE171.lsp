;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE171
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C K D E F P) (->
      (&&
        (is-triangle A B C)
        (is-orthocenter-of P (triangle A B C))
        (! (= D A)) (! (= E B)) (! (= F C))
        (circle-type K)
        (is-inscribed-in (triangle A B C) K)
        (intersect (line A P) K D)
        (intersect (line B P) K E)
        (intersect (line C P) K F)
      )
      (is-incenter-of P (triangle D E F))
    ))
  )
)

