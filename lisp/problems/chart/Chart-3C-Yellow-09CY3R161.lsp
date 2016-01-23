;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R161
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (S)
  (exists (R1 R2 R3 R4)
    (&& (is-regular-square R1 R2 R3 R4) (= (length-of (seg R1 R2)) 4)
        (= S (area-of (shape-of-cpfun (PLam P (exists (C)
                  (&& (circle-type C)
                    (<= 1 r)
                      (= (radius-of C) r)
                      (on (center-of C) (square R1 R2 R3 R4))
                      (point-inside-of P C)
                      ))))))
        )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (R1 R2 R3 R4)
    (&& (is-regular-square R1 R2 R3 R4)
        (= V (3d.volume-of (3d.shape-of-cpfun (PLam P (exists (C)
                    (&& (3d.is-sphere C)
                        (= (3d.radius-of C) 1)
                        (3d.on (3d.center-of C) (3d.import-2d-shape (2d.square R1 R2 R3 R4)))
                        (3d.point-inside-of P C)
                        ))))))
        )
   )
   )
)

(def-answer p1 (PLam S (&& (<= r 1) (= S (+ (* 32 r) (* (- (Pi) 4) (^ r 2)))))))

(def-answer p2 (PLam V (= V (/ (- (* 52 (Pi)) 16) 3))))

