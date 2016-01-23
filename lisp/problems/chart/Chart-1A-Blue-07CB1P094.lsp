;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P094
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p2
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 0 (+ (+ (+ (+ (+ (* 2 (^ x 2)) (* 3 (* x y))) (* -2 (^ y 2))) (* -3 x)) (* 4 y)) -5))
    ))
  )
)

(def-answer p2 (PLam answer (|| (= answer (list-of 1 2)) (= answer (list-of -1 0)))))

