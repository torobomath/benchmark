;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2003, Science Course, Problem 5
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; (1) Consider an ellipse on a plane that has principal axes (major and
;; minor axes) parallel to the coordinate axes and is in contact with
;; both the $x$ and $y$ axes. Let $a$ be the $x$ coordinate of the
;; center of the ellipse. Find the range of the value of $a$ such that
;; there exists such an ellipse that passes through the point $A(1, 2)$,
;; where circles are regarded as special cases of ellipses.
;;
;; (2) For $a$ that gives just two ellipses satisfying the description
;; in (1), let $B$ and $C$ be the centers of the $2$ ellipses and let
;; the function $S(a)$ be the area of $\triangle ABC$. Then, draw the
;; graph of $S(a)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (a)
        (exists (A C b s t)
                (&&
                  (= A (point 1 2))
                  (= C (graph-of-implicit-function (Lam x (Lam y (+ (/ (^ (- x a) 2) (^ s 2)) (/ (^ (- y b) 2) (^ t 2)) -1)))))
                  (tangent C (x-axis))
                  (tangent C (y-axis))
                  (on A C)))))

(def-answer p1 (PLam a (>= a (/ 1 2))))

(def-directive
  p2
  (Find (G)
        (exists (A B C s t u v oval_B oval_C)
                (&&
                  (= A (point 1 2))
                  (= (x-coord B) a)
                  (= (x-coord C) a)
                  (= oval_B (graph-of-implicit-function (Lam x (Lam y (+ (/ (^ (- x (x-coord B)) 2) (^ s 2)) (/ (^ (- y (y-coord B)) 2) (^ t 2)) -1)))))
                  (= oval_C (graph-of-implicit-function (Lam x (Lam y (+ (/ (^ (- x (x-coord C)) 2) (^ u 2)) (/ (^ (- y (y-coord C)) 2) (^ v 2)) -1)))))
                  (tangent oval_B (x-axis))
                  (tangent oval_B (y-axis))
                  (tangent oval_C (x-axis))
                  (tangent oval_C (y-axis))
                  (on A oval_B)
                  (on A oval_C)
                  (! (= oval_B oval_C))
                  (forall (w x y z)
                          (exists (oval)
                                  (->
                                    (&&
                                      (= oval (graph-of-implicit-function (Lam Px (Lam Py (+ (/ (^ (- Px x) 2) (^ w 2)) (/ (^ (- Py y) 2) (^ z 2)) -1)))))
                                      (tangent oval (x-axis))
                                      (tangent oval (y-axis))
                                      (on A oval))
                                    (|| (= oval oval_B) (= oval oval_C)))))
                  (= G (area-of (triangle A B C)))))))

(def-answer p2 (PLam G (&&
    (< (/ 1 2) a) (! (= a 1))
    (= G (/ (* 2 a (sqrt (- (* 2 a) 1))) (abs (- a 1))))
)))

