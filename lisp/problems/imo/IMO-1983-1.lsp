;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1983, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Find all functions $f$ defined on the set of positive real numbers which take
;; positive real values and satisfy the conditions:
;; ¥begin{flushleft}
;; (i)  $f(x f(y)) = y f(x)$ for all positive $x$, $y$;¥¥
;; (ii) $f(x)¥rightarrow 0$ as $x¥rightarrow ¥infty$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(def-directive p
  (Find (f)
    (&& (forall (x) (-> (<= x 0) (= 0 (LamApp f x))))
      (forall (x) (-> (< 0 x) (< 0 (LamApp f x))))
      (forall (x y)
              (-> (&& (< 0 x)
                      (< 0 y))
                  (= (LamApp f (* x (LamApp f y))) (* y (LamApp f x)))))
      (forall (epsilon)
               (-> (< 0 epsilon)
                   (exists (M)
                     (forall (x)
                        (-> (< M x) (< (LamApp f x) epsilon)))))))))

(def-answer p (PLam f (forall (x) (&& (-> (> x 0)  (= (LamApp f x) (/ 1 x)))
                                      (-> (<= x 0) (= (LamApp f x) 0))))))

