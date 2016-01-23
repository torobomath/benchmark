;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2011, Science Course, Problem 6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; (1) Let $x$ and $y$ be real numbers, and assume that $x>0$. Find the
;; difference between the maximum and minimum values of the quadratic
;; function of $f(t)=x t^2+y t$ with the variable $t$in the range of
;; $0\le t\le 1$
;;
;; (2) Let $S$ be the region on the coordinate plane consisting of all
;; the points $(x, y, z)$ that satisfy the following conditions: $x>0$
;; is true, and there exists the real number $z$ that satisfies
;; $0\le x t^2+y t+z\le 1$ for all the real numbers $t$ in the range of
;; $0\le t\le 1$. Draw the outline of $S$.
;;
;; (3) Let $V$ be the region in the coordinate space consisting of all
;; the points $(x, y, z)$ that satisfy the following conditions:
;; $0\le x\le 1$ is true, and $0\le x t^2+y t+z\le 1$ is true for all
;; the real numbers $t$ in the range of $0\le t\le 1$. Find the volume
;; of $V$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (a)
        (exists (m M)
                (&& (exists (f t0 t1)
                            (&& (< 0 x)
                                (= f (poly-fun (list-of 0 y x)))
                                (func-min f
                                          (set-by-def (PLam t (&& (<= 0 t) (<= t 1))))
                                          t0 m)
                                (func-max f
                                          (set-by-def (PLam t (&& (<= 0 t) (<= t 1))))
                                          t1 M)))
                    (= a (- M m))))))

(namespace 2d)

(def-directive p2
  (Find (S)
    (= S (shape-of-cpfun (PLam p
       (&& (< 0 (x-coord p))
           (exists (z) (forall (t) (-> (&& (<= 0 t) (<= t 1))
                                       (&& (<= 0 (+ (* (x-coord p) (^ t 2)) (* (y-coord p) t) z))
                                           (<= (+ (* (x-coord p) (^ t 2)) (* (y-coord p) t) z) 1)))))))))))

(def-answer p1 (PLam a (|| (&& (< 0 x)
                               (< 0 y)
                               (= a (+ x y)))
                           (&& (< 0 x)
                               (< (- x) y)
                               (<= y 0)
                               (= a (+ x y (/ (^ y 2) (* 4 x)))))
                           (&& (< 0 x)
                               (< (* -2 x) y)
                               (<= y (- x))
                               (= a (/ (^ y 2) (* 4 x))))
                           (&& (< 0 x)
                               (<= y (* -2 x))
                               (= a (- 0 (+ x y)))))))

(def-answer p2 (PLam S (= S (shape-of-cpfun (PLam p (let* ((x (x-coord p))
                                                           (y (y-coord p)))
                                                      (|| (&& (< 0 x)
                                                              (>= y 0)
                                                              (<= y (- 1 x)))
                                                          (&& (< 0 x)
                                                              (<= (- x) y)
                                                              (<= y 0)
                                                              (<= (- (+ (* 2 x) (* 2 (sqrt x))))
                                                                  y)
                                                              (<= y
                                                                  (- (* 2 (sqrt x)) (* 2 x))))
                                                          (&& (< 0 x)
                                                              (<= (* -2 x) y)
                                                              (<= y (- x))
                                                              (<= (* -2 (sqrt x))
                                                                  y)
                                                              (<= y
                                                                  (* 2 (sqrt x))))
                                                          (&& (< 0 x)
                                                              (<= y (* -2 x))
                                                              (>= y (- (+ x 1)))))))))))

(namespace 3d)

(def-directive
        p3
        (Find (a)
          (= a
             (volume-of (shape-of-cpfun (PLam p
                                              (&& (<= 0 (x-coord p))
                                                  (<= (x-coord p) 1)
                                                  (forall (t)
                                                          (-> (&& (<= 0 t)
                                                                  (<= t 1))
                                                              (&& (<= 0
                                                                      (+ (* (x-coord p) (^ t 2))
                                                                         (* (y-coord p) t)
                                                                         (z-coord p)))
                                                                  (<= (+ (* (x-coord p) (^ t 2))
                                                                         (* (y-coord p) t)
                                                                         (z-coord p))
                                                                      1)))))))))))

(def-answer p3 (PLam a (= a (/ 17 18))))

