;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; For the real numbers $a$, $b$, and $c$, define
;; $f(x)= a x^2 + b x + c$. Find the condition that $a$, $b$, and $c$
;; must satisfy in order that there exist the real numbers $p$ and $q$
;; that satisfy the equations
;; $\int_0^1 f^{\prime }(x)(p x + q)d x =\frac{1}{2}$ and
;; $\int_{-1}^1 f^{\prime }(x)(p x + q)d x = 0$, as well as the values
;; of $p$ and $q$ at that time, where $f^{\prime }(x)$ is a derivative
;; of $f(x)$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (pq)
        (exists (p q f)
          (&& (= pq (list-of p q))
        (= f (poly-fun (list-of c b a)))
        (= (integral (Lam x (* (funapp (derivative f) x)
             (+ (* p x) q)))
               0
               1)
           (/ 1 2))
        (= (integral (Lam x (* (funapp (derivative f) x)
             (+ (* p x) q)))
               -1
               1)
           0)))))

(def-answer p (PLam pq (exists (p q) (&& (= pq (list-of p q))
  (! (= (- (* 4 (^ a 2)) (* 3 (^ b 2))) 0))
  (= (* p (- (* 3 (^ b 2)) (* 4 (^ a 2)))) (* 3 b))
  (= (* q (- (* 3 (^ b 2)) (* 4 (^ a 2)))) (* -2 a))
))))

(def-answer a
 (PLam cond_pq
  (= cond_pq
     (pair (PLam _ (! (= (- (* 4 (^ a 2)) (* 3 (^ b 2))) 0)))
           (list-of (/ (* 3 b) (- (* 3 (^ b 2)) (* 4 (^ a 2))))
                    (/ (* -2 a) (- (* 3 (^ b 2)) (* 4 (^ a 2)))))))))

