;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE037
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (N)
    (.is-cardinality-of N (set-by-def (PLam list
      (exists (a b c d e n) (&&
        (= n (+ (+ (+ (+ (* a 10000) (* b 1000)) (* c 100)) (* 10 d)) e))
        (= list (list-of a b c d e))
        (is-integer a) (< 0 a) (< a 10)
        (is-integer b) (<= 0 b) (< b 10)
        (is-integer c) (<= 0 c) (< c 10)
        (is-integer d) (<= 0 d) (< d 10)
        (is-integer e) (<= 0 e) (< e 10)
        (< 54321 n) (< n 100000)
        (is-divisible-by n 5)
        (pairwise-distinct list)
      ))
    )))
  )
)

(def-answer p (PLam N (= N 2884)))

