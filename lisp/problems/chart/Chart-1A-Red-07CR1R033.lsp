;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R033
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (x)
    (&& (is-natural-number x)
      (<= (+ (* 3 x) -5) (+ (- x) 7))
    )
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x)
      (maximum
        (set-by-def (PLam x0 (< (+ (* 4 x0) -3) (+ (* 2 x0) 5))))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        x
      )
    )
  )
)

(def-answer p1 (PLam x (|| (= x 1) (= x 2) (= x 3))))

(def-answer p2 (PLam x (= x 3)))

