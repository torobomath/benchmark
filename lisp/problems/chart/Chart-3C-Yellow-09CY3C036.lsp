;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C036
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p
  (Find (S)
  (exists (C1)
    (&&
     (= C1 (set-of-cfun (Lam x (PLam y (&& (>= y (/ 1 (+ 1 x)))
                   (<= y (exp x))
                   (<= x 1)
                   (<= 0 x)
                   )))))
     (= S (area-of C1))
     )
   )
   )
)

(def-answer p (PLam S (= S (- (- (exp 1) (ln 2)) 1))))

