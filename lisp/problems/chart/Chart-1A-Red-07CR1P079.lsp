;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P079
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x)
      (is-natural-number y)
      (= 50 (+ (* 9 x) (* 4 y)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y z) (&&
      (= answer (list-of x y z))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (is-integer z) (< 0 z)
      (= 19 (+ (+ x y) z))
      (= 95 (+ (+ x (* 5 y)) (* 10 z)))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of 2 8))))

(def-answer p2 (PLam answer (|| (= answer (list-of 5 10 4))
                (= answer (list-of 10 1 8)))))

