;; DOMAIN:    Number Theory, misc
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2011, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let f be a function from the set of integers to the set of positive integers.
;; Suppose that, for any two integers m and n, the difference f(m) - f(n)
;; is divisible by f(m - n). Prove that, for all integers m and n
;; with f(m) <= f(n), the number f(n) is divisible by f(m).
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (forall (f)
                (-> (&& (forall (m) (< 0 (LamApp f m)))
                        (forall (m n) (is-divisible-by (- (LamApp f m) (LamApp f n))
                                                       (LamApp f (- m n)))))
                    (forall (m n)
                            (-> (<= (LamApp f m) (LamApp f n))
                                (is-divisible-by (LamApp f n) (LamApp f m))))))))

