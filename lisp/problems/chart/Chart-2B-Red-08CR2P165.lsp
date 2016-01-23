;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P165
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Draw (D)
    (exists (Ca a) (&&
      (= Ca (set-of-cfun (Lam x (PLam y (= (+ (^ a 2) 1) (+ (^ (- x a) 2) (^ (- y a) 2)))))))
      (<= 0 a)
      (on D Ca)
    ))
  )
)

(def-answer
  p
  (set-of-cfun (Lam x (PLam y
     (|| (&& (<= -1 x)
             (<= x (/ -1 (sqrt 2)))
             (<= (- (sqrt (- 1 (^ x 2)))) y)
             (<= y (sqrt (- 1 (^ x 2)))))
         (&& (< (/ -1 (sqrt 2)) x)
             (< x 0)
             (<= (- (sqrt (- 1 (^ x 2)))) y)
             (<= y (/ -1 (* 2 x))))
         (&& (= x 0)
             (<= -1 y))
         (&& (< 0 x)
             (<= x (/ 1 (sqrt 2)))
             (<= (- (sqrt (- 1 (^ x 2)))) y))
         (&& (<= (/ 1 (sqrt 2)) x)
             (<= (/ -1 (* 2 x)) y)))))))

