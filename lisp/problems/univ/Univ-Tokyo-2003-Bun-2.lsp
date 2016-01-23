;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2003, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be real numbers. Let $D$ be the region consisting of
;; all the points $(x, y)$ that satisfy the following four inequalities:
;; $\begin{matrix} x+3 y\ge a\\ 3 x+y\ge b\\ x\ge 0\\ y\ge 0\end{matrix}$
;; Find the minimum value of $x+y$ in the region $D$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (m) (exists (D)
                    (&& (= D (shape-of-cpfun (PLam p (&& (>= (+ (x-coord p)
                                                              (* 3 (y-coord p)))
                                                           a)
                                                       (>= (+ (* 3 (x-coord p))
                                                              (y-coord p))
                                                           b)
                                                       (>= (x-coord p) 0)
                                                       (>= (y-coord p) 0)))))
                        (minimum (set-by-def (PLam z (exists (x y) (&& (= z (+ x y))
                                                                       (on (point x y) D)))))
                                 m)))))

(def-answer p (PLam m (|| (&& (<= 0 a)
                              (<= (/ a 3) b)
                              (<= b (* 3 a))
                              (= m (/ (+ a b) 4)))
                          (&& (<= 0 a)
                              (<= b (/ a 3))
                              (= m (/ a 3)))
                          (&& (<= 0 b)
                              (<= (* 3 a) b)
                              (= m (/ b 3)))
                          (&& (<= a 0)
                              (<= b 0)
                              (= m 0)))))

