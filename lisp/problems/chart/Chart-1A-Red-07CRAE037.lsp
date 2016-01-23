;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE037
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Show
    (forall (n S) (->
      (&& (is-integer n)
        (= S (+ (+ (^ (- n 1) 3) (^ n 3)) (^ (+ n 1) 3)))
        (is-even-number S)
      )
      (is-even-number n)
    ))
  )
)

(def-directive p2
  (Show
    (forall (n S) (->
      (&& (is-integer n)
        (is-even-number S)
        (= S (+ (+ (^ (- n 1) 3) (^ n 3)) (^ (+ n 1) 3)))
      )
      (is-divisible-by S 36)
    ))
  )
)

