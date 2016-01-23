;; DOMAIN:    Analysis, misc
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2002, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-04
;;
;; <PROBLEM-TEXT>
;; Find all real-valued functions on the reals such that
;; (f(x) + f(y))((f(u) + f(v)) = f(xu - yv) + f (xv + yu)
;; for all x, y, u, v.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (f)
  (forall (x y u v)
    (= (* (+ (LamApp f x) (LamApp f y))
              (+ (LamApp f u) (LamApp f v)))
           (+ (LamApp f (- (* x u) (* y v)))
              (LamApp f (+ (* x v) (* y u))))))))

(def-answer p (PLam f
        (|| (= f (Lam x  0))
                (= f (Lam x (/ 1 2)))
                (= f (Lam x (^ x 2))))))

