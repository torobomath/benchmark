;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P082
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Find (answer)
    (&& (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (< 0 x) (< x y)
      (is-prime m) (<= 3 m)
      (= (rat.ratio 2 m) (rat.+ (rat.ratio 1 x) (rat.ratio 1 y)))
    )
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (is-prime m) (<= 3 m)
  (< 0 x) (< x y)
  (= x (div (+ m 1) 2))
  (= y (div (* m (+ m 1)) 2))
)))

