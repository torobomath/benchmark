;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2011, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; For the pair of real numbers $(p, q)$, define $f(x)=(x - p)^2 + q$.
;;
;; (1) Assuming that the parabola $y = f(x)$ passes through the point
;; $(0, 1)$ and is in contact with the straight line $y = x$ in the
;; region of $x > 0$, find the pair of real numbers $(p, q)$ and the
;; coordinates of the point of contact.
;;
;; (2) For the pairs of real numbers $(p_1, q_1)$ and $(p_2, q_2)$,
;; define $f_1(x)=(x - p_1)^2 + q_1$ and $f_2(x)=(x - p_2)^2 + q_2$.
;; Assuming that $f_1({\alpha})< f_2({\alpha})$ and
;; $f_1({\beta})< f_2({\beta})$ are true for the real numbers ${\alpha}$
;; and ${\beta}$, where ${\alpha} < {\beta}$, prove that the inequality
;; $f_1(x)< f_2(x)$ is always true in the interval
;; ${\alpha}\le x\le {\beta}$.
;;
;; (3) Consider the rectangle $R : 0\le x\le 1$, $0\le y\le 2$. Let $L$
;; be the polygonal line obtained by connecting the points $P_1(0, 1)$,
;; $P_1(0, 0)$, $P_2(1, 1)$, and $P_3(1, 0)$ with line segments in this
;; order. Move the pair of real numbers $(p, q)$ across all the pairs
;; provided that there are no common points between the parabola
;; $y = f(x)$ and the polygonal line $L$, then let $T$ be the set of all
;; the points that the polygonal line $L$ passes through among the
;; points belonging to $R$. Draw the region $S$ obtained by excluding
;; $T$ from $R$ on the coordinate plane, and find the area of the
;; region.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Find (pq)
        (exists (p q f)
                (&& (= pq (list-of p q))
                    (= f (fun (Lam x (+ (^ (- x p) 2) q))))
                    (on (point 0 1) (graph-of f))
                    (exists (P)
                            (&& (< 0 (x-coord P))
                                (tangent (graph-of f)
                                         (line (origin) (point 1 1))
                                         P)))))))

(def-directive
  p2
  (Show (forall (p1 q1 p2 q2 f1 f2 alpha beta)
                (-> (&& (= f1 (fun (Lam x (+ (^ (- x p1) 2) q1))))
                        (= f2 (fun (Lam x (+ (^ (- x p2) 2) q2))))
                        (< alpha beta)
                        (< (funapp f1 alpha) (funapp f2 alpha))
                        (< (funapp f1 beta) (funapp f2 beta)))
                    (forall (x)
                            (-> (&& (<= alpha x)
                                    (<= x beta))
                                (< (funapp f1 x)
                                   (funapp f2 x))))))))

(def-directive
  p3_1
  (Draw (S)
        (exists (R T L)
                (&& (= R (shape-of-cpfun (PLam p (&& (<= 0 (x-coord p))
                                                     (<= (x-coord p) 1)
                                                     (<= 0 (y-coord p))
                                                     (<= (y-coord p) 2)))))
                    (= L (union (seg (point 0 1) (point 0 0))
                                (union (seg (point 0 0) (point 1 1))
                                       (seg (point 1 1) (point 1 0)))))
                    (= T (shape-of-cpfun (PLam P (exists (p q f)
                                                         (&& (= f (fun (Lam x (+ (^ (- x p) 2) q))))
                                                             (! (intersect  (graph-of f) L))
                                                             (on P (graph-of f))
                                                             (on P R))))))
                    (= S (shape- R T))))))

(def-directive
  p3_2
  (Find (x)
        (exists (R T L)
                (&& (= R (shape-of-cpfun (PLam p (&& (<= 0 (x-coord p))
                                                     (<= (x-coord p) 1)
                                                     (<= 0 (y-coord p))
                                                     (<= (y-coord p) 2)))))
                    (= L (union (seg (point 0 1) (point 0 0))
                                (union (seg (point 0 0) (point 1 1))
                                       (seg (point 1 1) (point 1 0)))))
                    (= T (shape-of-cpfun (PLam P (exists (p q f)
                                                         (&& (= f (fun (Lam x (+ (^ (- x p) 2) q))))
                                                             (! (intersect  (graph-of f) L))
                                                             (on P (graph-of f))
                                                             (on P R))))))
                    (= x (area-of (shape- R T)))))))

(def-answer p1 (PLam pq (= pq (list-of (/ 1 2) (/ 3 4)))))

(def-answer p1_1 (PLam pq (= pq (list-of (/ 1 2) (/ 3 4)))))

(def-answer p3_1 (set-of-cfun (Lam x (PLam y (&&
  (<= 0 x) (<= x 1)
  (<= 0 y) (<= y (+ (+ (^ x 2) (- x)) 1))
)))))

(def-answer p3_2 (PLam x (= x (/ 5 6))))

