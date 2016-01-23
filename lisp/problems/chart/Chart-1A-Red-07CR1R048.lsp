;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R048
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Find (x)
    (&& (is-integer x) (< 0 x)
      (= (+ (* 8 (+ x 2)) 2) (* x (+ x 1)))
    )
  )
)

(def-answer p (PLam x (= x 9)))

