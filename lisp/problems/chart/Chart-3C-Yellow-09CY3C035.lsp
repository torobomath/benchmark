;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C035
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (S)
  (exists (C1)
    (&&
     (= C1 (set-of-cfun (Lam x (PLam y (&& (<= y (sqrt x)) (<= 0 y)
                   (<= 1 x) (<= x 2)
                   )))))
     (= S (area-of C1))
     )
   )
   )
)

(def-directive p2
  (Find (S)
  (exists (C1)
    (&&
     (= C1 (set-of-cfun (Lam x (PLam y (&& (>= y (sqrt x)) (<= y 2) (>= x 0))))))
     (= S (area-of C1))
     )
   )
   )
)

(def-answer p1 (PLam S (= S (* (/ 2 3) (- (* 2 (sqrt 2)) 1)))))

(def-answer p2 (PLam S (= S (/ 8 3))))

