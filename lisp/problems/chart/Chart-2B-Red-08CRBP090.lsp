;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP090
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 3d)

(def-directive p
  (Show
    (forall (A B C D E F G H) (->
      (is-parallelopiped A B C D E F G H)
      (&& (= (midpoint-of A G) (midpoint-of B H))
        (= (midpoint-of A G) (midpoint-of C E))
        (= (midpoint-of A G) (midpoint-of D F))
      )
    ))
  )
)

