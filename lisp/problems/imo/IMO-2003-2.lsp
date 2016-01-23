;; DOMAIN:    Algebra, quadratic equations
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2003, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; Find all pairs (m, n) of positive integers such that
;; m^2 / (2 m n^2 - n^3 + 1)
;; is a positive integer.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (mn)
        (exists (m n)
                (&& (= mn (list-of m n))
                    (> m 0)
                    (> n 0)
                    (is-divisible-by (^ m 2)
                                     (+ (* 2 m n n)
                                        (- (^ n 3))
                                        1))
                    (> (+ (* 2 m n n)
                          (- (^ n 3))
                          1)
                       0)))))

(def-answer p (PLam mn (exists (l)
                               (&& (> l 0)
                                   (|| (= mn (list-of (* 2 l) l))
                                       (= mn (list-of l (* 2 l)))
                                       (= mn (list-of (- (* 8 (^ l 4)) l)
                                                      (* 2 l))))))))

