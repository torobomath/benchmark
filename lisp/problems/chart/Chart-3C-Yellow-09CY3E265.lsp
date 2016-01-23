;; DOMAIN:    Integration and its Applications
;; THEORY:    PA+trans
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E265
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p2
  (Find (lim)
  (exists (Cn Sn Tn)
    (&&
        (= Cn (Lam n (shape-of-cpfun (PLam P (&& (= (y-coord P) (* (x-coord P) (sin (x-coord P))))
                   (<= (* (- (int->real n) 1) (Pi)) x) (<= x (* (int->real n) (Pi)))
                   (int.> n 0)
                   )))))
        (= Sn (Lam n (area-of (shape-enclosed-by (list-of (LamApp Cn n) (x-axis))))))
        (= Tn (seq.seq (Lam n (* (LamApp Sn n) (LamApp Sn (int.+ n 1))))))
        (seq.is-infinite-sum-of lim Tn)
     )
   )
   )
)

(def-answer p2 (PLam lim (= lim (/ 1 (* 2 (^ (Pi) 2))))))

(def-directive p1
  (Find (Sn)
  (exists (C)
    (&& (int.> n 0)
        (= C (shape-of-cpfun (PLam P (&& (= (y-coord P) (* (x-coord P) (sin (x-coord P))))
                 (<= (* (- (int->real n) 1) (Pi)) x) (<= x (* (int->real n) (Pi)))
                 ))))
        (= Sn (area-of (shape-enclosed-by (list-of C (x-axis)))))
     )
   )
   )
)

(def-answer p1 (PLam Sn (= Sn (* (Pi) (- (* 2 (int->real n)) 1)))))

