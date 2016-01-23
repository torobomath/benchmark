;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP061
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (O C1 C2 max min) (&&
      (= O (origin))
      (= C1 (set-of-cfun (Lam x (PLam y (= 4 (+ (^ (- x 2) 2) (^ (- y 2) 2)))))))
      (= C2 (set-of-cfun (Lam x (PLam y (= 1 (+ (^ (+ x 1) 2) (^ (+ y 1) 2)))))))
      (minimum
        (set-by-def (PLam v (exists (P Q) (&&
          (on P C1)
          (on Q C2)
          (= v (inner-prod (vec O P) (vec O Q)))
        ))))
        min
      )
      (maximum
        (set-by-def (PLam v (exists (P Q) (&&
          (on P C1)
          (on Q C2)
          (= v (inner-prod (vec O P) (vec O Q)))
        ))))
        max
      )
      (= answer (list-of max min))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (C1 C2 max min) (&&
      (= C1 (set-of-cfun (Lam x (PLam y (= 1 (+ (^ x 2) (^ y 2)))))))
      (= C2 (set-of-cfun (Lam u (PLam v (= 4 (+ (^ u 2) (^ v 2)))))))
      (minimum
        (set-by-def (PLam value (exists (x y u v) (&&
          (on (point x y) C1)
          (on (point u v) C2)
          (= value (+ (* x u) (* y v)))
        ))))
        min
      )
      (maximum
        (set-by-def (PLam value (exists (x y u v) (&&
          (on (point x y) C1)
          (on (point u v) C2)
          (= value (+ (* x u) (* y v)))
        ))))
        max
      )
      (= answer (list-of max min))
    ))
  )
)

(def-answer p1 (PLam answer (exists (max min) (&&
  (= answer (list-of max min))
  (= max 0)
  (= min (+ -6 (* -4 (sqrt 2))))
))))

(def-answer p2 (PLam answer (exists (max min) (&&
  (= answer (list-of max min))
  (= max 2)
  (= min -2)
))))

