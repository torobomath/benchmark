;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C038
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p1
  (Find (V)
  (exists (E)
    (&&
        (= E (2d.set-of-cfun (Lam x (PLam y (&& (>= x (- (^ y 2) 1))
                  (<= x 0)
                  )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape E) (y-axis) )))
     )
   )
   )
)

(def-directive p1_1
  (Find (V)
  (exists (E)
    (&&
        (= E (2d.set-of-cfun (Lam x (PLam y (&& (>= y (- (^ x 2) 1))
                  (<= y 0)
                  )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape E) (x-axis) )))
     )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (E)
    (&&
        (= E (2d.set-of-cfun (Lam x (PLam y (&& (<= y 2) (<= 0 x)
                  (<= x (sqrt (+ y 1)))
               )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape E) (y-axis) )))
     )
   )
   )
)

(def-answer p1 (PLam V (= V (* (/ 16 15) (Pi)))))

(def-answer p1_1 (PLam V (= V (* (/ 16 15) (Pi)))))

(def-answer p2 (PLam V (= V (* (/ 9 2) (Pi)))))

