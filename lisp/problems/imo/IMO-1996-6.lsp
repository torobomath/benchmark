;; DOMAIN:    Algebra, number sequences
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1996, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-11
;;
;; <PROBLEM-TEXT>
;; Let $p$, $q$, $n$ be three positive integers with $p + q < n$. Let
;; $(x_0,x_1,¥ldots,x_n)$ be an $(n+1)$-tuple of integers satisfying the following
;; conditions:
;; ¥begin{flushleft}
;; (a) $x_0 = x_n = 0$.¥¥
;; (b) For each $i$ with $1 ¥le i ¥le n$, either $x_i - x_{i-1} = p$ or
;; $x_i -x_{i-1} = -q$.
;; ¥end{flushleft}
;; Show that there exist indices $i < j$ with $(i, j) ¥neq (0, n)$, such that
;; $x_i = x_j$ .
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (p q n xl)
     (-> (&& (> p 0) (> q 0) (> n 0)
               (< (+ p q) n)
               (= (list-len xl) (+ n 1))
               (= (nth 1 xl) 0)
               (= (nth (int.+ n 1) xl) 0)
               (forall (i)
                       (&& (<= 2 i) (<= i (+ n 1))
                           (|| (= (- (nth i xl) (nth (- i 1) xl)) p)
                               (= (- (nth i xl) (nth (- i 1) xl)) (- q))))))
         (exists (i j)
           (&& (< i j)
                   (! (&& (= i 0) (= j n)))
                   (= (nth i xl) (nth j xl))))))))

