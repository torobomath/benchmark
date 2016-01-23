;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P235
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (* (+ (* -2 x) 8) (sqrt (- x 1))))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis)))))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (+ (+ 10 (* -9 (exp (- x)))) (- (exp x))))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis)))))
    ))
  )
)

(def-directive p3
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (/ (Pi) 2)) (= y (^ (sin (+ x (/ (Pi) 2))) 2)))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis) (y-axis)))))
    ))
  )
)

(def-directive p4
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (Pi)) (= y (* (^ (+ 1 (cos x)) 2) (sin (* 2 x)))))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis)))))
    ))
  )
)

(def-answer p1 (PLam S (= S (/ (* 24 (sqrt 3)) 5))))

(def-answer p2 (PLam S (= S (+ (* 20 (ln 3)) -16))))

(def-answer p3 (PLam S (= S (/ (Pi) 4))))

(def-answer p4 (PLam S (= S 3)))

