;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-14
;;
;; <PROBLEM-TEXT>
;; When the matrix $X =(\begin{matrix} x & z\\ z & y\end{matrix})$
;; satisfies the condition
;;
;;
;; $X^2 - 4 X +(\begin{matrix} 3 & 0\\ 0 & 3\end{matrix})=(\begin{matrix} 0 & 0\\ 0 & 0\end{matrix})$,
;;
;; draw the range of the point $(x, y)$ whose coordinates are such $x$
;; and $y$, where the components of the matrix are real numbers.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (xy)
        (exists (x y z X)
                (&& (= X (matrix x z z y))
                    (= (m+ (m- (m* X X) (sm* 4 X)) (matrix 3 0 0 3))
                       (zero-matrix))
                    (= xy (point x y))))))

(def-answer p (PLam xy (|| (= xy (point 1 1))
                           (= xy (point 3 3))
                           (&& (= (+ (x-coord xy) (y-coord xy)) 4)
                               (<= 1 (x-coord xy))
                               (<= (x-coord xy) 3)))))

