;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E091
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (x)
    (&& (is-natural-number x)
      (<= 10 x) (< x 100)
      (< 5 (+ (* 6 x) (* 8 (- 4 x))))
    )
  )
)

(def-answer p (PLam x (|| (= x 10) (= x 11) (= x 12) (= x 13))))

