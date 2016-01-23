;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E063
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x)
      (is-natural-number y)
      (= 50 (+ (* 9 x) (* 4 y)))
    ))
  )
)

(def-answer p (PLam answer (= answer (list-of 2 8))))

