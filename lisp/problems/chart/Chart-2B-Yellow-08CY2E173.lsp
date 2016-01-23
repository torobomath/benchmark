;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E173
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

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
    (exists (O P Q l X Y x y) (&&
      (= O (origin))
      (= P (point x y))
      (= Q (point X Y))
      (= l (set-of-cfun (Lam s (PLam t (= -2 (+ s (* -3 t)) )))))
      (= answer (list-of X Y))
      (on P l)
      (on Q (half-line O P))
      (= 2 (* (distance O P) (distance O Q)))
    ))
  )
)

(def-answer p1 (PLam answer (exists (x y) (&&
  (= answer (list-of x y))
  (= (* 2 X) (* x (+ (^ X 2) (^ Y 2))))
  (= (* 2 Y) (* y (+ (^ X 2) (^ Y 2))))
  (! (= (point X Y) (origin)))
))))

(def-answer p2 (PLam answer (exists (X Y) (&&
  (= answer (list-of X Y))
  (! (= (point X Y) (origin)))
  (= (/ 5 2) (+ (^ (+ X (/ 1 2)) 2) (^ (- Y (/ 3 2)) 2)))
))))

