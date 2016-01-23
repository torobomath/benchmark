;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     1
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R137
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (S)
    (exists (f) (&&
      (= f (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= x (* 2 (Pi))) (= y (sin x)))))))
      (= S (area-of (shape-enclosed-by (list-of f (x-axis)))))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (f C l) (&&
      (= f (Lam x (* (- 3 x) (exp x))))
      (= C (set-of-cfun (Lam x (PLam y (= y (LamApp f x))))))
      (= l (line (point a 0) (point a 1)))
      (&& (= answer (list-of a S))
        (= 0 (LamApp (deriv f) a))
        (exists (d) (&&
          (< 0 d)
          (forall (x) (&&
            (-> (< (- x a) d)
              (<= (LamApp (deriv f) x) 0)
            )
            (-> (< (- a x) d)
              (<= 0 (LamApp (deriv f) x))
            )
          ))
        ))
        (= S (area-of (shape-enclosed-by (list-of C l (x-axis)))))
      )
    ))
  )
)

(def-answer p1 (PLam S (= S 4)))

(def-answer p2 (PLam answer (= answer (list-of 2 (+ (exp 3) (* -2 (exp 2)))))))

