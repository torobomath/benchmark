;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E018
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (b)
    (exists (D) (&&
      (= D
          (PLam R (exists (P Q) (&&
            (<= -1 (x-coord P)) (<= (x-coord P) 1)
            (= (y-coord P) (^ (x-coord P) 2))
            (<= -1 (x-coord Q)) (<= (x-coord Q) 1)
            (= (y-coord Q) (^ (x-coord Q) 2))
            (= R (internally-dividing-point P Q (/ 1 3)))
          )))
        )
      (<= -1 a) (<= a 1)
      (PLamApp D (point a b))
    ))
  )
)

(def-directive p2
  (Draw (D)
    (exists (pred) (&&
      (= pred
          (PLam R (exists (P Q) (&&
            (<= -1 (x-coord P)) (<= (x-coord P) 1)
            (= (y-coord P) (^ (x-coord P) 2))
            (<= -1 (x-coord Q)) (<= (x-coord Q) 1)
            (= (y-coord Q) (^ (x-coord Q) 2))
            (= R (internally-dividing-point P Q (/ 1 3)))
          )))
        )
      (= D (shape-of-cpfun pred))
    ))
  )
)

(def-answer p1 (PLam b (||
  (&& (<= -1 a) (<= a (/ -1 3))
    (<= (^ a 2) b) (<= b (+ (* 3(^ a 2)) (+ (* 4 a) 2)))
  )
  (&& (<= (/ -1 3) a) (<= a 0)
    (<= (^ a 2) b) (<= b (+ (* (/ 3 2) (^ a 2)) (+ (- a) (/ 1 2))))
  )
  (&& (<= 0 a) (<= a (/ 1 3))
    (<= (^ a 2) b) (<= b (+ (* (/ 3 2) (^ a 2)) (+ a (/ 1 2))))
  )
  (&& (<= (/ 1 3) a) (<= a 1)
    (<= (^ a 2) b) (<= b (+ (* 3(^ a 2)) (+ (* -4 a) 2)))
  )
)))

(def-answer p2 (set-of-cfun (Lam a (PLam b (||
  (&& (<= -1 a) (<= a (/ -1 3))
    (<= (^ a 2) b) (<= b (+ (* 3(^ a 2)) (+ (* 4 a) 2)))
  )
  (&& (<= (/ -1 3) a) (<= a 0)
    (<= (^ a 2) b) (<= b (+ (* (/ 3 2) (^ a 2)) (+ (- a) (/ 1 2))))
  )
  (&& (<= 0 a) (<= a (/ 1 3))
    (<= (^ a 2) b) (<= b (+ (* (/ 3 2) (^ a 2)) (+ a (/ 1 2))))
  )
  (&& (<= (/ 1 3) a) (<= a 1)
    (<= (^ a 2) b) (<= b (+ (* 3(^ a 2)) (+ (* -4 a) 2)))
  )
)))))

