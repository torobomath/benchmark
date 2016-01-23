;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P055
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (x)
    (&& (is-integer x)
      (<= (+ (* 2 x) -1) (+ x 7))
      (< (+ x 13) (+ (* 3 x) 2))
    )
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x)
      (< (+ (* 3 x) -1) (+ (* 2 x) 5))
      (<= (+ (* 2 x) -6) (+ (* 5 x) -3))
    )
  )
)

(def-directive p3
  (Find (x)
    (&& (is-integer x)
      (<= 21 (+ (* 6 x) -3))
      (< (+ (* 6 x) -3) 30)
    )
  )
)

(def-directive p4
  (Find (x)
    (&& (is-integer x)
      (< (- x 1) (* 3 x))
      (< (* 3 x) (+ x 3))
    )
  )
)

(def-answer p1 (PLam x (|| (= x 6) (= x 7) (= x 8))))

(def-answer p2 (PLam x (|| (= x -1) (= x 0) (= x 1) (= x 2) (= x 3) (= x 4) (= x 5))))

(def-answer p3 (PLam x (|| (= x 4) (= x 5))))

(def-answer p4 (PLam x (|| (= x 0) (= x 1))))

