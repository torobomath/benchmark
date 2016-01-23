;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E053
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (x)
    (&& (is-natural-number x)
      (<= 10 x) (< x 100)
      (< 5 (+ (* 6 x) (* 8 (- 4 x))))
    )
  )
)

(namespace default)

(def-directive p2
  (Find (a) (&&
    (exists (x) (&&
      (< (* 5 (- x 1)) (* 2 (+ (* 2 x) a)))
      (<= 6 x) (< x 7)
    ))
    (! (exists (x) (&&
      (< (* 5 (- x 1)) (* 2 (+ (* 2 x) a)))
      (<= 7 x)
    )))
  ))
)

(def-answer p1 (PLam x (|| (= x 10) (= x 11) (= x 12) (= x 13))))

(def-answer p2 (PLam a (&& (.< (./ (int->real 1) (int->real 2)) a) (.<= a (int->real 1)))))

