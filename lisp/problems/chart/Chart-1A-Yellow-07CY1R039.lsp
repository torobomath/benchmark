;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R039
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x) (< 0 x)
      (is-integer y) (< 0 y)
      (= (rat.ratio 1 2) (rat.+ (rat.ratio 1 (* 3 x)) (rat.ratio 1 (* 3 y))))
    ))
  )
)

(def-answer p (PLam answer (|| (= answer (list-of 1 2)) (= answer (list-of 2 1)))))

