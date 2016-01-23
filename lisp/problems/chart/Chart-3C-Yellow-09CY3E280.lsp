;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E280
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p
  (Find (a)
  (exists (C P Q R S E1 E2 V1 V2)
    (&& (>= a 1)
        (= C (shape-of-cpfun (PLam P (= (y-coord P) (exp (x-coord P))))))
        (= P (point a (exp a))) (on P C)
        (= Q (point 0 (exp a)))
        (= R (point 0 1))
        (= S (point a 1))
        (= E1 (shape-enclosed-by (list-of (seg P Q) (seg Q R) C)))
        (= V1 (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape E1) (3d.y-axis) )))
        (= E2 (shape-enclosed-by (list-of (seg P S) (seg R S) C)))
        (= V2 (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape E2) (3d.y-axis) )))
        (= V1 V2)
     )
   )
   )
)

(def-answer p (PLam a (= a 2)))

