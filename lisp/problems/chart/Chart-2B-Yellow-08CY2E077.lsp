;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E077
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (a)
    (exists (P alpha beta) (&&
      (= P (PLam x (= 0 (+ (+ (+ (^ x 2) (* (+ 2 a) x)) 3) (- a)))))
      (is-integer a)
      (is-integer alpha)
      (is-integer beta)
      (! (= alpha beta))
      (PLamApp P alpha)
      (PLamApp P beta)
    ))
  )
)

(def-answer p (PLam a (||
  (= a -11) (= a -9) (= a 1) (= a 3)
)))

