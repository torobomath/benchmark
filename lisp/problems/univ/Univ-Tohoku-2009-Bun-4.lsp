;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2009, Humanities Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $D$ be the region on the coordinate plane defined by the
;; inequality $2 y > x + 1 + 3 |x - 1|$. For the real number $a$, define
;; the parabola $C$ as $y = x^2 - 2 a x + a^2 + a + 2$. Find the range
;; of $a$ such that all the points on $C$ are contained in $D$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (a)
  (forall (x y)
    (->
     (= y (+ (^ x 2) (* (- 2) a x) (^ a 2) a 2))
     (> (* 2 y) (+ x 1 (* 3 (abs (- x 1)))))))))

(def-directive
  p_another
  (Find (a)
  (exists (C D)
    (&&
     (= C (2d.set-of-cfun (Lam x (PLam y (= y (+ (^ x 2) (* (- 2) a x) (^ a 2) a 2))))))
     (= D (2d.set-of-cfun (Lam x (PLam y (> (* 2 y) (+ x 1 (* 3 (abs (- x 1)))))))))
     (forall (P)
       (-> (2d.on P C)
           (2d.on P D)))))))

(def-answer p (PLam a (&& (< (/ 1 8) a) (< a 2))))

(def-answer p_another (PLam a (&& (< (/ 1 8) a) (< a 2))))

