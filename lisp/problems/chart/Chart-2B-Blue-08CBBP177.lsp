;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP177
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (s)
    (&& (is-integer a) (<= 0 a)
      (is-integer b) (<= 0 b)
      (is-integer c) (<= 0 c)
      (= s (sum (set-to-list (set-by-def (PLam m (&&
        (is-integer m) (< 0 m)
        (is-divisible-by (* (* (^ 2 a) (^ 3 b)) (^ 5 c)) m)
      ))))))
    )
  )
)

(def-answer p (PLam s (&&
  (is-integer a) (<= 0 a)
  (is-integer b) (<= 0 b)
  (is-integer c) (<= 0 c)
  (= (rat.int->rat s) (rat.* (rat.ratio 1 8) (rat.int->rat (* (* (+ (^ 2 (+ a 1)) 1) (+ (^ 3 (+ b 1)) 1)) (+ (^ 5 (+ c 1)) 1)))))
)))

