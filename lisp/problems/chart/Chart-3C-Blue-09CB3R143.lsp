;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R143
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (/ (Pi) 2)) (= y (- (^ (cos x) 2))))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis) (y-axis)))))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (f l1 l2) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (* (- 3 x) (exp x)))))))
      (= l1 (line (point 0 0) (point 0 1)))
      (= l2 (line (point 2 0) (point 2 1)))
      (= S (area-of (shape-enclosed-by (list-of f l1 l2 (x-axis)))))
    ))
  )
)

(def-directive p21
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 y) (<= y (* (- 3 x) (exp x))) (<= 0 x) (<= x 2))))))
      (= S (area-of f))
    ))
  )
)

(def-answer p1 (PLam S (= S (/ (Pi) 4))))

(def-answer p2 (PLam S (= S (- (* 2 (exp 2)) 4))))

(def-answer p21 (PLam S (= S (- (* 2 (exp 2)) 4))))

