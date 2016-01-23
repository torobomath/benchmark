;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E106
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (n)
    (&& (is-natural-number n)
      (= (+ (^ n 2) (^ (+ n 1) 2)) (+ (* n (+ n 1)) 13))
    )
  )
)

(def-answer p (PLam n (= n 3)))

