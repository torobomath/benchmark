;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP120
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 1 m) (<= m 1000)
      (|| (is-divisible-by m 2)
        (is-divisible-by m 3)
      )
    ))))))
  )
)

(def-directive p2
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 1 m) (<= m 1000)
      (! (is-divisible-by m 5))
    ))))))
  )
)

(def-directive p3
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 1 m) (<= m 1000)
      (|| (is-divisible-by m 2)
        (is-divisible-by m 3)
        (is-divisible-by m 5)
      )
    ))))))
  )
)

(def-directive p4
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 1 m) (<= m 1000)
      (&& (! (is-divisible-by m 2))
        (! (is-divisible-by m 3))
        (! (is-divisible-by m 5))
      )
    ))))))
  )
)

(def-answer p1 (PLam s (= s 334167)))

(def-answer p2 (PLam s (= s 400000)))

(def-answer p3 (PLam s (= s 367832)))

(def-answer p4 (PLam s (= s 132668)))

