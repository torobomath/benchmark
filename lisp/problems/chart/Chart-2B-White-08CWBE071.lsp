;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBE071
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (O A B P s t) (&&
      (= O (origin))
      (= A (point 3 1))
      (= B (point 1 2))
      (= P (point x y))
      (= answer (list-of x y))
      (<= (+ s t) 2)
      (<= 0 s)
      (<= 0 t)
      (= (vec O P) (v+ (sv* s (vec O A)) (sv* t (vec O B))))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (O A B P s t) (&&
      (= O (origin))
      (= A (point 3 1))
      (= B (point 1 2))
      (= P (point x y))
      (= answer (list-of x y))
      (<= 0 s) (<= s 1)
      (<= 1 t) (<= t 2)
      (= (vec O P) (v+ (sv* s (vec O A)) (sv* t (vec O B))))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (<= (- (+ x (* 2 y)) 10) 0)
  (<= y (* 2 x))
  (<= x (* 3 y)))))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (<= y (* 2 x))
  (<= (- (* 2 x) y) 5)
  (<= (+ x 5) (* 3 y))
  (<= (* 3 y) (+ x 10)))))

