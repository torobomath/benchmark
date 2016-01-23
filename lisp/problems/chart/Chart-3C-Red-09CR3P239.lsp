;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P239
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Show
    (exists (C1 C2 x) (&&
      (= C1 (Lam x (* 2 (sqrt (- x 1)))))
      (= C2 (Lam x (+ (ln (- x 1)) 2)))
      (= (LamApp C1 x) (LamApp C2 x))
      (forall (x0) (->
        (= (LamApp C1 x0) (LamApp C2 x0))
        (= x x0)
      ))
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (C1 C2) (&&
      (= C1 (set-of-cfun (Lam x (PLam y (= y (* 2 (sqrt (- x 1))))))))
      (= C2 (set-of-cfun (Lam x (PLam y (= y (+ (ln (- x 1)) 2))))))
      (= S (area-of (shape-enclosed-by (list-of C1 C2 (x-axis)))))
    ))
  )
)

(def-answer p2 (PLam S (= S (+ (/ 1 3) (/ -1 (exp 2))))))

