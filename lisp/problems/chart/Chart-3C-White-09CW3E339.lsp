;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E339
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p1
  (Find (S)
  (exists (f)
    (&& (= f (Lam x (* x (/ (^ x 2) (sqrt (^ (+ (^ x 4) 2) 3))))))
        (= S (integral f 0 1))
    )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (C1)
    (&&
        (= C1 (2d.set-of-cfun (Lam x (PLam y (&&
        (>= y (/ (^ x 2) (sqrt (^ (+ (^ x 4) 2) 3))))
        (>= (/ (sqrt 3) 9) y)
        (<= 0 x) (<= x 1)
      )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape C1) (y-axis))))
     )
   )
   )
)

(def-answer p1 (PLam S (= S (- (/ (sqrt 2) 4) (/ (sqrt 3) 6)))))

(def-answer p2 (PLam V (= V (- (/ (* 4 (sqrt 3)) 9) (/ (sqrt 2) 2)))))

