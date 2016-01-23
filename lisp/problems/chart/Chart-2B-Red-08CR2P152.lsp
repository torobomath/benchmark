;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P152
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (O P Q x y) (&&
      (= O (origin))
      (= P (point x y))
      (= Q (point X Y))
      (on Q (half-line O P))
      (= 2 (* (distance O P) (distance O Q)))
      (= answer (list-of x y))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (O P Q l x y) (&&
      (= O (origin))
      (= P (point x y))
      (= Q (point X Y))
      (= l (set-of-cfun (Lam s (PLam t (= 1 (+ s (* 2 t)) )))))
      (= answer (list-of X Y))
      (on P l)
      (on Q (half-line O P))
      (= 2 (* (distance O P) (distance O Q)))
    ))
  )
)

(def-answer p1 (PLam answer (exists (x y) (&&
  (= answer (list-of x y))
  (|| (! (= X 0)) (! (= Y 0)))
  (= x (/ (* 2 X) (+ (^ X 2) (^ Y 2))))
  (= y (/ (* 2 Y) (+ (^ X 2) (^ Y 2))))
))))

(def-answer p2 (PLam answer (&&
  (= answer (list-of X Y))
  (! (= (point X Y) (origin)))
  (= 5 (+ (^ (- X 1) 2) (^ (- Y 2) 2)))
)))

