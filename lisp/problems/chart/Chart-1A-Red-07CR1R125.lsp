;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R125
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Find (AD)
    (forall (A B C D) (->
      (&& (= 15 (distance A B))
        (= 18 (distance B C))
        (= 12 (distance C A))
        (on D (seg B C))
        (is-angle-bisector (line A D) (angle B A C))
      )
      (= AD (distance A D))
    ))
  )
)

(def-answer p (PLam AD (= AD 10)))

