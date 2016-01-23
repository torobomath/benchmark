;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE049
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p1
  (Show
    (forall (A B C D E) (->
      (&& (is-square A B C D)
        (exists (circle) (&&
          (circle-type circle)
          (is-inscribed-in (square A B C D) circle)
        ))
        (perpendicular (line A C) (line B D))
        (intersect (line A C) (line B D) E)
      )
      (intersect (line A B) (line E (foot-of-perpendicular-line-from-to E (line C D))) (midpoint-of A B))
    ))
  )
)

(def-directive p2
  (Show
    (forall (A B C D E) (->
      (&& (is-square A B C D)
        (exists (circle) (&&
          (circle-type circle)
          (is-inscribed-in (square A B C D) circle)
        ))
        (perpendicular (line A C) (line B D))
        (intersect (line A C) (line B D) E)
      )
      (perpendicular (line C D) (line E (midpoint-of A B)))
    ))
  )
)

