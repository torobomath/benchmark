;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2013, Humanities Course, Problem 1
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-06-30
;;
;; <PROBLEM-TEXT>
;; Prove that the distance between the point $(x_0, y_0)$ and the
;; straight line $a x + b y + c = 0$ is
;; $\frac{|a x_0 + b y_0 + c|}{\sqrt{a^2+b^2}}$ on the $x y$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (x0 y0 a b c)
          (-> (&& (! (= a 0)) (! (= b 0)))
            (= (point-shape-distance
          (point x0 y0)
          (shape-of-cpfun (PLam P
              (= 0 (+ (+ (* a (x-coord P)) (* b (y-coord P))) c))
              )))
         (/ (abs (+ (* b y0) (* a x0) c) )
            (sqrt (+(^ a 2) (^ b 2) ) ))
         )
))))

