;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Humanities Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-08
;;
;; <PROBLEM-TEXT>
;; Find the area of the region that satisfies the simultaneous
;; inequalities
;; $\{\begin{matrix} |x|\le 2\\ y\ge x\\ y\le |\frac{3}{4} x^2 - 3|-2\end{matrix}$
;; on the $xy$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
    (= S (area-of
       (shape-of-cpfun
         (PLam xy
           (&&
             (<= (abs (x-coord xy)) 2)
             (>= (y-coord xy) (x-coord xy))
             (<= (y-coord xy) (+ (abs (+ (* (/ 3 4) (^ (x-coord xy) 2)) (- 3))) (- 2)))
             )))))))

(def-answer p1 (PLam S (= S (/ 64 27))))

