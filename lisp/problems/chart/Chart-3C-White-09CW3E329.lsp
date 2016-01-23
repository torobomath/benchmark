;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E329
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 3d)

(def-directive p1
  (Find (V)
  (exists (C E)
    (&&
            (= C (2d.shape-enclosed-by (list-of (2d.graph-of (fun (Lam x (sqrt (- x 1)))))
                                                (2d.x-axis)
                                                (2d.y-axis)
                                                (2d.graph-of (fun (Lam x 1))))))
        (= E (solid-of-revolution (import-2d-shape C) (y-axis)))
        (= V (volume-of E))
    )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (C E)
    (&&
        (= C (2d.set-of-cfun (Lam y (PLam x (&& (>= x (- (^ y 2) y)) (>= 0 x)
                  )))))
        (= E (solid-of-revolution (import-2d-shape C) (y-axis)))
        (= V (volume-of E))
    )
   )
   )
)

(def-directive p3
  (Find (V)
  (exists (C E)
    (&&
        (= C (2d.set-of-cfun (Lam y (PLam x (&& (<= y (+ (^ x 2) (* 2 x)))
                (<= 0 x) (<= x 1) (<= 0 y) (<= y 3)
                  )))))
        (= E (solid-of-revolution (import-2d-shape C) (y-axis)))
        (= V (volume-of E))
    )
   )
   )
)

(def-answer p1 (PLam V (= V (* (/ 28 15) (Pi)))))

(def-answer p2 (PLam V (= V (* (/ 1 30) (Pi)))))

(def-answer p3 (PLam V (= V (* (/ 7 6) (Pi)))))

