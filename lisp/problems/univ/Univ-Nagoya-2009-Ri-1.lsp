;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2009, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-06
;;
;; <PROBLEM-TEXT>
;; Assume that $a > 0$ and $b > 0$. Assume that the circle with the
;; center at the point $A(0, a)$ and the radius $r$ is in contact with
;; the hyperbola $x^2 -\frac{y^2}{b^2} = 1$ at the points $B(s, t)$ and
;; $C(-s, t)$, where $s > 0$. Here, the fact the hyperbola and the
;; circle are in contact with each other at the point $P$ means that $P$
;; is a common point of the hyperbola and the circle, and the tangents
;; to the hyperbola at the point $P$ matches the tangent to the circle
;; at the point $P$.
;;
;; (1) Represent $r$, $s$, and $t$ using $a$ and $b$.
;;
;; (2) Find the range of the value of $b$ such that there exist $a$ and
;; $r$ such that $\triangle ABC$ is an equilateral triangle.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
(Find (rst)
      (exists (r s t)
        (let*
        (
         (A (point 0 a))
         (B (point s t))
         (C (point (- s) t))
         (H (graph-of-implicit-function (Lam x (Lam y (+ (+ (^ x 2) (/ (- (^ y 2)) (^ b 2))) -1)))))
        )
    (&& (> r 0)
        (> s 0)
        (> a 0)
        (> b 0)
        (exists (l)
         (&& (line-type l)
             (on B (circle A r))
             (on B H)
             (tangent (circle A r) l B)
             (tangent H l B)))
        (exists (m)
         (&& (line-type m)
             (on C (circle A r))
             (on C H)
             (tangent (circle A r) m C)
             (tangent H m C)))
        (= rst (list-of r s t)))))))

(def-answer p1 (PLam rst (&&
  (> a 0)
  (> b 0)
  (= rst (list-of
    (sqrt (/ (+ (^ a 2) (^ b 2) 1) (+ (^ b 2) 1)))
    (/ (sqrt (+ (^ b 4) (* (+ (^ a 2) 2) (^ b 2)) 1)) (+ (^ b 2) 1))
    (/ (* a (^ b 2)) (+ (^ b 2) 1))
  ))
)))

(def-directive
  p2
(Find (b)
      (exists (r s t a)
        (let*
        (
         (A (point 0 a))
         (B (point s t))
         (C (point (- s) t))
         (H (graph-of-implicit-function (Lam x (Lam y (+ (+ (^ x 2) (/ (- (^ y 2)) (^ b 2))) -1)))))
        )
    (&& (> s 0)
        (> a 0)
        (> b 0)
        (exists (l)
         (&& (line-type l)
             (on B (circle A r))
             (on B H)
             (tangent (circle A r) l B)
             (tangent H l B)))
        (exists (m)
         (&& (line-type m)
             (on C (circle A r))
             (on C H)
             (tangent (circle A r) m C)
             (tangent H m C)))
        (is-equilateral-triangle (triangle A B C)))))))

(def-answer p2 (PLam b (&& (< 0 b) (< b (/ 1 (sqrt 3))))))

