;; DOMAIN:    Differentiation and its Applications
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P372
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (P x1 x2 x3 k) (&&
      (= P (PLam x (= 0 (+ (+ (^ x 3) (* -13 x)) k))))
      (is-integer x1)
      (is-integer x2)
      (is-integer x3)
      (< x1 x2) (< x2 x3)
      (is-integer k)
      (PLamApp P x1)
      (PLamApp P x2)
      (PLamApp P x3)
      (= answer (list-of k x1 x2 x3))
    ))
  )
)

(def-answer p (PLam answer (||
  (= answer (list-of 12 -4 1 3))
  (= answer (list-of -12 -3 -1 4))
)))

