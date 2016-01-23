;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2014, Science Course, Problem 6
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-04-01

(namespace 2d)

(def-directive
  p1
  (Find (t)
    (exists (P Q O D Pf Qf)
      (&&
        (= D (shape-of-cpfun (PLam d (&&
          (= O (origin))
          (= Pf (intersection
                  (graph-of (poly-fun (list-of 0 (sqrt 3))))
                  (shape-of-cpfun (PLam q (&&
                     (<= 0 (x-coord q))
                     (<= (x-coord q) 2))))))
          (on P Pf)
          (= Qf (intersection
                  (graph-of (poly-fun (list-of 0 (- (sqrt 3)))))
                  (shape-of-cpfun (PLam q (&&
                     (<= (- 2) (x-coord q))
                     (<= (x-coord q) 0))))))
          (on Q Qf)
          (= (+ (distance O P) (distance O Q)) 6)
          (on d (seg P Q))
        ))))
        (<= 0 s)
        (<= s 2)
        (on (point s t) D)
      )
    )
  )
)

(def-answer p1 (PLam t (||
         (&& (<= (* (^ 3 (/ 1 2)) s) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 3) (+ s 4)))
             (<= 1 s)
             (<= s 2))
         (&& (<= (* (/ (^ 3 (/ 1 2)) 3) (- 4 s)) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 6) (+ (^ s 2) 9)))
             (<= 0 s)
             (<= s 1)))))

(def-directive
  p2
  (Draw (D)
    (exists (P Q O Pf Qf)
      (&&
        (= D (shape-of-cpfun (PLam d (&&
          (= O (origin))
          (= Pf (intersection
                  (graph-of (poly-fun (list-of 0 (sqrt 3))))
                  (shape-of-cpfun (PLam q (&&
                     (<= 0 (x-coord q))
                     (<= (x-coord q) 2))))))
          (on P Pf)
          (= Qf (intersection
                  (graph-of (poly-fun (list-of 0 (- (sqrt 3)))))
                  (shape-of-cpfun (PLam q (&&
                     (<= (- 2) (x-coord q))
                     (<= (x-coord q) 0))))))
          (on Q Qf)
          (= (+ (distance O P) (distance O Q)) 6)
          (on d (seg P Q))
        ))))
      )
    )
  )
)

(def-answer p2 (set-of-cfun (Lam s (PLam t (||
         (&& (<= 1 s) (<= s 2)
             (<= (* (^ 3 (/ 1 2)) s) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 3) (+ s 4))))
         (&& (<= 0 s) (<= s 1)
             (<= (* (/ (^ 3 (/ 1 2)) 3) (- 4 s)) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 6) (+ (^ s 2) 9))))
         (&& (<= -1 s) (<= s 0)
             (<= (* (/ (^ 3 (/ 1 2)) 3) (+ 4 s)) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 6) (+ (^ s 2) 9))))
         (&& (<= -2 s) (<= s -1)
             (<= (* (- (^ 3 (/ 1 2))) s) t)
             (<= t (* (/ (^ 3 (/ 1 2)) 3) (+ (- s) 4))))
)))))

