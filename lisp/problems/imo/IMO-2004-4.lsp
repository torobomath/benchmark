;; DOMAIN:    Algebra, inequalities
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 2004, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Let n >= 3 be an integer. Let t1, t2, ..., t_n be positive real
;; numbers such that
;; n^2 + 1 > (t1 + t2 + ... + t_n)(1/t1 + 1/t2 + ... + 1/t_n).
;; Show that t_i, t_j , t_k are side lengths of a triangle for all i, j, k with
;; 1 <= i < j < k <= n.
;; </PROBLEM-TEXT>

(namespace seq)

(def-directive p
  (Show
   (forall (n t ti)
     (-> (&& (is-sequence t)
               (forall (k) (-> (&& (int.<= 1 k)
                                   (int.<= k n))
                               (> (nth-term-of t (index k)) 0)))
               (= ti (seq (Lam k (/ 1 (nth-term-of t (index k))))))
               (> (+ (^ (int->real n) 2) 1)
                  (* (sum-from-to t (index 1) (index n))
                     (sum-from-to ti (index 1) (index n)))))
           (forall (i j k)
                   (-> (&& (int.<= 1 i)
                           (int.< i j)
                           (int.< j k)
                           (int.<= k n))
                       (are-triangle-edges (nth-term-of t (index i))
                                           (nth-term-of t (index j))
                                           (nth-term-of t (index k)))))))))

