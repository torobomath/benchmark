;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF+PA
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE011
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Show
    (forall (a P x0 y0 L) (->
      (&&
        (= L (set-of-cfun (Lam x (PLam y (= y (* a x))))))
        (= P (point x0 y0))
        (line-type L)
      )
      (= (/ (abs (+ (* a x0) (- y0))) (sqrt (+ 1 (^ a 2))))
         (point-shape-distance P L))
    ))
  )
)

(def-directive p21
  (Draw (D)
    (exists (a P) (&&
      (= a 1)
      (= P
          (Lam x (PLam y (&&
            (< 0 x)
            (< 0 y)
            (< 0 (/ (abs (+ (* a x) (- y))) (sqrt (+ 1 (^ a 2)))))
            (< (/ (abs (+ (* a x) (- y))) (sqrt (+ 1 (^ a 2)))) (/ (* 2 (sqrt 2)) (+ x y)))
          )))
        )
      (= D (set-of-cfun P))
    ))
  )
)

(def-answer p21
  (set-of-cfun (Lam x (PLam y
     (|| (&& (< 0 x) (< x 2)
             (< 0 y) (< y (sqrt (+ (^ x 2) 4)))
             (! (= x y)))
         (&& (<= 2 x)
             (< (sqrt (- (^ x 2) 4)) y)
             (< y (sqrt (+ (^ x 2) 4)))
             (! (= x y))))))))

(def-directive p22
  (Show
    (exists (P) (&&
      (= P
          (Lam x0 (PLam y0
            (let (
              (x (int->real x0))
              (y (int->real y0))
            )
            (&& (< 0 x)
              (< 0 y)
              (< 0 (/ (abs (+ (* a x) (- y))) (sqrt (+ 1 (^ a 2)))))
              (< (/ (abs (+ (* a x) (- y))) (sqrt (+ 1 (^ a 2)))) (/ (* 2 (sqrt 2)) (+ x y)))
            )
          )))
        )
      (forall (a) (->
        (is-rational a)
        (exists (n) (&&
          (int.is-integer n)
          (int.<= 0 n)
          (is-cardinality-of n (set-by-def (PLam p
            (exists (x y) (&&
            (= x (car p))
            (= y (cadr p))
            (&& (int.is-integer x)
              (int.is-integer y)
              (PLamApp (LamApp P x) y)
          ))))))
        ))
      ))
    ))
  )
)

