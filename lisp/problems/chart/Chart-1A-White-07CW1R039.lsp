;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1R039
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (&& (is-natural-number n)
      (maximum
        (set-by-def (PLam n0 (&&
          (is-natural-number n0)
          (rat.<=
            (rat.+ (rat.ratio (+ (* 3 n0) -1) 4) (rat.ratio (- (+ (* 2 n0) -3)) 5))
            (rat.+ (rat.ratio (+ (* 7 n0) -7) 10) (rat.int->rat -1))
          )
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        n
      )
    )
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x)
      (<= (+ (* 5 x) -2) (* 2 (+ x 1)))
      (< (* -5 x) (+ (* -3 x) 4))
    )
  )
)

(def-answer p1 (PLam n (= n 5)))

(def-answer p2 (PLam x (|| (= x -1) (= x 0) (= x 1))))

