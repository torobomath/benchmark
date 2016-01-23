;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1E017
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (a b) (&&
      (= answer (list-of a b))
      (is-natural-number a)
      (is-natural-number b)
      (< a b)
      (rat.< (rat.+ (rat.ratio 1 a) (rat.ratio 1 b)) (rat.ratio 1 4))
      (minimum
        (set-by-def (PLam b0 (&&
          (is-natural-number b0)
          (exists (a0) (&&
            (is-natural-number a0)
            (< a0 b0)
            (rat.< (rat.+ (rat.ratio 1 a0) (rat.ratio 1 b0)) (rat.ratio 1 4))
          ))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        b
      )
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (a b c) (&&
      (= answer (list-of a b c))
      (is-natural-number a)
      (is-natural-number b)
      (is-natural-number c)
      (< a b) (< b c)
      (rat.< (rat.+ (rat.+ (rat.ratio 1 a) (rat.ratio 1 b)) (rat.ratio 1 c)) (rat.ratio 1 3))
      (minimum
        (set-by-def (PLam c0 (&&
          (is-natural-number c0)
          (exists (a0 b0) (&&
            (is-natural-number b0)
            (is-natural-number c0)
            (< a0 b0) (< b0 c0)
            (rat.< (rat.+ (rat.+ (rat.ratio 1 a0) (rat.ratio 1 b0)) (rat.ratio 1 c0)) (rat.ratio 1 3))
          ))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        c
      )
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of 8 9))))

(def-answer p2 (PLam answer (||
  (= answer (list-of 8 10 11))
  (= answer (list-of 9 10 11))
  (= answer (list-of 8 9 11))
)))

