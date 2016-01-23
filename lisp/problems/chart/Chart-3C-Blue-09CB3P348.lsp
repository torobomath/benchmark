;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P348
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p1
  (Find (V)
    (exists (S) (&&
      (= S (2d.set-of-cfun (Lam x (PLam y (&& (<= (^ x 2) y) (<= y (sqrt x)))))))
      (= V (volume-of (solid-of-revolution (import-2d-shape S) (y-axis))))
    ))
  )
)

(def-directive p2
  (Find (V)
    (exists (S) (&&
      (= S (2d.set-of-cfun (Lam x (PLam y (&& (<= (+ (^ x 4) (* -2 (^ x 2))) y) (<= y 0) (<= 0 x))))))
      (= V (volume-of (solid-of-revolution (import-2d-shape S) (y-axis))))
    ))
  )
)

(def-directive p3
  (Find (V)
    (exists (S) (&&
      (= S (2d.set-of-cfun (Lam x (PLam y (&& (<= -1 y) (<= y (cos x)) (<= 0 x) (<= x (Pi)))))))
      (= V (volume-of (solid-of-revolution (import-2d-shape S) (y-axis))))
    ))
  )
)

(def-answer p1 (PLam V (= V (* (/ 3 10) (Pi)))))

(def-answer p2 (PLam V (= V (* (/ 4 3) (Pi)))))

(def-answer p3 (PLam V (= V (+ (^ (Pi) 3) (* -4 (Pi))))))

