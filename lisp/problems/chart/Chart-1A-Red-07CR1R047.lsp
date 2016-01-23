;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R047
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (= (rat.ratio 1 2) (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 3 y))))
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
      (= (rat.int->rat 1) (rat.+ (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 3 y))) (rat.ratio 1 (* 2 z))))
    ))
  )
)

(def-answer p1 (PLam answer (|| (= answer (list-of 1 2)) (= answer (list-of 2 1)))))

(def-answer p2 (PLam answer (|| (= answer (list-of 1 2 1)) (= answer (list-of 2 1 1)))))

