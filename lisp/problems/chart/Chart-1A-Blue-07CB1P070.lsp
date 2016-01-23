;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P070
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (max)
    (= max (list-max (list-int->real (set-to-list (set-by-def (PLam x (&&
      (is-integer x)
      (< 7 (+ (* 4 (- x 2)) (* 5 (- 6 x))))
    )))))))
  )
)

(def-directive p2
  (Find (a)
    (&& (is-integer a)
      (= 4 (list-min (list-int->real (set-to-list (set-by-def (PLam x (&&
        (is-integer x)
        (< (* 2 a) (+ (* 3 x) 1))
      )))))))
    )
  )
)

(def-answer p1 (PLam max (= max 14)))

(def-answer p2 (PLam a (|| (= a 5) (= a 6))))

