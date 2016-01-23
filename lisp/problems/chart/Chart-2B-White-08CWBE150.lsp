;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBE150
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 10 m) (< m 100)
      (is-divisible-by m 7)
    ))))))
  )
)

(def-directive p2
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 10 m) (< m 100)
      (! (is-divisible-by m 7))
    ))))))
  )
)

(def-answer p1 (PLam s (= s 728)))

(def-answer p2 (PLam s (= s 4177)))

