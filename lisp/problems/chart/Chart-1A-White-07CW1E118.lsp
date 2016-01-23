;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E118
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (p q max) (&&
      (= answer (list-of p q max))
      (is-natural-number p)
      (is-natural-number q)
      (< (+ p q) 30)
      (= (rat.ratio (+ p 1) (+ q 3)) (rat.ratio 2 5))
      (= max (+ p q))
      (minimum
        (set-by-def (PLam v (exists (p0 q0) (&&
          (is-natural-number p0)
          (is-natural-number q0)
          (< (+ p0 q0) 30)
          (= (rat.ratio (+ p0 1) (+ q0 3)) (rat.ratio 2 5))
          (= v (+ p0 q0))
        ))))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        max
      )
    ))
  )
)

(def-answer p (PLam answer (= answer (list-of 7 17 24))))

