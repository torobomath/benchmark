;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E336
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p1
  (Find (P)
  (exists (C1 C2)
    (&& (= C1 (shape-of-cpfun (PLam p (= (* a (y-coord p)) (^ (x-coord p) 2)))))
        (= C2 (shape-of-cpfun (PLam p (= (^ (y-coord p) 2) (* a (- 1 a) (x-coord p))))))
        (< a 1) (< 0 a)
        (! (= P (origin)))
        (intersect C1 C2 P)
     )
   )
   )
)

(def-answer p1 (PLam P (&&
  (< 0 a) (< a 1)
  (= P (point (* a (^ (- 1 a) (/ 1 3))) (* a (^ (- 1 a) (/ 2 3))))))))

(def-directive p2
  (Find (S)
  (exists (C1 C2 a)
                (&& (= C1 (shape-of-cpfun (PLam p (= (* a (y-coord p)) (^ (x-coord p) 2)))))
                    (= C2 (shape-of-cpfun (PLam p (= (^ (y-coord p) 2) (* a (- 1 a) (x-coord p))))))
                    (< a 1) (< 0 a)
                    (= S (area-of (shape-enclosed-by (list-of C1 C2))))
        (forall (C12 C22 a2 S2)
          (-> (&& (= C12 (shape-of-cpfun (PLam p (= (* a2 (y-coord p)) (^ (x-coord p) 2)))))
            (= C22 (shape-of-cpfun (PLam p (= (^ (y-coord p) 2) (* a2 (- 1 a) (x-coord p))))))
            (< a2 1) (< 0 a2)
            (= S2 (area-of (shape-enclosed-by (list-of C12 C22))))
         )
        (>= S S2)
           )
         )
                 )
         )
   )
)

(def-answer p2 (PLam S (= S (/ 4 81))))

