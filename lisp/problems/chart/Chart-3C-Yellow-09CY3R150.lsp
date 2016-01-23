;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R150
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p
  (Find (V)
  (exists (C C2)
    (&& (= C (shape-of-cpfun (PLam Pp (= (y-coord Pp) (- 4 (^ (x-coord Pp) 2))))))
        (= C2 (3d.shape-of-cpfun (PLam Pp (exists (P Q R L x)
                    (&& (= P (3d.point x 0 0))
                  (<= (- 1) x) (<= x 1)
                  (3d.line-type L) (3d.perpendicular L (3d.x-axis)) (3d.on P L)
                  (3d.intersect (3d.import-2d-shape C) L Q)
                  (exists (alpha) (&& (3d.plane-type alpha)
                          (3d.is-equilateral-triangle P Q R)
                          (3d.perpendicular alpha L)
                          (3d.on P alpha) (3d.on Q alpha) (3d.on R alpha)
                          ))
                  (3d.on Pp (3d.triangle P Q Ry))
                  )))))
        (= V (3d.volume-of C2))
     )
   )
   )
)

(def-answer p (PLam V (= V (/ (* 203 (sqrt 3)) 30))))

