;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBE002
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (A B C b c p K P x y) (&&
      (= b (vec A B))
      (= c (vec A C))
      (= p (vec A P))
      (= 1 (distance A B))
      (is-equilateral-triangle A B C)
      (circle-type K)
      (is-inscribed-in (triangle A B C) K)
      (on P K)
      (= p (v+ (sv* x b) (sv* y c)))
      (= answer (list-of x y))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (E x y u v) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 0 (+ (^ x 2) (+ (^ y 2) (+ (* x y) (+ (- x) (- y))))))))))
      (on (point x y) E)
      (= u (+ x (* (/ 1 2) y)))
      (= v (* (/ (sqrt 3) 2) y))
      (= answer (list-of u v))
    ))
  )
)

(def-answer p1 (PLam answer
  (exists (x y)
    (&& (= answer (list-of x y))
        (= 0 (+ (^ x 2) (+ (^ y 2) (+ (* x y) (+ (- x) (- y))))))))))

(def-answer p2 (PLam answer (exists (u v) (&&
  (= answer (list-of u v))
  (= (/ 1 3) (+ (^ (- u (/ 1 2)) 2) (^ (- v (/ (sqrt 3) 6)) 2)))
))))

