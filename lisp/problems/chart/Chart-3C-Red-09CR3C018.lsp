;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3C018
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (S)
    (exists (f l1 l2) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (/ 1 x))))))
      (= l1 (line (point 1 0) (point 1 1)))
      (= l2 (line (point (Napier) 0) (point (Napier) 1)))
      (= S (area-of (shape-enclosed-by (list-of f l1 l2 (x-axis)))))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (f l1 l2) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (/ 1 (sqrt x)))))))
      (= l1 (line (point 1 0) (point 1 1)))
      (= l2 (line (point 2 0) (point 2 1)))
      (= S (area-of (shape-enclosed-by (list-of f l1 l2 (x-axis)))))
    ))
  )
)

(def-directive p3
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (Pi)) (= y (sin x)))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis)))))
    ))
  )
)

(def-directive p4
  (Find (S)
    (exists (f l1 l2) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (exp x))))))
      (= l1 (line (point 0 0) (point 0 1)))
      (= l2 (line (point 1 0) (point 1 1)))
      (= S (area-of (shape-enclosed-by (list-of f l1 l2 (x-axis)))))
    ))
  )
)

(def-answer p1 (PLam S (= S 1)))

(def-answer p2 (PLam S (= S (* 2 (- (sqrt 2) 1)))))

(def-answer p3 (PLam S (= S 2)))

(def-answer p4 (PLam S (= S (- (Napier) 1))))

