;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E072
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y z) (&&
      (= answer (list-of x y z))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (is-integer z) (< 0 z)
      (= 15 (+ (+ (* 4 x) (* 2 y)) z))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 2 (+ (+ (* 2 (^ x 2)) (* x y)) (- (^ y 2))))
    ))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 1 1 9))
  (= answer (list-of 1 2 7))
  (= answer (list-of 1 3 5))
  (= answer (list-of 1 4 3))
  (= answer (list-of 1 5 1))
  (= answer (list-of 2 1 5))
  (= answer (list-of 2 2 3))
  (= answer (list-of 2 3 1))
  (= answer (list-of 3 1 1))
)))

(def-answer p2 (PLam answer (||
  (= answer (list-of 1 0))
  (= answer (list-of 1 1))
  (= answer (list-of -1 0))
  (= answer (list-of -1 -1))
)))

