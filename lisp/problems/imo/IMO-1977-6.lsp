;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1977, Problem 6
;; SCORE:     8
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-02
;;
;; <PROBLEM-TEXT>
;; Let $f(n)$ be a function defined on the set of all positive integers and having
;; all its values in the same set. Prove that if\[
;; f(n + 1) > f(f(n))
;; \]for each positive integer $n$, then
;; \begin{center} $f(n) = n$ for each $n$ \end{center}
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (forall (f)
               (-> (forall (n)
                           (&& (-> (> n 0)
                                   (&& (> (LamApp f n) 0)
                                       (> (LamApp f (+ n 1)) (LamApp f (LamApp f n)))))
                               (-> (<= n 0)
                                   (= (LamApp f n) 0))))
                   (forall (n) (&& (-> (> n 0)  (= (LamApp f n) n))
                                   (-> (<= n 0) (= (LamApp f n) 0))))))))

