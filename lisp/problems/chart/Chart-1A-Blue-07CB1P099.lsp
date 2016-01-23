;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P099
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x) (< x 10)
      (is-natural-number y) (< y 10)
      (= 55 (+ (* 4 x) (* 3 y)))
    ))
  )
)

(def-directive p21
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam pair
      (exists (x y) (&&
        (= x (fst pair))
        (= y (snd pair))
        (is-natural-number x) (<= x 20)
        (is-natural-number y) (<= y 20)
        (= 55 (+ (* 4 x) (* 3 y)))
      ))
    )))
  )
)

(def-directive p22
  (Find (answer)
    (exists (min) (&&
      (= answer (list-of (fst-of-3 min) (snd-of-3 min)))
      (minimum
        (set-by-def (PLam triple
          (exists (x y xy) (&&
            (= x (fst-of-3 triple))
            (= y (snd-of-3 triple))
            (= xy (third-of-3 triple))
            (&& (is-natural-number x) (<= x 20)
              (is-natural-number y) (<= y 20)
              (= 55 (+ (* 4 x) (* 3 y)))
              (= xy (* x y))
            )
          ))
        ))
        (Lam lhs (PLam rhs (< (third-of-3 lhs) (third-of-3 rhs))))
        min
      )
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of 7 9))))

(def-answer p21 (PLam n (= n 5)))

(def-answer p22 (PLam answer (= answer (list-of 13 1))))

