;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1982, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-02-02
;;
;; <PROBLEM-TEXT>
;; The function $f(n)$ is defined for all positive integers $n$ and takes on
;; non-negative integer values. Also, for all $m$, $n$
;; ¥begin{center}
;; $f(m + n) - f(m) - f(n) = 0$ or $1$¥¥
;; $f(2) = 0$, $f(3) > 0$, and $f(9999) = 3333$.
;; ¥end{center}
;; Determine $f(1982)$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (ans)
        (exists (f)
                (&& (forall (n) (-> (<= n 0) (= (LamApp f n) 0)))
                    (forall (n) (-> (> n 0) (>= (LamApp f n) 0)))
                    (forall (m n) (-> (> n 0)
                                      (|| (= (- (LamApp f (+ m n)) (+ (LamApp f m)
                                                                      (LamApp f n)))
                                             0)
                                          (= (- (LamApp f (+ m n)) (+ (LamApp f m)
                                                                      (LamApp f n)))
                                             1))))
                    (= (LamApp f 2) 0)
                    (> (LamApp f 3) 0)
                    (= (LamApp f 9999) 3333)
                    (= ans (LamApp f 1982))))))

(def-answer p (PLam ans (= ans 660)))

