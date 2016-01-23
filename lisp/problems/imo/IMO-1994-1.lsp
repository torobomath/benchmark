;; DOMAIN:    Combinatorics, finite sets
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-11
;;
;; <PROBLEM-TEXT>
;; Let $m$ and $n$ be positive integers. Let $a_1, a_2, ¥ldots, a_m$ be distinct
;; elements of $¥{1, 2, ... , n¥}$ such that whenever $a_i + a_j ¥le n$ for some $i$,
;; $j$, $1 ¥le i ¥le j ¥le m$, there exists $k$, $1 ¥le k ¥le m$, with
;; $a_i + a_j = a_k$. Prove that
;; ¥[
;; ¥frac{a_1 + a_2 + ... + a_m}{m} ¥ge ¥frac{n+1}{2}.
;; ¥]
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
   (Show
     (forall (n m an)
             (-> (&& (> m 0) (> n 0)
                     (= (list-len an) m)
                     (forall (i)
                             (-> (&& (<= 1 i) (<= i m))
                                 (&& (<= 1 (nth (- i 1) an))
                                     (<= (nth (- i 1) an) n))))
                     (forall (i j)
                             (-> (&& (<= 1 i) (< i j) (<= j m))
                                 (! (= (nth (- i 1) an) (nth (- j 1) an)))))
                     (forall (i j)
                             (-> (&& (<= 1 i) (<= i j) (<= j m)
                                     (<= (+ (nth (- i 1) an) (nth (- j 1) an)) n))
                                 (exists (k)
                                         (&& (<= 1 k) (<= k m)
                                             (= (+ (nth (- i 1) an) (nth (- j 1) an))
                                                (nth (- k 1) an)))))))
                 (rat.>= (rat.ratio (sum an) m)
                         (rat.ratio (+ n 1) 2))))))

