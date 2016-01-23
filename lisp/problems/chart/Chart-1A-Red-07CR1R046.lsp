;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R046
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 12 (+ (^ x 2) (* -4 (^ y 2))))
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

(def-answer p1 (PLam answer (|| (= answer (list-of 4 -1)) (= answer (list-of 4 1)) (= answer (list-of -4 1)) (= answer (list-of -4 -1)))))

(def-answer p2 (PLam answer (|| (= answer (list-of 3 6)) (= answer (list-of 5 4)) (= answer (list-of 1 0)) (= answer (list-of -1 2)))))

