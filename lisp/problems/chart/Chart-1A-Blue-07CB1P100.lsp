;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P100
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 12 (+ (* (^ x 2) y) (* -3 y)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (= (rat.ratio 1 4) (rat.+ (rat.ratio 1 x) (rat.ratio 1 y)))
    ))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 0 -4))
  (= answer (list-of 1 -6))
  (= answer (list-of -1 -6))
  (= answer (list-of 2 12))
  (= answer (list-of -2 12))
  (= answer (list-of 3 2))
  (= answer (list-of -3 2))
)))

(def-answer p2 (PLam answer (||
  (= answer (list-of 5 20))
  (= answer (list-of 6 12))
  (= answer (list-of 8 8))
  (= answer (list-of 12 6))
  (= answer (list-of 20 5))
)))

