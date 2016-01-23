;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE011
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Show
    (forall (m) (->
      (&& (= 9 (gcd m 18))
        (= 9 (cardinality-of (set-by-def (PLam n (&&
          (is-integer n) (< 0 n) (< n m)
          (is-divisible-by m n)
        )))))
      )
      (<= (cardinality-of (set-by-def (PLam n (&&
          (is-prime n) (< 0 n) (< n m)
          (is-divisible-by m n)
        ))))
        2
      )
    ))
  )
)

(def-directive p2
  (Find (m)
    (&& (= 9 (gcd m 18))
      (= 9 (cardinality-of (set-by-def (PLam n (&&
        (is-integer n) (< 0 n) (< n m)
        (is-divisible-by m n)
      )))))
      (= 1729 (sum (set-to-list (set-by-def (PLam n (&&
        (is-integer n) (< 0 n) (< n m)
        (is-divisible-by m n)
      ))))))
    )
  )
)

(def-answer p2 (PLam m (= m 1089)))

