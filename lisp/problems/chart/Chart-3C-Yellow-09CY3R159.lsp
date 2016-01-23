;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R159
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (V)
  (exists (C)
    (&& (= C (set-of-cfun (Lam y (PLam x (&& (>= y (exp (^ x 2)))
               (<= y h)
               (<= 0 x)
               )))))
        (= V (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape C) (3d.y-axis))))
     )
   )
   )
)

(def-answer p1
  (PLam V (= V (* (Pi) (- (* (+ h 1) (ln (+ h 1))) h)))))

(def-directive p2
  (Find (S)
  (exists (C h V t0)
    (&& (= h (Lam t (* 2 t)))
        (= C (Lam t (set-of-cfun (Lam y (PLam x (&& (>= y (exp (^ x 2)))
                (<= y (LamApp h t))
                (<= 0 x)
                ))))))
        (= V (Lam t (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape (LamApp C t)) (3d.y-axis)))))
        (= (Pi) (LamApp V t0))
        (converge (fun (Lam x (/ (- (LamApp V t0) (LamApp V x)) (- t0 x)))) t0 S)
    )
   )
   )
)

(def-answer p2 (PLam S (= S (/ 2 (Pi)))))

