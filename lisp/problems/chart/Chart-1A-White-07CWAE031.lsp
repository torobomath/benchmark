;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE031
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam n
      (exists (x y z) (&&
        (= n (+ (+ (* 100 x) (* 10 y)) z))
        (is-integer x) (<= 0 x) (<= x 7)
        (is-integer y) (<= 0 y) (<= y 7)
        (is-integer z) (<= 0 z) (<= z 7)
        (! (= x y))
        (! (= y z))
        (! (= z x))
        (>= n 100)
      ))
    )))
  )
)

(def-directive p2
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam n
      (exists (x y z) (&&
        (= n (+ (+ (* 100 x) (* 10 y)) z))
        (is-integer x) (<= 0 x) (<= x 7)
        (is-integer y) (<= 0 y) (<= y 7)
        (is-integer z) (<= 0 z) (<= z 7)
        (! (= x y))
        (! (= y z))
        (! (= z x))
        (is-odd-number x)
        (is-odd-number z)
      ))
    )))
  )
)

(def-directive p3
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam n
      (exists (x y z) (&&
        (= n (+ (+ (* 100 x) (* 10 y)) z))
        (is-integer x) (<= 0 x) (<= x 7)
        (is-integer y) (<= 0 y) (<= y 7)
        (is-integer z) (<= 0 z) (<= z 7)
        (! (= x y))
        (! (= y z))
        (! (= z x))
        (is-odd-number n)
      ))
    )))
  )
)

(def-answer p1 (PLam n (= n 180)))

(def-answer p2 (PLam n (= n 30)))

(def-answer p3 (PLam n (= n 75)))

