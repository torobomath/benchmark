;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP052
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (N)
    (.is-cardinality-of N (set-by-def (PLam n
      (exists (a b c d) (&&
        (= n (+ (+ (+ (* 1000 a) (* b 100)) (* c 10)) d))
        (is-integer a) (< 0 a) (< a 10)
        (is-integer b) (<= 0 b) (< b 10)
        (is-integer c) (<= 0 c) (< c 10)
        (is-integer d) (<= 0 d) (< d 10)
        (< d c) (< c b) (< b a)
      ))
    )))
  )
)

(def-directive p2
  (Find (N)
    (.is-cardinality-of N (set-by-def (PLam n
      (exists (a b c d) (&&
        (= n (+ (+ (+ (* 1000 a) (* b 100)) (* c 10)) d))
        (is-integer a) (< 0 a) (< a 10)
        (is-integer b) (<= 0 b) (< b 10)
        (is-integer c) (<= 0 c) (< c 10)
        (is-integer d) (<= 0 d) (< d 10)
        (< a b) (< b c) (< c d)
      ))
    )))
  )
)

(def-directive p3
  (Find (N)
    (.is-cardinality-of N (set-by-def (PLam n
      (exists (a b c d) (&&
        (= n (+ (+ (+ (* 1000 a) (* b 100)) (* c 10)) d))
        (is-integer a) (< 0 a) (< a 10)
        (is-integer b) (<= 0 b) (< b 10)
        (is-integer c) (<= 0 c) (< c 10)
        (is-integer d) (<= 0 d) (< d 10)
        (<= d c) (<= c b) (<= b a)
      ))
    )))
  )
)

(def-answer p1 (PLam N (= N 210)))

(def-answer p2 (PLam N (= N 126)))

(def-answer p3 (PLam N (= N 714)))

