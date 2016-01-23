;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1990, Problem 4
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; Let $¥mathbb{Q}^+$ be the set of positive rational numbers. Construct a function
;; $f : ¥mathbb{Q}^+ ¥rightarrow ¥mathbb{Q}^+$ such that
;; ¥[
;; f(x f(y)) = ¥frac{f(x)}{y}
;; ¥]
;; for all $x$, $y$ in $¥mathbb{Q}^+$.
;; </PROBLEM-TEXT>

(def-directive p
  (Show (exists (f)
      (forall (x y) (->
    (&& (is-rational x)
      (is-rational y)
      (< 0 x)
      (< 0 y))
    (= (LamApp f (* x (LamApp f y))) (/ (LamApp f x) y)))))))

