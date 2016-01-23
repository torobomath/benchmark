;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E017
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p3_1
  (Find (M)
    (exists (x0 y0 D)
      (&& (= D (shape-of-cpfun (PLam P
              (<= (+ (abs (+ (x-coord P) (* 2 (y-coord P)))) (abs (+ (* 2 (x-coord P)) (y-coord P)))) 1)
                )))
          (on (point x0 y0) D)
          (= M (+ (abs x0) (abs (* 2 y0))))
          (forall (x y) (->
          (on (point x y) D)
          (<= (+ (abs x) (abs (* 2 y))) M)
        ))
      )
    )
  )
)

(def-answer p3_1 (PLam M (= M (/ 5 3))))

(def-directive p3_2
  (Find (m)
    (exists (x0 y0 D)
      (&& (= D (shape-of-cpfun (PLam P
                 (<= (+ (abs (+ (x-coord P) (* 2 (y-coord P)))) (abs (+ (* 2 (x-coord P)) (y-coord P)))) 1)
                   )))
          (on (point x0 y0) D)
          (= m (+ (abs x0) (abs (* 2 y0))))
          (forall (x y)
            (->
             (on (point x y) D)
             (>= (+ (abs x) (abs (* 2 y))) m)
             )
            )
      )
    )
  )
)

(def-answer p3_2 (PLam m (= m 0)))

(def-directive p2_1
  (Find (M)
    (exists (x0 y0 D)
      (&& (= D (shape-of-cpfun (PLam P
                 (<= (+ (abs (+ (x-coord P) (* 2 (y-coord P)))) (abs (+ (* 2 (x-coord P)) (y-coord P)))) 1)
                   )))
          (on (point x0 y0) D)
          (= M (+ x0 (* 2 y0)))
          (forall (x y) (->
             (on (point x y) D)
             (<= (+ x (* 2 y)) M)
        ))
      )
    )
  )
)

(def-answer p2_1 (PLam M (= M 1)))

(def-directive p2_2
  (Find (m)
    (exists (x0 y0 D)
      (&& (= D (shape-of-cpfun (PLam P
                 (<= (+ (abs (+ (x-coord P) (* 2 (y-coord P)))) (abs (+ (* 2 (x-coord P)) (y-coord P)))) 1)
                   )))
          (on (point x0 y0) D)
          (= m (+ x0 (* 2 y0)))
          (forall (x y) (->
             (on (point x y) D)
             (>= (+ x (* 2 y)) m)
        ))
      )
    )
  )
)

(def-answer p2_2 (PLam m (= m (- 1))))

(def-directive p1
  (Draw (Dp)
    (exists (D)
      (&& (= D (shape-of-cpfun (PLam P
              (<= (+ (abs (+ (x-coord P) (* 2 (y-coord P)))) (abs (+ (* 2 (x-coord P)) (y-coord P)))) 1)
                   )))
          (on Dp D)
      )
    )
  )
)

(def-answer p1
   (set-of-cfun (Lam x (PLam y (&& (<= y (+ (- x) (/ 1 3)))
                                   (<= (- (- x) (/ 1 3)) y)
                                   (<= y (+ x 1))
                                   (<= (- x 1) y))))))

