;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R045
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x)
      (is-natural-number y)
      (= 17 (+ (* 2 x) (* 3 y)))
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
      (= 10 (+ (+ x y) z))
      (= 25 (+ (+ (* 4 x) (* 2 y)) z))
    ))
  )
)

(def-answer p1 (PLam answer (|| (= answer (list-of 1 5))
                (= answer (list-of 4 3))
                (= answer (list-of 7 1)))))

(def-answer p2 (PLam answer (|| (= answer (list-of 3 6 1))
                (= answer (list-of 4 3 3)))))

