;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E060
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (x)
    (&& (is-natural-number x)
      (= (^ x 2) (+ (+ x 1) (+ x 2)))
    )
  )
)

(def-answer p (PLam x (= x 3)))

