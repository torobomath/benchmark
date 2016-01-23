;; DOMAIN:    Integration and its Applications
;; THEORY:    PA+trans
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P340
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (f1 f2 S) (&&
      (= f1 (Lam x (exp (- x))))
      (= f2 (Lam x (* (exp (- x)) (abs (cos x)))))
      (= S (Lam n (integral (Lam x (- (LamApp f1 x) (LamApp f2 x))) (* (- (int->real n) 1) (Pi)) (* (int->real n) (Pi)))))
      (= answer (list-of (LamApp S 1) (LamApp S n)))
    ))
  )
)

(def-directive p2
  (Find (lim)
    (exists (f1 f2 S) (&&
      (= f1 (Lam x (exp (- x))))
      (= f2 (Lam x (* (exp (- x)) (abs (cos x)))))
      (= S (Lam n (integral (Lam x (- (LamApp f1 x) (LamApp f2 x))) (* (- (int->real n) 1) (Pi)) (* (int->real n) (Pi)))))
      (seq.is-infinite-sum-of lim (seq.seq S))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of
    (* (/ 1 2) (+ (+ 1 (* -2 (exp (/ (- (Pi)) 2)))) (- (exp (- (Pi))))))
    (* (* (/ 1 2) (exp (* (- (- (int->real n) 1)) (Pi)))) (+ (+ 1 (* -2 (exp (- (/ (Pi) 2))))) (- (exp (- (Pi))))))
  ))
)))

(def-answer p2 (PLam lim (= lim (/ (+ (+ (exp (Pi)) (* -2 (exp (/ (Pi) 2)))) -1) (+ (* 2 (exp (Pi))) -1)))))

