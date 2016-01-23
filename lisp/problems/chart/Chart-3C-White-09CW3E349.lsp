;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E349
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p1
  (Find (I)
    (= I (integral (Lam x (* x (sin x))) 0 (/ (Pi) 2)))
   )
)

(def-directive p2_1
  (Find (V)
    (exists (S C E)
        (&& (= E (2d.set-of-cfun (Lam x (PLam y (&& (>= y (* (/ 2 (Pi)) x))
                            (<= y (sin x))
                            (<= 0 x) (<= x (/ (Pi) 2))
                            )))))
            (= V (volume-of (solid-of-revolution (import-2d-shape E) (y-axis))))
         )
     )
   )
)

(def-directive p2_2
  (Find (W)
    (exists (E) (&&
        (= E (2d.set-of-cfun (Lam x (PLam y (&& (>= y (* (/ 2 (Pi)) x))
                            (<= y (sin x))
                            (<= 0 x) (<= x (/ (Pi) 2))
                            )))))
      (= W (volume-of (solid-of-revolution (import-2d-shape E) (x-axis))))
      ))
   )
)

(def-answer p1 (PLam I (= I 1)))

(def-answer p2_1 (PLam V (= V (/ (^ (Pi) 2) 12))))

(def-answer p2_2 (PLam W (= W (- (* 2 (Pi)) (/ (^ (Pi) 3) 6)))))

