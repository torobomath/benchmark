;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P242
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (S)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (exists (t) (&&
          (= x (* 3 (^ t 2)))
          (= y (+ (* 3 t) (- (^ t 3))))
        ))))))
      (= S (area-of (shape-enclosed-by (list-of C))))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (exists (theta) (&&
          (<= (/ (Pi) 2) theta) (<= theta (Pi))
          (= x (+ (* (sqrt 3) (cos theta)) (sin theta)))
          (= y (sin (* 2 theta)))
        ))))))
      (= S (area-of (shape-enclosed-by (list-of C (x-axis)))))
    ))
  )
)

(def-answer p1 (PLam S (= S (/ (* 72 (sqrt 3)) 5))))

(def-answer p2 (PLam S (= S (/ (* 2 (+ 1 (sqrt 3))) 3))))

