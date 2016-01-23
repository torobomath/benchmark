;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2009, Science Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-24
;;
;; <PROBLEM-TEXT>
;; Let $t > 0$, and let $l_1$ be the straight line defined as $x = t$.
;; Let $C$ be the parabola defined as $y =\frac{x^2}{4}$. Let $l_2$ be
;; the tangent to $C$ at the point $(t, \frac{t^2}{4})$ which is the
;; common point of $C$ and $l_1$. Answer the following questions:
;;
;; (1) Let ${\theta}$ be the angle formed by $l_1$ and $l_2$, then find
;; $\cos {\theta}$, where $0\le {\theta}\le\frac{{\pi}}{2}$.
;;
;; (2) Let $l_3$ be the straight line symmetric to $l_1$ about $l_2$,
;; then find the equation of $l_3$.
;;
;; (3) Prove that $l_3$ passes through a fixed point irrespective of the
;; value of $t$.
;;
;; (4) Let $P$ and $Q$ be the two common points of $l_3$ and $C$. Find
;; the value of $t$ that gives the minimum length of the line segment
;; $PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (cosT)
    (exists (theta l1 l2 T C ) (&&
      (> t 0)
      (line-type l1)
      (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
      (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
      (line-type l2)
      (= T (point t (/ (^ t 2) 4)))
      (on T C)
      (on T l1)
      (tangent C l2 T)
      (<= 0 theta) (<= theta (/ (Pi) 2))
      (lines-intersect-angle l1 l2 theta)
      (= cosT (cos theta))
    ))))

(def-directive
  p2
  (Find (l3)
  (exists (l1 l2 T C) (&&
           (> t 0)
           (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
           (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
           (line-type l2)
           (= T (point t (/ (^ t 2) 4)))
           (on T C)
           (on T l1)
           (tangent C l2 T)
           (line-type l3)
           (line-symmetry-shapes l1 l3 l2)
    ))))

(def-directive
  p3
  (Show
    (exists (P)
      (forall (t)
        (->
          (> t 0)
          (exists (l1 l2 C T l3) (&&
            (line-type l1)
            (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
            (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
            (line-type l2)
            (= T (point t (/ (^ t 2) 4)))
            (on T C)
            (on T l1)
            (tangent C l2 T)
            (line-type l3)
            (line-symmetry-shapes l1 l3 l2)
            (on P l3)
        )))))))

(def-directive
  p3_0
  (Show
    (exists (P)
      (forall (t)
        (->
          (> t 0)
          (exists (l3) (&&
            (= l3 (graph-of (poly-fun (list-of 1 (/ (+ (^ t 2) (- 4)) (* 4 t))))))
            (on P l3)
        )))))))

(def-directive
  p3_1
  (Find (P)
    (forall (t)
      (->
        (> t 0)
        (exists (l3) (&&
          (= l3 (graph-of (poly-fun (list-of 1 (/ (+ (^ t 2) (- 4)) (* 4 t))))))
          (on P l3)
      ))))))

(def-directive
  p4_0
  (Find (PQmin)
        (minimum (set-by-def (PLam PQ
          (exists (l1 l2 l3 T C P Q t) (&&
            (> t 0)
            (line-type l1)
            (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
            (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
            (line-type l2)
            (= T (point t (/ (^ t 2) 4)))
            (on T C)
            (on T l1)
            (tangent C l2 T)
            (line-type l3)
            (line-symmetry-shapes l1 l3 l2)
            (on P C)
            (on P l3)
            (on Q C)
            (on Q l3)
            (! (= P Q))
            (= PQ (distance P Q))
          )))) PQmin)
      ))

(def-directive
  p4_1
  (Find (PQmin)
        (minimum (set-by-def (PLam PQ
          (exists (l1 l2 l3 TT C P Q t) (&&
            (> t 0)
            (line-type l1)
            (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
            (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
            (line-type l2)
            (= TT (point t (/ (^ t 2) 4)))
            (on TT C)
            (on TT l1)
            (tangent C l2 TT)
            (line-type l3)
            (= l3 (graph-of (poly-fun (list-of 1 (/ (+ (^ t 2) (- 4)) (* 4 t))))))
            (on P C)
            (on P l3)
            (on Q C)
            (on Q l3)
            (! (= P Q))
            (= PQ (distance P Q))
          )))) PQmin)
      ))

(def-directive
  p4
  (Find (tmin)
    (exists (PQmin l1 l2 l3 T C P Q)
      (&&
        (= PQmin (distance P Q))
        (> tmin 0)
        (line-type l1)
        (= l1 (shape-of-cpfun (PLam p (= tmin (x-coord p)))))
        (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
        (line-type l2)
        (= T (point tmin (/ (^ tmin 2) 4)))
        (on T C)
        (on T l1)
        (tangent C l2 T)
        (line-type l3)
        (line-symmetry-shapes l1 l3 l2)
        (on P C)
        (on P l3)
        (on Q C)
        (on Q l3)
        (! (= P Q))
        (minimum (set-by-def (PLam PQ
          (exists (l1 l2 l3 T C P Q t) (&&
            (> t 0)
            (line-type l1)
            (= l1 (shape-of-cpfun (PLam p (= t (x-coord p)))))
            (= C (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
            (line-type l2)
            (= T (point t (/ (^ t 2) 4)))
            (on T C)
            (on T l1)
            (tangent C l2 T)
            (line-type l3)
            (line-symmetry-shapes l1 l3 l2)
            (on P C)
            (on P l3)
            (on Q C)
            (on Q l3)
            (! (= P Q))
            (= PQ (distance P Q))
          )))) PQmin)
      ))))

(def-answer p1 (PLam cosT (&&
  (< 0 t)
  (= cosT (/ t (sqrt (+ 4 (^ t 2))))))))

(def-answer p2 (PLam l3 (&&
  (< 0 t)
  (= l3 (line (point 0 1) (point 1 (+ (/ (- (^ t 2) 4) (* 4 t)) 1)))))))

(def-answer p3_1 (PLam P (= P (point 0 1))))

(def-answer p4_0 (PLam PQmin (= PQmin 16)))

(def-answer p4_1 (PLam PQmin (= PQmin 16)))

(def-answer p4 (PLam tmin (= tmin 2)))

