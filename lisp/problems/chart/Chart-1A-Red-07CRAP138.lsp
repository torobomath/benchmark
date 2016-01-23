;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP138
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Show
    (forall (a b n) (->
      (&& (is-odd-number a)
        (is-odd-number b)
        (is-integer n)
      )
      (! (= 0 (+ (+ (^ n 2) (* a n)) b)))
    ))
  )
)

