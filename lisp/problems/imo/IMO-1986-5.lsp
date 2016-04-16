;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1986, Problem 5
;; SCORE:     7
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-14
;;
;; <PROBLEM-TEXT>
;; Find all functions $f$, defined on the non-negative real numbers and taking
;; nonnegative real values, such that:
;; ¥begin{flushleft}
;; (i)   $f(x f(y))f(y) = f(x + y)$ for all $x$, $y$ $¥ge 0$,¥¥
;; (ii)  $f(2) = 0$,¥¥
;; (iii) $f(x) ¥neq 0$ for $0 ¥le x < 2$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(def-directive
 p
 (Find (f)
   (&& (forall (x) (-> (< x 0) (= (LamApp f x) 0)))
       (forall (x) (-> (>= x 0) (>= (LamApp f x) 0)))
       (forall (x y)
         (-> (&& (>= x 0) (>= y 0))
             (= (* (LamApp f (* x (LamApp f y))) (LamApp f y))
                (LamApp f (+ x y)))))
       (= (LamApp f 2) 0)
       (forall (x) (-> (&& (<= 0 x) (< x 2))
                       (! (= (LamApp f x) 0)))))))

(def-answer p (PLam f (= f (Lam x (if (< x 0)
                                    0
                                    (if (&& (<= 0 x) (< x 2))
                                      (/ 2 (- 2 x))
                                      0))))))

