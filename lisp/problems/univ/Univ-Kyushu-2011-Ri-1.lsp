;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2011, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Draw a perpendicular from the point $P(t, \sqrt{t})$ on the curve
;; $y =\sqrt{x}$ to the straight line $y = x$, and let $H$ be the
;; intersection, where $t > 1$. Answer the following questions:
;;
;; (1) Represent the coordinates of $H$ using $t$.
;;
;; (2) Let $S_1$ be the area of the region enclosed by the curve
;; $y =\sqrt{x}$, the straight line $y = x$, and the line segment $PH$
;; in the range of $x\ge 1$, then represent $S_1$ using $t$.
;;
;; (3) Let $S_2$ be the area of the region enclosed by the curve
;; $y =\sqrt{x}$ and the straight line $y = x$. When $S_1 = S_2$, find
;; the value of $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
     (Find (H)
     (exists (C P l0 l1)
       (&& (= C (graph-of (fun (Lam x (sqrt x)))))
           (< 1 t)
           (= P (point t (sqrt t)))
           (= l0 (line (origin) (point 1 1)))
           (line-type l1)
           (on P l1)
           (perpendicular l0 l1)
           (on H (intersection l0 l1))))))

(def-directive
  p2
  (Find (S1)
        (exists (C P l0 l1 H C_ l0_)
                (&& (= C (graph-of (fun (Lam x (sqrt x)))))
                    (< 1 t)
                    (= P (point t (sqrt t)))
                    (= l0 (line (origin) (point 1 1)))
                    (line-type l1)
                    (on P l1)
                    (perpendicular l0 l1)
                    (on H (intersection l0 l1))
                    (= C_ (shape-of-cpfun (PLam p (&& (on p C)
                                                      (<= 1 (x-coord p))))))
                    (= l0_ (shape-of-cpfun (PLam p (&& (on p l0)
                                                       (<= 1 (x-coord p))))))
                    (= S1 (area-of (shape-enclosed-by (list-of C_ l0_ (seg P H)))))))))

(def-directive
  p3
  (Find (t)
        (exists (C P l0 l1 H C_ l0_ S1 S2)
                (&& (= C (graph-of (fun (Lam x (sqrt x)))))
                    (< 1 t)
                    (= P (point t (sqrt t)))
                    (= l0 (line (origin) (point 1 1)))
                    (line-type l1)
                    (on P l1)
                    (perpendicular l0 l1)
                    (on H (intersection l0 l1))
                    (= C_ (shape-of-cpfun (PLam p (&& (on p C)
                                                      (<= 1 (x-coord p))))))
                    (= l0_ (shape-of-cpfun (PLam p (&& (on p l0)
                                                       (<= 1 (x-coord p))))))
                    (= S1 (area-of (shape-enclosed-by (list-of C_ l0_ (seg P H)))))
                    (= S2 (area-of (shape-enclosed-by (list-of C l0))))
                    (= S1 S2)))))

(def-answer p1 (PLam H (&& (< 1 t) (= H (point (/ (+ t (sqrt t)) 2) (/ (+ t (sqrt t)) 2))))))

(def-answer p2 (PLam S1 (&& (< 1 t) (= S1 (+ (* (/ 1 4) (^ t 2)) (* (/ -1 6) t (sqrt t)) (* (/ 1 4) t) (/ 1 6))))))

(def-answer p3 (PLam t (= t (/ (+ 11 (* 2 (sqrt 10))) 9))))

