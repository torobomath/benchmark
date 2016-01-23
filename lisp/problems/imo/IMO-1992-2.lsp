;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1992, Problem 2
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; Let $¥mathbf{R}$ denote the set of all real numbers. Find all functions
;; $f : ¥mathbf{R} ¥rightarrow ¥mathbf{R}$ such that
;; ¥begin{center}
;; $f(x^2 + f(y)) = y + f(x)^2$ for all $x$, $y$ in $¥mathbf{R}$.
;; ¥end{center}
;; </PROBLEM-TEXT>

(def-directive p
  (Find (f)
    (forall (x y)
      (= (LamApp f (+ (^ x 2) (LamApp f y)))
        (+ y (^ (LamApp f x) 2))))))

(def-answer p (PLam f (= f (Lam x x))))

