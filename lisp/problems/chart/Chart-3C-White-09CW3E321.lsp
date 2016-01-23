;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E321
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1_1
  (Find (x)
  (exists (y)
    (= (^ y 2) (* (^ x 2) (- 3 (^ x 2))))
   )
   )
)

(def-directive p1_2
  (Find (y)
  (exists (x)
    (= (^ y 2) (* (^ x 2) (- 3 (^ x 2))))
   )
   )
)

(def-directive p2
  (Find (S)
  (exists (C)
    (&& (= C (shape-of-cpfun (PLam p (= (^ (y-coord p) 2) (* (^ (x-coord p) 2) (- 3 (^ (x-coord p) 2))))
                 )))
        (= S (area-of (shape-enclosed-by (list-of C))))
     )
   )
   )
)

(def-answer p1_1 (PLam x (&& (<= (- (sqrt 3)) x) (<= x (sqrt 3)))))

(def-answer p1_2 (PLam y (&& (<= (- (/ 3 2)) y) (<= y (/ 3 2)))))

(def-answer p2 (PLam S (= S (* 4 (sqrt 3)))))

