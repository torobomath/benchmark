;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1987, Problem 6
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-11
;;
;; <PROBLEM-TEXT>
;; Let $n$ be an integer greater than or equal to $2$. Prove that if $k^2 + k + n$ is
;; prime for all integers $k$ such that $0 ¥le k ¥le ¥sqrt {n/3}$, then $k^2 + k + n$
;; is prime for all integers $k$ such that $0 ¥le k ¥le n - 2$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (forall (n)
       (-> (&& (<= 2 n)
               (forall (k)
                  (-> (&& (<= 0 k)
                          (.<= (int->real k)
                               (sqrt (/ (int->real n) (int->real 3)))))
                      (is-prime (+ (^ k 2) k n)))))
           (forall (k)
              (-> (&& (<= 0 k)
                      (<= k (- n 2)))
                  (is-prime (+ (^ k 2) k n))))))))

