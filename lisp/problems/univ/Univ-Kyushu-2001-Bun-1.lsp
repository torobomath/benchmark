;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-28
;;
;; <PROBLEM-TEXT>
;; Consider the function $f(x)=\frac{2}{3} a x^3 +(a + b)x^2 +(b + 1)x$.
;;
;; (1) Find the condition for $a$ and $b$ such that the function $f(x)$
;; always increases, and draw the region on the $a b$ plane.
;;
;; (2) Find the condition for $b$ such that the function $f(x)$ always
;; increases when $x > - 1$.
;;
;; (3) Find the condition for $a$ and $b$ such that the function $f(x)$
;; always increases when $x > - 1$, and draw the region on the $a b$
;; plane.
;; </PROBLEM-TEXT>

(def-directive
  p1_a_b
  (Find (b)
  (exists (f)
    (&&
      (= f (poly-fun (list-of 0 (+ b 1) (+ a b) (* (/ 2 3) a))))
      (monotonically-increasing f)))))

(def-directive
  p1_D
  (Draw (D)
  (= D (2d.shape-of-cpfun (PLam p
              (exists (f a b)
                (&&
            (= f (poly-fun (list-of 0 (+ b 1) (+ a b) (* (/ 2 3) a))))
            (monotonically-increasing f)
            (= a (2d.x-coord p))
            (= b (2d.y-coord p)))))))))

(def-directive
  p2
  (Find (b)
  (exists (f a)
    (&&
      (= a 0)
      (= f (poly-fun (list-of 0 (+ b 1) (+ a b) (* (/ 2 3) a))))
      (forall (x1 x2)
        (-> (&&
        (> x1 -1)
        (> x2 -1)
        (> x1 x2))
            (> (funapp f x1) (funapp f x2))))))))

(def-directive
  p3
  (Find (b)
  (exists (f)
    (&&
      (= f (poly-fun (list-of 0 (+ b 1) (+ a b) (* (/ 2 3) a))))
      (forall (x1 x2)
        (-> (&&
        (> x1 -1)
        (> x2 -1)
        (> x1 x2))
            (> (funapp f x1) (funapp f x2))))))))

(def-directive
  p3_D
  (Draw (D)
  (= D (2d.shape-of-cpfun (PLam p
              (exists (f a b)
                (&&
            (= f (poly-fun (list-of 0 (+ b 1) (+ a b) (* (/ 2 3) a))))
            (forall (x1 x2)
              (-> (&&
                    (> x1 -1)
                    (> x2 -1)
                    (> x1 x2))
                  (> (funapp f x1) (funapp f x2))))
            (= (2d.x-coord p) a)
            (= (2d.y-coord p) b))))))))

(def-answer p1_a_b (PLam b (<= (+ (^ (- a 1) 2) (^ b 2)) 1)))

(def-answer p1_D (2d.shape-of-cpfun (PLam P (<= (+ (^ (- (2d.x-coord P) 1) 2) (^ (2d.y-coord P) 2)) 1))))

(def-answer p2 (PLam b (&& (<= 0 b) (<= b 1))))

(def-answer p3 (PLam b (&&
       (<= 0 a)
       (|| (&& (<= a b) (<= b 1))
         (<= (+ (^ (- a 1) 2) (^ b 2)) 1)
       )
)))

(def-answer p3_D (2d.shape-of-cpfun (PLam P (exists (a b)
       (&&
         (<= 0 a)
         (= a (2d.x-coord P))
         (= b (2d.y-coord P))
         (|| (&& (<= a b) (<= b 1))
           (<= (+ (^ (- a 1) 2) (^ b 2)) 1)
         )
)))))

(def-answer a1_1 (PLam _ (<= (+ (^ (- a 1) 2) (^ b 2)) 1)))

(def-answer a1_2 (2d.shape-of-cpfun (PLam P (<= (+ (^ (- (2d.x-coord P) 1) 2) (^ (2d.y-coord P) 2)) 1))))

(def-answer a2 (PLam _ (&& (<= 0 b) (<= b 1))))

(def-answer a3_1 (PLam _ (&&
       (<= 0 a)
       (|| (&& (<= a b) (<= b 1))
         (<= (+ (^ (- a 1) 2) (^ b 2)) 1)
       )
)))

(def-answer p3_2 (2d.shape-of-cpfun (PLam P (exists (a b)
       (&&
         (<= 0 a)
         (= a (2d.x-coord P))
         (= b (2d.y-coord P))
         (|| (&& (<= a b) (<= b 1))
           (<= (+ (^ (- a 1) 2) (^ b 2)) 1)
         )
)))))

