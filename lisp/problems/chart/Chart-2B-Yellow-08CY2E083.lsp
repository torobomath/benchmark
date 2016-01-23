;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E083
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (k)
    (exists (P x1 x2) (&&
      (= P (PLam x (= 0 (+ (+ (+ (^ x 2) (- (* (+ k 4) x))) (* 2 k)) 10))))
      (is-integer k)
      (is-integer x1)
      (is-integer x2)
      (! (= x1 x2))
      (PLamApp P x1)
      (PLamApp P x2)
    ))
  )
)

(def-answer p (PLam k (||
  (= k -7) (= k -5) (= k 7) (= k 5)
)))

