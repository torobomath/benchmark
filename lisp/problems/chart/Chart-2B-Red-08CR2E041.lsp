;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E041
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Draw (Q)
    (exists (O A B) (&&
      (= O (origin))
      (= A (point 1 0))
      (= B (point 0 1))
      (= Q (set-of-cfun (Lam X (PLam Y (exists (x y) (&&
        (on (point x y) (union (list-of (seg O A) (seg A B) (seg B O))))
        (= X (+ x y))
        (= Y (* x y))
      ))))))
    ))
  )
)

(def-answer p1
  (set-of-cfun (Lam x (PLam y (|| (&& (<= 0 x) (<= x 1)
                                      (= y 0))
                                  (&& (= x 1)
                                      (<= 0 y) (<= y (/ 1 4))))))))

(def-directive p2
  (Draw (Q)
    (exists (O A B) (&&
      (= O (origin))
      (= A (point 1 0))
      (= B (point 0 1))
      (= Q (set-of-cfun (Lam X (PLam Y (exists (x y) (&&
        (on (point x y) (triangle O A B))
        (= X (+ x y))
        (= Y (* x y))
      ))))))
    ))
  )
)

(def-answer p2
  (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x 1)
                                  (<= 0 y) (<= y (/ (^ x 2) 4)))))))

