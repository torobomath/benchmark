;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1988, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-02
;;
;; <PROBLEM-TEXT>
;; A function $f$ is defined on the positive integers by
;; ¥[
;; ¥begin{array}{l}
;; f(1) = 1, f(3) = 3,¥¥
;; f(2n) = f(n),¥¥
;; f(4n + 1) = 2f(2n + 1) - f(n),¥¥
;; f(4n + 3) = 3f(2n + 1) - 2f(n),
;; ¥end{array}
;; ¥]
;; for all positive integers $n$. Determine the number of positive integers $n$, less
;; than or equal to $1988$, for which $f(n) = n$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (ans)
        (exists (f)
                (&& (forall (n) (-> (<= n 0) (= (LamApp f n) 0)))
                    (= (LamApp f 1) 1)
                    (= (LamApp f 3) 3)
                    (forall (n)
                            (-> (> n 0)
                                (&& (= (LamApp f (* 2 n)) (LamApp f n))
                                    (= (LamApp f (+ (* 4 n) 1))
                                       (- (* 2 (LamApp f (+ (* 2 n) 1)))
                                          (LamApp f n)))
                                    (= (LamApp f (+ (* 4 n) 3))
                                       (- (* 3 (LamApp f (+ (* 2 n) 1)))
                                          (* 2 (LamApp f n)))))))
                    (= ans (cardinality-of (set-by-def (PLam n (= (LamApp f n) n)))))))))

(def-answer p (PLam ans (= ans 92)))

