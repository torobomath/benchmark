;; DOMAIN:    Number Theory, misc
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 1998, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-05
;;
;; <PROBLEM-TEXT>
;; For any positive integer $n$, let $d(n)$ denote the number of positive divisors of
;; $n$ (including $1$ and $n$ itself). Determine all positive integers $k$ such that
;; $¥frac{d(n^2)}{d(n)} = k$ for some $n$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (k)
   (exists (n d)
     (&& (is-integer m)
           (= d (Lam n (cardinality-of (set-by-def (PLam k (&& (<= 1 k)
                                                               (is-divisible-by n k)))))))
           (= (* k (LamApp d n))
              (LamApp d (^ n 2)))))))

(def-answer p (PLam m (is-odd-number m)))

