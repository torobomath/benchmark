;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E050
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Draw (P)
    (exists (O D) (&&
      (= O (origin))
      (= D (Lam p (Lam q (max (abs (- (x-coord p) (x-coord q))) (abs (- (y-coord p) (y-coord q)))))))
      (= P (set-of-cfun (Lam x (PLam y (= 3 (LamApp (LamApp D O) (point x y)))))))
    ))
  )
)

(def-answer p1
   (set-of-cfun (Lam x (PLam y (|| (&& (<= -3 x) (<= x 3)
                                       (|| (= y 3) (= y -3)))
                                   (&& (|| (= x 3) (= x -3))
                                       (<= -3 y) (<= y 3)))))))

(def-directive p2
  (Draw (P)
    (exists (A D) (&&
      (= A (point 0 2))
      (= D (Lam p (Lam q (max (abs (- (x-coord p) (x-coord q))) (abs (- (y-coord p) (y-coord q)))))))
      (= P (set-of-cfun (Lam x (PLam y (= 3 (LamApp (LamApp D A) (point x y)))))))
    ))
  )
)

(def-answer p2
   (set-of-cfun (Lam x (PLam y (|| (&& (<= -3 x) (<= x 3)
                                       (|| (= y 5) (= y -1)))
                                   (&& (|| (= x 3) (= x -3))
                                       (<= -1 y) (<= y 5)))))))

(def-directive p3
  (Draw (P)
    (exists (O A D) (&&
      (= O (origin))
      (= A (point 0 2))
      (= D (Lam p (Lam q (max (abs (- (x-coord p) (x-coord q))) (abs (- (y-coord p) (y-coord q)))))))
      (= P (set-of-cfun (Lam x (PLam y (= (LamApp (LamApp D O) (point x y)) (LamApp (LamApp D A) (point x y)))))))
    ))
  )
)

(def-answer
  p3
  (set-of-cfun (Lam x (PLam y (|| (&& (<= 1 x)
                                      (<= (+ (- x) 2) y)
                                      (<= y x))
                                  (&& (< -1 x) (< x 1)
                                      (= y 1))
                                  (&& (<= x -1)
                                      (<= (+ x 2) y)
                                      (<= y (- x))))))))

