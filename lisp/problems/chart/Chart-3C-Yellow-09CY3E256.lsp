;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E256
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (S)
  (exists (C)
    (&& (= C (shape-of-cpfun (PLam P (= (y-coord P) (+ (^ (x-coord P) 4) (- (* 3 (^ (x-coord P) 2))) 2)))))
        (= S (area-of (shape-enclosed-by (list-of C (x-axis)))))
     )
   )
   )
)

(def-directive p2
  (Find (S)
  (exists (C)
    (&& (= C (shape-of-cpfun (PLam P (&& (= (y-coord P) (- (* 2 (sin (x-coord P))) (sin (* 2 (x-coord P)))))
                 (<= 0 x) (<= x (* 2 (Pi)))
                 ))))
        (= S (area-of (shape-enclosed-by (list-of C (x-axis)))))
     )
   )
   )
)

(def-directive p3
  (Find (S)
  (exists (C)
    (&& (= C (shape-of-cpfun (PLam P (= (y-coord P) (+ 10 (- (* 9 (exp (- (x-coord P))))) (- (exp (x-coord P))))))))
        (= S (area-of (shape-enclosed-by (list-of C (x-axis)))))
     )
   )
   )
)

(def-answer p1 (PLam S (= S (/ (* 8 (- 3 (sqrt 2))) 5))))

(def-answer p2 (PLam S (= S 8)))

(def-answer p3 (PLam S (= S (- (* 20 (ln 3)) 16))))

