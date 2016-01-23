;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3E342
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p
  (Find (S)
  (exists (C1 C2)
    (&& (= C1 (shape-of-cpfun (PLam P (= (+ (/ (^ (x-coord P) 2) 3) (^ (y-coord P) 2)) 1))))
        (= C2 (shape-of-cpfun (PLam P (= (+ (^ (x-coord P) 2) (/ (^ (y-coord P) 2) 3)) 1))))
        (= S (area-of (shape-enclosed-by (list-of C1 C2))))
        )
   )
   )
)

(def-answer p (PLam S (= S (/ (* 2 (sqrt 3) (Pi)) 3))))

