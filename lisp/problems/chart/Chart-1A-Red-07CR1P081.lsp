;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P081
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x)
      (is-natural-number y)
      (< x y)
      (= (rat.ratio 1 4) (rat.+ (rat.ratio 1 x) (rat.ratio 1 y)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (l m n) (&&
      (= answer (list-of l m n))
      (is-natural-number l)
      (is-natural-number m)
      (is-natural-number n)
      (<= l m) (<= m n)
      (= (rat.int->rat 1) (rat.+ (rat.+ (rat.ratio 1 l) (rat.ratio 1 m)) (rat.ratio 1 n)))
    ))
  )
)

(def-answer p1 (PLam answer (|| (= answer (list-of 5 20))
                (= answer (list-of 6 12)))))

(def-answer p2 (PLam answer (|| (= answer (list-of 2 3 6))
                (= answer (list-of 2 4 4))
                (= answer (list-of 3 3 3)))))

