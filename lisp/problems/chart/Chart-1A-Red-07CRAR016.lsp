;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR016
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam list
      (exists (a b c d) (&&
        (= list (list-of a b c d))
        (is-integer a) (<= 0 a) (<= a 9)
        (is-integer b) (<= 0 b) (<= b 9)
        (is-integer c) (<= 0 c) (<= c 9)
        (is-integer d) (<= 0 d) (<= d 9)
        (<= 1 (+ (+ (+ a b) c) d))
        (|| (&& (! (= a 0)) (! (= b 0)) (= c 0) (= d 0))
          (&& (! (= a 0)) (= b 0) (! (= c 0)) (= d 0))
          (&& (! (= a 0)) (= b 0) (= c 0) (! (= d 0)))
          (&& (= a 0) (! (= b 0)) (! (= c 0)) (= d 0))
          (&& (= a 0) (= b 0) (! (= c 0)) (! (= d 0)))
          (&& (= a 0) (! (= b 0)) (= c 0) (! (= d 0)))
        )
      ))
    )))
  )
)

(def-directive p2
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam list
      (exists (a b c d) (&&
        (= list (list-of a b c d))
        (is-integer a) (<= 0 a) (<= a 9)
        (is-integer b) (<= 0 b) (<= b 9)
        (is-integer c) (<= 0 c) (<= c 9)
        (is-integer d) (<= 0 d) (<= d 9)
        (|| (= a 0) (= b 0) (= c 0) (= d 0))
      ))
    )))
  )
)

(def-answer p1 (PLam n (= n 252)))

(def-answer p2 (PLam n (= n 2619)))

