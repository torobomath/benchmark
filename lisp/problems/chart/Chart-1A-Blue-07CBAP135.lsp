;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP135
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Show
    (forall (n) (->
      (&& (is-integer n)
        (is-odd-number n)
      )
      (= 1 (mod (^ n 2) 8))
    ))
  )
)

(def-directive p2
  (Show
    (forall (x y z w) (->
      (&& (is-natural-number x)
        (is-natural-number y)
        (is-natural-number z)
        (is-natural-number w)
        (= (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (^ w 2))
      )
      (|| (&& (is-even-number x) (is-even-number y))
        (&& (is-even-number y) (is-even-number z))
        (&& (is-even-number z) (is-even-number x))
      )
    ))
  )
)

