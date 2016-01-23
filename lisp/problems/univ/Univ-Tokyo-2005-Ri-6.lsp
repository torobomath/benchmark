;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2005, Science Course, Problem 6
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; Let $r$ be a positive real number. In the $xyz$ space, find the
;; volume of the solid consisting of all the points that satisfy
;; $\begin{matrix} x^2+y^2\le r^2\\ y^2+z^2\ge r^2\\ z^2+x^2\le r^2\end{matrix}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (v)
      (&& (< 0 r)
      (= v (volume-of (set-of-cfun (Lam x (Lam y (PLam z
                   (&& (>= (^ r 2) (+ (^ x 2) (^ y 2)))
                       (<= (^ r 2) (+ (^ y 2) (^ z 2)))
                       (>= (^ r 2) (+ (^ z 2) (^ x 2)))
                       ))))))))))

(def-answer p (PLam v (&&
  (< 0 r)
  (= v (* (- (* 8 (sqrt 2)) (/ 32 3)) (^ r 3)))
)))

