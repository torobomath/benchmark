;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3R144
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Draw (C)
  (= C (shape-of-cpfun (PLam P (= (y-coord P) (* (x-coord P) (ln (x-coord P)))))))
   )
)

(def-directive p2
  (Find (S)
  (exists (C L)
    (&& (= C (shape-of-cpfun (PLam P (= (y-coord P) (* (x-coord P) (ln (x-coord P)))))))
        (line-type L)
        (tangent L C (point (exp 1) (exp 1)))
        (= S (area-of (shape-enclosed-by (list-of (x-axis) L C))))
     )
   )
   )
)

(def-answer p1
   (set-of-cfun (Lam x (PLam y (= y (* x (ln x)))))))

(def-answer p2 (PLam S (= S (/ 1 4))))

