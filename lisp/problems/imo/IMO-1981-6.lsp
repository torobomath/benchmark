;; DOMAIN:    Algebra, functions
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1981, Problem 6
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; The function $f(x, y)$ satisfies
;; ¥[
;; ¥begin{array}{l}
;; (1) f(0, y) = y + 1,¥¥
;; (2) f(x + 1, 0) = f(x, 1),¥¥
;; (3) f(x + 1, y + 1) = f(x, f(x + 1, y)),
;; ¥end{array}
;; ¥]
;; for all non-negative integers $x$, $y$. Determine $f(4, 1981)$.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (value)
    (forall (f)
      (-> (forall (x y)
                  (&& (= (+ y 1) (LamApp (LamApp f y) 0))
                      (= (LamApp (LamApp f 0) (+ x 1)) (LamApp (LamApp f 1) x))
                      (= (LamApp (LamApp f (+ y 1)) (+ x 1))
                         (LamApp (LamApp f (LamApp (LamApp f y) (+ x 1))) x))))
          (= value (LamApp (LamApp f 1981) 4))))))

(def-answer
  p
  (PLam value (= value (- (repeat 1983 (Lam n (^ 2 n)) 2) 2))))

