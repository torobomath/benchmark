;; DOMAIN:    Quadratic Functions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P181
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Find (x)
    (&& (is-integer x)
      (<= (+ (+ (^ (+ (+ (^ x 2) (* 2 x)) -8) 2) (* -2 (+ (+ (^ x 2) (* 2 x)) -8))) -35) 0)
    )
  )
)

(def-answer p (PLam x (||
  (= x -5)
  (= x -4)
  (= x -3)
  (= x 1)
  (= x 2)
  (= x 3)
)))

