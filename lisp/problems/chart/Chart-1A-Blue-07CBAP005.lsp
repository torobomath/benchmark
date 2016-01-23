;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP005
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 100)
      (|| (is-divisible-by m 4)
        (is-divisible-by m 7)
      )
    ))))
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 100)
      (! (is-divisible-by m 4))
      (! (is-divisible-by m 7))
    ))))
  )
)

(def-directive p3
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 100)
      (is-divisible-by m 4)
      (! (is-divisible-by m 7))
    ))))
  )
)

(def-directive p4
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 100)
      (! (&&
        (is-divisible-by m 4)
        (is-divisible-by m 7)
      ))
    ))))
  )
)

(def-answer p1 (PLam n (= n 36)))

(def-answer p2 (PLam n (= n 64)))

(def-answer p3 (PLam n (= n 22)))

(def-answer p4 (PLam n (= n 97)))

