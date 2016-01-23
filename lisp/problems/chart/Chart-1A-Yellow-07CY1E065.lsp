;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E065
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y z) (&&
      (= x 1)
      (= answer (list-of y z))
      (is-integer y) (< 0 y)
      (is-integer z) (< 0 z)
      (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 x) (rat.ratio 1 (* 2 y))) (rat.ratio 1 (* 3 z))))
    ))
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x) (< 0 x)
      (exists (y z) (&&
        (is-integer y) (< 0 y)
        (is-integer z) (< 0 z)
        (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 x) (rat.ratio 1 (* 2 y))) (rat.ratio 1 (* 3 z))))
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
      (= (rat.ratio 4 3) (rat.+ (rat.+ (rat.ratio 1 x) (rat.ratio 1 (* 2 y))) (rat.ratio 1 (* 3 z))))
    ))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 2 4))
  (= answer (list-of 3 2))
)))

(def-answer p2 (PLam x (|| (= x 1) (= x 2))))

(def-answer p3 (PLam answer (||
  (= answer (list-of 1 2 4))
  (= answer (list-of 1 3 2))
  (= answer (list-of 2 1 1))
)))

