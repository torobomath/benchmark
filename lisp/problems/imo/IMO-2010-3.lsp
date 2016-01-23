;; DOMAIN:    Number Theory, prime factor decomposition
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2010, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Let N be the set of positive integers. Determine all functions g : N -> N
;; such that
;; (g(m) + n)(m + g(n))
;; is a perfect square for all m, n in N.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (g)
    (&& (forall (k) (-> (< 0 k)  (< 0 (LamApp g k))))
        (forall (k) (-> (<= k 0) (= (LamApp g k) 0)))
        (forall (m n)
                (-> (&& (is-integer m) (> m 0)
                        (is-integer n) (> n 0))
                    (is-square-number (* (+ (LamApp g m) n) (+ m (LamApp g n)))))))))

(def-answer p (PLam g
  (exists (k)
    (&& (is-natural-number k)
        (forall (x) (-> (<= x 0) (= (LamApp g x) 0)))
        (forall (x) (-> (< 0 x)
                        (= (LamApp g x) (+ x k))))))))

