;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1979, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-26
;;
;; <PROBLEM-TEXT>
;; Find all real numbers $a$ for which there exist non-negative real
;; numbers $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ satisfying the relations\[
;; \sum_{k=1}^{5} k x_k = a,
;; \sum_{k=1}^{5} k^3 x_k = a^2,
;; \sum_{k=1}^{5} k^5 x_k = a^3.
;; \]
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (a)
        (exists (x1 x2 x3 x4 x5)
                (&& (>= x1 0)
                    (>= x2 0)
                    (>= x3 0)
                    (>= x4 0)
                    (>= x5 0)
                    (= (+ x1 (* 2 x2) (* 3 x3) (* 4 x4) (* 5 x5))
                       a)
                    (= (+ x1 (* 8 x2) (* 27 x3) (* 64 x4) (* 125 x5))
                       (* a a))
                    (= (+ x1 (* 32 x2) (* 243 x3) (* 1024 x4) (* 3125 x5))
                       (* a a a))))))

(def-answer p (PLam a (|| (= a 0)
                          (= a 1)
                          (= a 4)
                          (= a 9)
                          (= a 16)
                          (= a 25))))

