;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2003, Problem 6
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; Show that for each prime p, there exists a prime q such that
;; n^p - p is not divisible by q for any positive integer n.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (forall (p)
                (-> (is-prime p)
                    (exists (q)
                            (&& (is-prime q)
                                (forall (n)
                                        (-> (> n 0)
                                            (! (is-divisible-by q (- (^ n p) p)))))))))))

