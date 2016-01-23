;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P098
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Find (answer)
    (exists (P x y) (&&
      (= P (poly-equation (list-of (.^ (int->real n) 2) (.+ (.* 2 (int->real n)) -9) 1)))
      (<= 0 n)
      (is-integer n)
      (is-integer x)
      (is-integer y)
      (|| (&& (= x y) (is-multiple-root-of (int->real x) P))
        (&& (< x y) (is-solution-of (int->real x) P) (is-solution-of (int->real y) P))
      )
      (= answer (list-of x y))
    ))
  )
)

(def-answer p (PLam answer (|| (= answer (list-of 0 0 0)) (= answer (list-of 2 1 4)))))

