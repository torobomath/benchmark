;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R038
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 5 (+ (^ x 2) (* (* -2 x) y)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 0 (+ (+ (+ (* x y) (* -3 x)) (* -2 y)) 3))
    ))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 1 -2))
  (= answer (list-of 5 2))
  (= answer (list-of -1 2))
  (= answer (list-of -5 -2))
)))

(def-answer p2 (PLam answer (||
  (= answer (list-of 3 6))
  (= answer (list-of 5 4))
  (= answer (list-of 1 0))
  (= answer (list-of -1 2))
)))

