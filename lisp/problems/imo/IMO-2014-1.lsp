;; DOMAIN:    Algebra, computation of expressions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2014, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-10
;;
;; <PROBLEM-TEXT>
;; Let $a_0 < a_1 < a_2 < \ldots$ be an infinite sequence of positive integers.
;; Prove that there exists a unique integer $n \geq 1$ such that\[
;; a_n < \frac{a_0 + a_1 + \ldots + a_n}{n} \leq a_{n+1}.
;; \]
;; </PROBLEM-TEXT>

(namespace rat)

(def-directive
 p
 (Show
   (forall (a)
     (-> (&& (forall (n) (-> (int.<= 0 n) (int.<= 1 (LamApp a n))))
             (forall (n) (-> (int.<= 0 n) (int.<= (LamApp a n)
                                                  (LamApp a (int.+ n 1))))))
         (exists (n)
           (&& (int.<= 1 n)
               (< (int->rat (LamApp a n))
                  (ratio (int.sum (map a (int.iota 0 n))) n))
               (<= (ratio (int.sum (map a (int.iota 0 n))) n)
                   (int->rat (LamApp a (int.+ n 1))))
               (forall (m)
                 (-> (&& (int.<= 1 m)
                         (< (int->rat (LamApp a m))
                            (ratio (int.sum (map a (int.iota 0 m))) m))
                         (<= (ratio (int.sum (map a (int.iota 0 m))) m)
                             (int->rat (LamApp a (int.+ m 1)))))
                     (= n m)))))))))

