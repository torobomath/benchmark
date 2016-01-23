;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2003, Science Course, Problem 7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-30
;;
;; <PROBLEM-TEXT>
;; Assume that the point $P(a, b)$ moves in the range of
;; $|a|\le\frac{1}{2}$ and $|b|\le\frac{1}{2}$ on the coordinate plane.
;; Also assume that the coordinates of the point $Q(x, y)$ are the
;; solution of the simultaneous linear equation $A X = B$, where
;; $A =\frac{1}{3}(\begin{matrix} 2 & -1\\ -1 & 2\end{matrix})$,
;; $X =(\begin{matrix} x\\ y\end{matrix})$, and
;; $B =(\begin{matrix} 1+a\\ -1+b\end{matrix})$.
;;
;; (1) Let the point $Q$ be at the point $R$ when the point $P$ is at
;; the origin $O$. When $P\not= O$, find the maximum value of
;; $\frac{RQ}{OP}$, and graph all the points $P$ that give the maximum
;; value.
;;
;; (2) Find the minimum value of $OQ$ and the coordinates of the point
;; $P$ that give the minimum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Find (x_max)
        (exists (A R x_set)
                (&& (= A (sm* (/ 1 3) (matrix 2 -1 -1 2)))
                    (= (vec->point (mv* A (vec (origin) R))) (point 1 -1))
                    (maximum x_set x_max)
                    (= x_set (set-by-def (PLam x (exists (a b P B Q)
                                                         (&& (<= (abs a) (/ 1 2))
                                                             (<= (abs b) (/ 1 2))
                                                             (= P (point a b))
                                                             (! (= P (origin)))
                                                             (= B (point (+ 1 a) (- b 1)))
                                                             (= (vec->point (mv* A (vec (origin) Q))) B)
                                                             (= x (/ (distance R Q)
                                                                     (distance (origin) P))))))))))))

(def-directive
  p1_2
  (Find (P)
        (exists (A R x_set a b B Q)
                (&& (= A (sm* (/ 1 3) (matrix 2 -1 -1 2)))
                    (= (vec->point (mv* A (vec (origin) R))) (point 1 -1))
                    (maximum x_set x_max)
                    (= x_set (set-by-def (PLam x (exists (a b P B Q)
                                                         (&& (<= (abs a) (/ 1 2))
                                                             (<= (abs b) (/ 1 2))
                                                             (= P (point a b))
                                                             (! (= P (origin)))
                                                             (= B (point (+ 1 a) (- b 1)))
                                                             (= (vec->point (mv* A (vec (origin) Q))) B)
                                                             (= x (/ (distance R Q)
                                                                     (distance (origin) P))))))))
                    (<= (abs a) (/ 1 2))
                    (<= (abs b) (/ 1 2))
                    (= P (point a b))
                    (! (= P (origin)))
                    (= B (point (+ 1 a) (- b 1)))
                    (= (vec->point (mv* A (vec (origin) Q))) B)
                    (= x_max (/ (distance R Q)
                                (distance (origin) P)))))))

(def-directive
  p2_1
  (Find (OQ_min)
        (exists (OQ_set)
                (&& (= OQ_set (set-by-def (PLam OQ (exists (a b P A B Q)
                                                           (&& (<= (abs a) (/ 1 2))
                                                               (<= (abs b) (/ 1 2))
                                                               (= P (point a b))
                                                               (= A (sm* (/ 1 3) (matrix 2 -1 -1 2)))
                                                               (! (= P (origin)))
                                                               (= B (point (+ 1 a) (- b 1)))
                                                               (= (vec->point (mv* A (vec (origin) Q))) B)
                                                               (= OQ (distance (origin) Q)))))))
                    (minimum OQ_set OQ_min)))))

(def-directive
  p2_2
  (Find (P)
        (exists (OQ_set OQ_min a b A B Q)
                (&& (= OQ_set (set-by-def (PLam OQ (exists (a b P A B Q)
                                                           (&& (<= (abs a) (/ 1 2))
                                                               (<= (abs b) (/ 1 2))
                                                               (= P (point a b))
                                                               (! (= P (origin)))
                                                               (= B (point (+ 1 a) (- b 1)))
                                                               (= (vec->point (mv* A (vec (origin) Q))) B)
                                                               (= OQ (distance (origin) Q)))))))
                    (minimum OQ_set OQ_min)
                    (<= (abs a) (/ 1 2))
                    (<= (abs b) (/ 1 2))
                    (= P (point a b))
                    (= A (sm* (/ 1 3) (matrix 2 -1 -1 2)))
                    (! (= P (origin)))
                    (= B (point (+ 1 a) (- b 1)))
                    (= (vec->point (mv* A (vec (origin) Q))) B)
                    (= OQ_min (distance (origin) Q))))))

(def-answer p1_1 (PLam xmax (= xmax 3)))

(def-answer p1_2 (PLam P (&& (<= (/ -1 2) (x-coord P)) (<= (x-coord P) (/ 1 2)) (! (= (x-coord P) 0)) (= (x-coord P) (y-coord P)))))

(def-answer p2_1 (PLam OQ_min (= OQ_min (/ (sqrt 2) 2))))

(def-answer p2_2 (PLam P (= P (point (/ -1 2) (/ 1 2)))))

