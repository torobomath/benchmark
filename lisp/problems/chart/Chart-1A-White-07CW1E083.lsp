;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E083
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (minimum
      (set-by-def (PLam n0 (&&
        (is-natural-number n0)
        (rat.<= (rat.ratio (+ 9 (* -7 n0)) 3)
            (rat.ratio (- (- (- n0) 1) (* 3 (- n0 2))) 4))
      )))
      (Lam lhs (PLam rhs (int.< lhs rhs)))
      n
    )
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x)
      (< (- (* 2 x) 1) (* 3 (+ x 1)))
      (<= (- x 4) (- 3 (* 2 x)))
    )
  )
)

(def-answer p1 (PLam n (= n 5)))

(def-answer p2 (PLam x (|| (= x -3) (= x -2) (= x -1) (= x 0) (= x 1) (= x 2))))

