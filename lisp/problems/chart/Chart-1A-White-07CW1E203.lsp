;; DOMAIN:    Quadratic Functions
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E203
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p11
  (Find (x)
    (&& (.< (.abs (.+ x (int->real 1))) (./ (int->real 3) (int->real 2)))
      (.< (int->real 0) (.+ (.+ (.^ x (int->real 2)) (.* (int->real -2) x)) (int->real -3)))
    )
  )
)

(def-directive p12
  (Find (x)
    (&& (.<= (int->real 2) (.+ (.^ x (int->real 2)) (.- x)))
      (.<= (.+ (.^ x (int->real 2)) (.- x)) (.+ (.* (int->real 4) x) (int->real -4)))
    )
  )
)

(def-directive p2
  (Find (x)
    (&& (is-integer x)
      (< (* 2 (^ x 2)) (+ (* 7 x) 4))
      (<= (* 3 x) (+ (^ x 2) 1))
    )
  )
)

(def-answer p11 (PLam x (&& (.< (./ (int->real -5) (int->real 2)) x) (.< x (int->real -1)))))

(def-answer p12 (PLam x (&& (.<= (int->real 2) x) (.<= x (int->real 4)))))

(def-answer p2 (PLam x (|| (= x 0) (= x 3))))

