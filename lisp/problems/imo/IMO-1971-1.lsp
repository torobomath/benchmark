;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 1971, Problem 1
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Prove that the following assertion is true for $n = 3$ and $n = 5$, and that it
;; is false for every other natural number $n > 2$:
;; If $a_1, a_2, \ldots, a_n$ are arbitrary real numbers, then
;; $(a_1-a_2)(a_1-a_3) \cdots (a_1-a_n) + (a_2-a_1)(a_2-a_3) \cdots (a_2-a_n)
;; + \cdots +(a_n-a_1)(a_n-a_2)\cdots(a_n-a_{n-1}) \geq 0$
;; </PROBLEM-TEXT>

(def-directive p1
  (Show
   (forall (a1 a2 a3)
     (>= (+ (* (- a1 a2) (- a1 a3))
              (* (- a2 a1) (- a2 a3))
              (* (- a3 a1) (- a3 a2))) 0))))

(def-directive p2
  (Show
   (forall (a1 a2 a3 a4 a5)
     (>= (+ (* (- a1 a2) (- a1 a3) (- a1 a4) (- a1 a5))
              (* (- a2 a1) (- a2 a3) (- a2 a4) (- a2 a5))
              (* (- a3 a1) (- a3 a2) (- a3 a4) (- a3 a5))
              (* (- a4 a1) (- a4 a2) (- a4 a3) (- a4 a5))
              (* (- a5 a1) (- a5 a2) (- a5 a3) (- a5 a4))) 0))))

(def-directive p3
  (Show
    (! (forall (as)
         (-> (&& (int.< 2 (list-len as))
                 (! (= (list-len as) 3))
                 (! (= (list-len as) 5)))
             (>= (sum (map (Lam b (product (map (Lam c (- b c)) (delete b as)))) as)) 0))))))

