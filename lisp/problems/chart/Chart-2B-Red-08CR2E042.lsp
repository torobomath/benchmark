;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    ZF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E042
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (k)
    (exists (S l1 l2) (&&
      (= S (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (+ (+ (+ (* 10 (^ x 2)) (* (* k x) y)) (* 2 (^ y 2))) (* -9 x)) (* -4 y)) 2))))))
      (line-type l1)
      (line-type l2)
      (! (= l1 l2))
      (forall (x y) (<->
        (on (point x y) S)
        (on (point x y) (union l1 l2))
      ))
    ))
  )
)

(def-answer p (PLam k (= k 9)))

