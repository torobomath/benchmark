;; DOMAIN:    Algebra, inequalities
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 2012, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-17
;;
;; <PROBLEM-TEXT>
;; Let n >= 3 be an integer, and let a2, a3, ..., a_n be positive real numbers
;; such that  a2 a3 ... a_n = 1. Prove that
;; (1 + a2)^2 (1 + a3)^2 ... (1 + a_n)^n > n^n.
;; </PROBLEM-TEXT>

(namespace seq)

(def-directive p
  (Show
   (forall (n a)
     (-> (&& (int.>= n 3)
               (forall (k) (-> (&& (int.<= 2 k) (int.<= k n))
                               (< 0 (nth-term-of a (index k)))))
               (= (prod-from-to a (index 2) (index n)) 1))
           (> (prod-from-to
                (seq (Lam k (^ (+ 1 (nth-term-of a (index k))) 2)))
                (index 2)
                (index n))
              (int->real (int.^ n n)))))))

