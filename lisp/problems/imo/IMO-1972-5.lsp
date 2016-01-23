;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1972, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-02
;;
;; <PROBLEM-TEXT>
;; Lef $f$ and $g$ be real-valued functions defined for all real values of $x$ and $y$,
;; and satisfying the equation\[
;; f(x + y) + f(x - y) = 2f(x)g(y)
;; \]forall $x$, $y$. Prove that if $f(x)$ is not identically zero,
;; and if $|f(x)| \leq 1$ for all $x$, then $|g(x)| \leq 1$ for all $y$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (forall (f g)
                (-> (&& (forall (x y)
                                (= (+ (funapp f (+ x y)) (funapp f (- x y)))
                                   (* 2 (funapp f x) (funapp g x))))
                        (exists (x) (! (= (funapp f x) 0)))
                        (forall (x) (<= (abs (funapp f x)) 1)))
                    (forall (y) (<= (abs (funapp g y)) 1))))))

