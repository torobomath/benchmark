;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Science Course, Problem 5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a real number that satisfies $0<a<\frac{1}{4}$. Find the
;; volume of the solid of revolution formed by rotating the region
;; defined by the inequality $y^2\le x^2(1-x^2)-a$ on the $xy$ plane
;; around the $y$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (V)
        (exists (D) (&& (< 0 a)
            (< a (/ 1 4))
            (= D (shape-of-cpfun (PLam p (&& (on p (xy-plane))
                                             (<= (^ (y-coord p) 2)
                                                 (- (* (^ (x-coord p) 2)
                                                       (- 1 (^ (x-coord p) 2)))
                                                    a))))))
            (= V (volume-of (solid-of-revolution D (y-axis))))))))

(def-answer p (PLam V (&& (< 0 a)
                          (< a (/ 1 4))
                          (= V (* (/ (- 1 (* 4 a)) 4) (^ (Pi) 2))))))

