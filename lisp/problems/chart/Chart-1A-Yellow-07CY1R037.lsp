;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R037
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam pair
      (exists (x y) (&&
        (= x (fst pair))
        (= y (snd pair))
        (is-natural-number x)
        (is-natural-number y)
        (= 33 (+ (* 2 x) (* 3 y)))
      ))
    )))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y)(&&
      (minimum
        (set-by-def (PLam pair
          (exists (x0 y0) (&&
            (= x0 (fst pair))
            (= y0 (snd pair))
            (is-natural-number x0)
            (is-natural-number y0)
            (= 33 (+ (* 2 x0) (* 3 y0)))
            (<= 10 x0)
          ))
        ))
        (Lam lhs (PLam rhs (int.< (fst lhs) (fst rhs))))
        (pair x y)
      )
      (= answer (list-of x y))
    ))
  )
)

(def-answer p1 (PLam n (= n 5)))

(def-answer p2 (PLam answer (= answer (list-of 12 3))))

