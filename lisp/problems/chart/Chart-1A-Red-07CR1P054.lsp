;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P054
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (x)
    (&& (is-natural-number x)
      (< (+ (* 6 x) 5) 30)
    )
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam x
      (&& (is-natural-number x) (< x 10)
        (< (* 4 (+ x 3)) (+ (* 6 x) -1))
      )
    )))
  )
)

(def-directive p3
  (Find (x)
    (&& (is-integer x)
      (minimum
        (set-by-def (PLam x0 (< (+ (* -2 x0) 5) 12)))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        x
      )
    )
  )
)

(def-directive p4
  (Find (x)
    (&& (is-integer x)
      (maximum
        (set-by-def (PLam x0 (< 7 (+ (* 4 (- x0 2)) (* 5 (- 6 x0))))))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        x
      )
    )
  )
)

(def-answer p1 (PLam x (|| (= x 1) (= x 2) (= x 3) (= x 4))))

(def-answer p2 (PLam n (= n 3)))

(def-answer p3 (PLam x (= x -3)))

(def-answer p4 (PLam x (= x 14)))

