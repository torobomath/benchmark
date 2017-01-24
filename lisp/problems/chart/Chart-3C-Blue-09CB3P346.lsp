;; DOMAIN:    Integration and its Applications
;; THEORY:    PA+trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P346
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p1
  (Find (V)
    (exists (D2 D3) (&&
      (= D2 (2d.set-of-cfun (Lam x (PLam y (&& (<= 0 y) (<= y (exp x)) (<= 0 x) (<= x 1))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-directive p2
  (Find (V)
    (exists (f1 f2 D2 D3 x1 x2) (&&
      (= f1 (Lam x (sqrt (- 4 (^ x 2)))))
      (= f2 (Lam x (* (sqrt 3) (^ x 2))))
      (<= -2 x1) (< x1 x2) (<= x2 2)
      (= (LamApp f1 x1) (LamApp f2 x1))
      (= (LamApp f1 x2) (LamApp f2 x2))
      (= D2 (2d.set-of-cfun (Lam x (PLam y (&& (<= (LamApp f2 x) y) (<= y (LamApp f1 x)) (<= x1 x) (<= x x2))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-answer p1 (PLam V (= V (* (* (/ 1 2) (- (exp 2) 1)) (Pi)))))

(def-answer p2 (PLam V (= V (* (/ 92 15) (Pi)))))

