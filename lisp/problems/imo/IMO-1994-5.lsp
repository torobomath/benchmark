;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-02
;;
;; <PROBLEM-TEXT>
;; Let $S$ be the set of real numbers strictly greater than $-1$. Find all functions
;; $f : S ¥rightarrow S$ satisfying the two conditions:
;; ¥begin{flushleft}
;; 1. $f(x + f(y) + xf(y)) = y + f(x) + yf(x)$ for all $x$ and $y$ in $S$;¥¥
;; 2. $¥frac{f(x)}{x}$ is strictly increasing on each of the intervals $-1 < x < 0$
;; and $0 < x$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (f)
        (&& (forall (x y)
                    (-> (&& (> x -1) (> y -1))
                        (&& (> (funapp f x) -1)
                            (= (funapp f (+ x (funapp f y) (* x (funapp f y))))
                               (+ y (funapp f x) (* y (funapp f x))))
                            (-> (&& (< x y) (< y 0))
                                (< (/ (funapp f x) x) (/ (funapp f y) y)))
                            (-> (&& (< x y) (< 0 x))
                                (< (/ (funapp f x) x) (/ (funapp f y) y))))))
            (forall (x) (-> (<= x -1) (= (funapp f x) 0))))))

(def-answer p (PLam f (forall (x) (&& (-> (> x -1)  (= (funapp f x) (/ (- x) (+ x 1))))
                                      (-> (<= x -1) (= (funapp f x) 0))))))

