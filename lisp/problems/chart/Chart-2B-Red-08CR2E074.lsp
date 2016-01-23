;; DOMAIN:    Exponential and Logarithm Function
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E074
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (answer)
    (exists (a b c x y z) (&&
      (is-integer a) (< 0 a)
      (is-integer b) (<= a b)
      (is-integer c) (<= b c)
      (real-number x) (.< 0 x) (! (= x (int->real 1)))
      (real-number y) (.< 0 y) (! (= y (int->real 1)))
      (real-number z) (.< 0 z) (! (= z (int->real 1)))
      (= (.^ x (int->real a)) (.* x (.* y z)))
      (= (.^ y (int->real b)) (.* x (.* y z)))
      (= (.^ z (int->real c)) (.* x (.* y z)))
      (= answer (list-of a b c))
    ))
  )
)

(def-answer p (PLam answer (||
  (= answer (list-of 2 3 6))
  (= answer (list-of 2 4 4))
  (= answer (list-of 3 3 3))
)))

