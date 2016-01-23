;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP200
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Find (BP)
    (forall (A B C P circle) (->
      (&& (= 6 (distance A B))
        (= 8 (distance B C))
        (= 4 (distance C A))
        (circle-type circle)
        (is-inscribed-in circle (triangle A B C))
        (on P (line B C))
        (on P circle)
      )
      (= BP (distance B P))
    ))
  )
)

(def-answer p (PLam BP (= BP 5)))

