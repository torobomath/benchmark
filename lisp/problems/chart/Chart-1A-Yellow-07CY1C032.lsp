;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1C032
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (a)
    (forall (A B C) (->
      (&& (= 3 (distance C A))
        (= (sqrt 2) (distance A B))
        (= (/ 1 (sqrt 2)) (cos-of-angle (angle C A B)))
      )
      (= a (distance B C))
    ))
  )
)

(def-directive p2
  (Find (cosB)
    (forall (A B C) (->
      (&& (= 5 (distance B C))
        (= 7 (distance C A))
        (= 8 (distance A B))
      )
      (= cosB (cos-of-angle (angle C B A)))
    ))
  )
)

(def-answer p1 (PLam a (= a (sqrt 5))))

(def-answer p2 (PLam cosB (= cosB (/ 1 2))))

