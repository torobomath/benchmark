;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P258
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p1
  (Find (V)
    (exists (D2 D3) (&&
      (= D2 (2d.set-of-cfun (Lam x (PLam y (&& (<= (cos x) y) (<= y (sin x)) (<= (/ (Pi) 4) x) (<= x (* (/ 5 4) (Pi))))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-directive p2
  (Find (V)
    (exists (D2 D3) (&&
      (= D2 (2d.set-of-cfun (Lam x (PLam y (&& (<= (cos (* 2 x)) y) (<= y (sin (abs (- x (/ (Pi) 2))))) (<= 0 x) (<= x (Pi)))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-answer p1 (PLam V (= V (* (/ (Pi) 4) (+ (Pi) 6)))))

(def-answer p2 (PLam V (= V (* (/ (Pi) 8) (+ (* 2 (Pi)) (* 3 (sqrt 3)))))))

