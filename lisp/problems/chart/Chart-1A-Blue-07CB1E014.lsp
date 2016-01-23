;; DOMAIN:    Quadratic Functions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E014
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(def-directive p1
  (Find (x)
    (exists (f k) (&&
      (= f (poly-equation (list-of (+ (+ (^ k 2) (* 3 k)) -9) k 1)))
      (is-solution-of x f)
    ))
  )
)

(def-directive p2
  (Find (k)
    (exists (f x1 x2) (&&
      (= f (poly-equation (list-of (+ (+ (^ k 2) (* 3 k)) -9) k 1)))
      (int.is-integer x1)
      (int.is-integer x2)
      (int.< x1 x2)
      (are-real-solutions-of (list-of (int->real x1) (int->real x2)) f)
    ))
  )
)

(def-answer p1 (PLam x (&& (<= -3 x) (<= x 5))))

(def-answer p2 (PLam k (|| (= k 0) (= k -4))))

