;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Science Course, Problem 3
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Find the area of the region enclosed by the graphs of $y=x$ and
;; $y=|\frac{3}{4} x^2 - 3|-2$ on the $xy$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
    (= S (area-of
            (shape-enclosed-by (list-of
             (shape-of-cpfun (PLam P (= (y-coord P) (x-coord P))))
              (shape-of-cpfun (PLam P
                  (= (y-coord P) (- (abs (- (* (/ 3 4) (^ (x-coord P) 2)) 3)) 2))))
            ))
     ))))

(def-answer p1 (PLam S (= S (/ 208 27))))

