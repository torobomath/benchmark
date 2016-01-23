;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E030
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (P x1 x2 x3 a) (&&
      (= P (PLam x (= 0 (+ (+ (+ (^ x 3) (* -12 (^ x 2))) (* 47 x)) a))))
      (< x1 x2) (< x2 x3)
      (is-integer x1)
      (is-integer x2)
      (is-integer x3)
      (is-integer a)
      (PLamApp P x1)
      (PLamApp P x2)
      (PLamApp P x3)
      (= answer (list-of a x1 x2 x3))
    ))
  )
)

(def-answer p (PLam answer (= answer (list-of -60 3 4 5))))

