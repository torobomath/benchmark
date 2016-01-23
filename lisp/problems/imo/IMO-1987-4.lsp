;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1987, Problem 4
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-11
;;
;; <PROBLEM-TEXT>
;; Prove that there is no function $f$ from the set of non-negative integers into
;; itself such that $f(f(n)) = n + 1987$ for every $n$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (! (exists (f)
          (&& (forall (n) (-> (< n 0)  (= (LamApp f n) 0)))
              (forall (n) (-> (<= 0 n) (<= 0 (LamApp f n))))
              (forall (n) (-> (<= 0 n) (= (LamApp f (LamApp f n)) (+ n 1987)))))))))

