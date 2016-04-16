;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E287
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (TY)
  (exists (C L P Q)
    (&& (> a 0)
        (= C (shape-of-cpfun (PLam P (= (y-coord P) (exp (* a (x-coord P)))))))
        (line-type L)
        (on (origin) L)
        (tangent L C Q)
        (= P (point TX TY))
        (on P L)
     )
   )
   )
)

(def-directive p2
  (Find (V)
  (exists (C L E Q)
    (&& (> a 0)
        (= C (shape-of-cpfun (PLam P (= (y-coord P) (exp (* a (x-coord P)))))))
        (line-type L)
        (on (origin) L)
        (tangent L C Q)
        (= E (shape-enclosed-by (list-of (y-axis) C L)))
        (= V (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape E) (3d.y-axis))))
     )
   )
   )
)

(def-answer p1 (PLam TY (&& (< 0 a)
                            (= TY (* a (exp 1) TX)))))

(def-answer p2 (PLam V (&& (< 0 a)
                           (= V (/ (* 2 (- 3 (exp 1))) (* 3 (Pi) (^ a 2)))))))

