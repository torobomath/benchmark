;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-15
;;
;; <PROBLEM-TEXT>
;; Assume that the straight line $y = 2 x + 1$ is transformed to the
;; straight line $y = - 3 x - 1$ by the linear transformation on the
;; $x y$ plane defined by the matrix
;; $A =(\begin{matrix} a & -b\\ b & a\end{matrix})$. Let $Q$ be the
;; transformed point of the point $P(1, 2)$, and $O$ the origin, then
;; find the magnitude of the angle formed by the two straight lines $OP$
;; and $OQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (theta)
        (exists (a b A l m P Q O)
          (&& (= A (matrix a (- b) b a))
        (= l (shape-of-cpfun (PLam p (= (y-coord p)
                (+ (* 2 (x-coord p)) 1)))))
        (= m (shape-of-cpfun (PLam p (= (y-coord p)
                (+ (- (* 3 (x-coord p))) -1)))))
        (= m (mat-shape* A l))
        (= P (point 1 2))
        (= (vec (origin) Q) (mv* A (vec (origin) P)))
        (= O (origin))
        (lines-intersect-angle (line O P) (line O Q) theta)
        ))))

(def-answer p (PLam theta (= theta (/ (Pi) 4))))

