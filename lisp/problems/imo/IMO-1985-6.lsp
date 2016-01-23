;; DOMAIN:    Algebra, number sequences
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 1985, Problem 6
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; For every real number $x_1$, construct the sequence $x_1, x_2, ¥ldots$ by setting
;; ¥begin{center}
;; $x_{n+1} = x_n (x_n + ¥frac{1}{n})$  for each $n ¥ge 1$.
;; ¥end{center}
;; Prove that there exists exactly one value of $x_1$ for which
;; ¥[
;; 0 < x_n < x_{n+1} < 1
;; ¥]
;; for every $n$.
;; </PROBLEM-TEXT>

(namespace seq)

(def-directive p
 (Show
  (exists (x1 x)
    (&& (< 0 x1) (< x1 1)
        (= x (seq-by-rec1 x1 (Lam n (Lam xn (* xn (+ xn (/ 1 (int->real n))))))))
        (forall (n)
          (-> (int.<= n 1)
              (&& (< 0 (nth-term-of x (index n)))
                  (< (nth-term-of x (index n)) 1))))
        (is-strictly-increasing x)
        (forall (y1 y)
          (-> (&& (< 0 y1) (< y1 1)
                  (= y (seq-by-rec1 y1 (Lam n (Lam yn (* yn (+ yn (/ 1 (int->real n))))))))
                  (forall (n)
                          (-> (int.<= n 1)
                              (&& (< 0 (nth-term-of y (index n)))
                                  (< (nth-term-of y (index n)) 1))))
                  (is-strictly-increasing y))
              (= x1 y1)))))))

