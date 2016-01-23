;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR070
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p11
  (Show
    (forall (n) (->
      (is-integer n)
      (is-divisible-by (* n (+ n 1)) 2)
    ))
  )
)

(def-directive p12
  (Show
    (forall (n) (->
      (is-integer n)
      (is-divisible-by (* (* n (+ n 1)) (+ n 2)) 6)
    ))
  )
)

(def-directive p2
  (Show
    (forall (n) (->
      (is-integer n)
      (is-divisible-by (+ (+ (* 2 (^ n 3)) (* 3 (^ n 2))) n) 6)
    ))
  )
)

