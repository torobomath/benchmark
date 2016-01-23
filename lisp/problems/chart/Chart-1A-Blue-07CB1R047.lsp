;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R047
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y z) (&&
      (= z 1)
      (= answer (list-of x y))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 2 y))) (rat.ratio 1 z)))
    ))
  )
)

(def-directive p2
  (Find (z)
    (&& (is-integer z) (< 0 z)
      (exists (x y) (&&
        (is-integer x) (< 0 x)
        (is-integer y) (< 0 y)
        (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 2 y))) (rat.ratio 1 z)))
      ))
    )
  )
)

(def-directive p3
  (Find (answer)
    (exists (x y z) (&&
      (= answer (list-of x y z))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (is-integer z) (< 0 z)
      (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 2 y))) (rat.ratio 1 z)))
    ))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 2 3))
  (= answer (list-of 4 2))
)))

(def-answer p2 (PLam z (|| (= z 1) (= z 2))))

(def-answer p3 (PLam answer (||
  (= answer (list-of 2 3 1))
  (= answer (list-of 4 2 1))
  (= answer (list-of 1 1 2))
)))

