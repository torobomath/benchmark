;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P333
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (E1 E2) (&&
      (= answer (list-of x y))
      (on (point x y) (intersection E1 E2))
      (= E1 (set-of-cfun (Lam x (PLam y (= 1 (+ (^ x 2) (/ (^ y 2) 3)))))))
      (= E2 (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 3) (^ y 2)))))))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (E1 E2) (&&
      (= E1 (set-of-cfun (Lam x (PLam y (<= (+ (^ x 2) (/ (^ y 2) 3)) 1)))))
      (= E2 (set-of-cfun (Lam x (PLam y (<= (+ (/ (^ x 2) 3) (^ y 2)) 1)))))
      (= S (area-of (intersection E1 E2)))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (|| (&& (= x (/ (sqrt 3) 2)) (= y (/ (sqrt 3) 2)))
    (&& (= x (/ (sqrt 3) 2)) (= y (- (/ (sqrt 3) 2))))
    (&& (= x (- (/ (sqrt 3) 2))) (= y (/ (sqrt 3) 2)))
    (&& (= x (- (/ (sqrt 3) 2))) (= y (- (/ (sqrt 3) 2))))
  )
)))

(def-answer p2 (PLam S (= S (/ (* (* 2 (sqrt 3)) (Pi)) 3))))

