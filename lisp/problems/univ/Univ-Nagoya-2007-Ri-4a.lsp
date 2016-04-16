;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Science Course, Problem 4a
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-23
;;
;; <PROBLEM-TEXT>
;; (a) Draw $2$ tangents to the circle with the center at the origin
;; $O(0, 0)$ and the radius $1$ from the point $P(x_0, y_0)$ outside the
;; circle.
;;
;; (1) Let $Q$ be the midpoint of the $2$ contact points, then represent
;; the coordinates $(x_1, y_1)$ of the point $Q$ using the coordinates
;; $(x_0, y_0)$ of the point $P$. Also, prove that $OP\cdot OQ = 1$.
;;
;; (2) When the point $P$ moves on the straight line $x + y = 2$, find
;; the locus of the point $Q$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  a1_1
  (Find (Q)
  (exists (l m s t) (&&
    (line-type l)
    (line-type m)
    (! (= s t))
    (tangent l (circle (origin) 1) s)
    (tangent m (circle (origin) 1) t)
    (on (point x0 y0) l)
    (on (point x0 y0) m)
    (< 1 (+ (^ x0 2) (^ y0 2)))
    (= Q (midpoint-of s t))))))

(def-answer
  a1_1
  (PLam Q (exists (Q1 Q2)
      (&& (= Q1 (/ x0 (+ (^ x0 2) (^ y0 2))))
          (= Q2 (/ y0 (+ (^ x0 2) (^ y0 2))))
          (= Q (point Q1 Q2))
          (< 1 (+ (^ x0 2) (^ y0 2)))))))

(def-directive
  a1_2
  (Show
   (forall (l m s t Q x0 y0) (->
       (&& (line-type l)
           (line-type m)
           (! (= s t))
           (tangent l (circle (origin) 1) s)
           (tangent m (circle (origin) 1) t)
           (on (point x0 y0) l)
           (on (point x0 y0) m)
           (< 1 (+ (^ x0 2) (^ y0 2)))
           (= Q (midpoint-of s t)))
       (= 1 (* (distance (origin) Q) (distance (origin) (point x0 y0))))))))

(def-answer a1_2 (PLam _ (true)))

(def-directive
  a2
  (Find (C)
  (= C (shape-of-cpfun (PLam p (exists (l m s t x0 y0) (&&
                 (line-type l)
                 (line-type m)
                 (! (= s t))
                 (tangent l (circle (origin) 1) s)
                 (tangent m (circle (origin) 1) t)
                 (on (point x0 y0) l)
                 (on (point x0 y0) m)
                 (< 1 (+ (^ x0 2) (^ y0 2)))
                 (= p (midpoint-of s t))
                 (= 2 (+ x0 y0)))))))))

(def-answer
  a2
  (PLam C (= C (shape-of-cpfun (PLam P (&& (on P (circle (point (/ 1 4) (/ 1 4)) (/ 1 (* 2 (sqrt 2)))))
                                           (! (= P (origin)))
                                           ))))))

