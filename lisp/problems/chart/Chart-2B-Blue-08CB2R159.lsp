;; DOMAIN:    Exponential and Logarithm Function
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R159
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (&& (is-natural-number n)
      (< (^ 8 (- n 1)) (^ 10 39))
      (<= (^ 10 39) (^ 8 n))
    )
  )
)

(def-directive p2
  (Find (answer)
    (exists (n) (&&
      (is-natural-number n)
      (< (^ 8 (- n 1)) (^ 10 39))
      (<= (^ 10 39) (^ 8 n))
      (= answer (list-of (car (int2decimal (^ 8 n))) (last (int2decimal (^ 8 n)))))
    ))
  )
)

(def-answer p1 (PLam n (= n 44)))

(def-answer p2 (PLam answer (= answer (list-of 6 5))))

