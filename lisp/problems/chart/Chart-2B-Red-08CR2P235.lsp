;; DOMAIN:    Exponential and Logarithm Function
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P235
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (&& (is-natural-number n)
      (minimum
        (set-by-def (PLam n0 (&&
          (is-natural-number n0)
          (= 1 (^ (+ (+ (^ n0 2) (* -3 n0)) 3) (+ (+ (^ n0 2) (* -8 n0)) 15)))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        n
      )
    )
  )
)

(def-directive p2
  (Find (n)
    (&& (is-natural-number n)
      (maximum
        (set-by-def (PLam n0 (&&
          (is-natural-number n0)
          (= 1 (^ (+ (+ (^ n0 2) (* -3 n0)) 3) (+ (+ (^ n0 2) (* -8 n0)) 15)))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        n
      )
    )
  )
)

(def-answer p1 (PLam n (= n 1)))

(def-answer p2 (PLam n (= n 5)))

