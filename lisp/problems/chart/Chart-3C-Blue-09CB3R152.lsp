;; DOMAIN:    Integration and its Applications
;; THEORY:    PA+trans
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R152
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p
  (Find (lim)
    (exists (f S) (&&
      (= f (Lam x (* (exp (- x)) (sin x))))
      (= S (Lam n (integral f (* (+ (* 2 (int->real n)) 0) (Pi))
                    (* (+ (* 2 (int->real n)) 1) (Pi)))))
      (seq.is-infinite-sum-of lim (seq.seq S))
    ))
  )
)

(def-answer p (PLam lim (= lim (/ (exp (Pi)) (* 2 (- (exp (Pi)) 1))))))

