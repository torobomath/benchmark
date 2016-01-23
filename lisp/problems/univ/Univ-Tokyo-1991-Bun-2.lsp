;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; Consider the point $P(2, 0, 1)$ in the $xyz$ space and the curve
;; $z=y^2$ on the $yz$ plane. When the point $Q$ moves on this curve,
;; let $F$ be the figure formed by the point $R$ that the straight line
;; $PQ$ meets on the $xy$ plane. Draw $F$ on the $xy$ plane.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (F)
  (= F (shape-of-cpfun (PLam R (exists (y z P Q)
               (&&
                (= z (^ y 2))
                (= P (point 2 0 1))
                (= Q (point 0 y z))
                (on R (line P Q))
                (on R (xy-plane)))))))))

(def-answer p (PLam F (= F (shape-of-cpfun (PLam P (&& (= (z-coord P) 0)
                   (|| (&& (<= (x-coord P) 0)
                     (= (+ (- (^ (x-coord P) 2)) (* 2 (x-coord P)) (* 4 (^ (y-coord P) 2))) 0)
                     )
              (&& (< 2 (x-coord P))
                  (= (+ (- (^ (x-coord P) 2)) (* 2 (x-coord P)) (* 4 (^ (y-coord P) 2))) 0)
                  )
              )))))))

