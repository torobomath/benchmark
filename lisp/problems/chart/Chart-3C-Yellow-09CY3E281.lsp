;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E281
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p
  (Find (V)
    (exists (D2 D3) (&&
      (= D2 (2d.set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (/ (Pi) 2)) (<= (- (sin x)) y) (<= y (cos (* 2 x))))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-answer p (PLam V (= V (/ (* (Pi) (+ (* 2 (Pi)) (* 3 (sqrt 3)))) 16))))

