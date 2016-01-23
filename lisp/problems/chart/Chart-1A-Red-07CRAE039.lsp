;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE039
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Show
    (forall (a b c) (->
      (&& (is-natural-number a)
        (is-natural-number b)
        (is-natural-number c)
        (is-even-number (+ (+ a b) c))
        (is-even-number (+ (+ (* a b) (* b c)) (* c a)))
      )
      (&& (is-even-number a)
        (is-even-number b)
        (is-even-number c)
      )
    ))
  )
)

