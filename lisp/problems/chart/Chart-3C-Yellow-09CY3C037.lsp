;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C037
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p1
  (Find (V)
  (exists (C1 C2 E)
    (&&
     (= E (2d.set-of-cfun (Lam x (PLam y (&& (<= y (exp x))
               (<= 0 y)
               (<= 0 x)
               (<= x 1)
               )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape E) (x-axis) )))
     )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (C E)
    (&&
     (= E (2d.set-of-cfun (Lam x (PLam y (&& (<= (- (^ x 2) x) y)
                  (<= y 0)
                  )))))
        (= V (volume-of (solid-of-revolution (import-2d-shape E) (x-axis) )))
     )
   )
   )
)

(def-answer p1 (PLam V (= V (* (/ (Pi) 2) (- (exp 2) 1)))))

(def-answer p2 (PLam V (= V (/ (Pi) 30))))

