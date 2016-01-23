;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C White Book, Problem 09CW3R139
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-30

(namespace 2d)

(def-directive p
  (Find (S)
    (exists (f l1 l2) (&&
      (= f (set-of-cfun (Lam x (PLam y (= y (/ (- 1 x) (+ 2 x)))))))
      (= l1 (line (point -1 0) (point -1 1)))
      (= l2 (line (point 2 0) (point 2 1)))
      (= S (area-of (shape-enclosed-by (list-of f l1 l2 (x-axis)))))
    ))
  )
)

(def-answer p (PLam S (= S (+ (* 6 (ln (/ 3 2))) -1))))

