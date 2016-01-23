;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2011, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Draw a perpendicular from the point $P(t, t^2)$ on the parabola
;; $y = x^2$ to the straight line $y = x$, and let $H$ be the
;; intersection, where $t > 1$. Answer the following questions:
;;
;; (1) Represent the coordinates of $H$ using $t$.
;;
;; (2) Let $R$ be the intersection of the straight line $y = x$ and the
;; straight line passing through $P$ and parallel to the $y$ axis, then
;; represent the area of the triangle $PRH$ using $t$.
;;
;; (3) Let $S_1$ be the area of the region enclosed by the parabola
;; $y = x^2$, the straight line $y = x$, and the line segment $PH$ in
;; the range of $x\ge 1$, then represent $S_1$ using $t$.
;;
;; (4) Let $S_2$ be the area of the region enclosed by the parabola
;; $y = x^2$ and the straight line $y = x$. When $S_1 = S_2$, find the
;; value of $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (H)
        (exists (l)
                (&& (line-type l)
                    (< 1 t)
                    (on (point t (^ t 2)) l)
                    (perpendicular l (line (origin) (point 1 1)))
                    (on H (intersection l
                                        (line (origin) (point 1 1))))))))

(def-directive
  p2
  (Find (PRH)
        (exists (P R H l0 l1 l2)
                (&& (= P (point t (^ t 2)))
                    (< 1 t)
                    (= l0 (line (origin) (point 1 1)))
                    (line-type l1)
                    (line-type l2)
                    (on P l1)
                    (perpendicular l0 l1)
                    (on H (intersection l0 l1))
                    (on R (intersection l0 l2))
                    (on P l2)
                    (parallel l2 (y-axis))
                    (= PRH (area-of (triangle P R H)))))))

(def-directive
  p3
  (Find (S1)
        (exists (C l0 l1 P H C1 m)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (= l0 (line (origin) (point 1 1)))
                    (< 1 t)
                    (= P (point t (^ t 2)))
                    (line-type l1)
                    (on P l1)
                    (perpendicular l0 l1)
                    (on H (intersection l0 l1))
                    (= C1 (shape-of-cpfun (PLam p (&& (on p C)
                                                      (<= 1 (x-coord p))))))
                    (= m (shape-of-cpfun (PLam p (&& (= (x-coord p) (y-coord p))
                                                     (<= 1 (x-coord p))))))
                    (= S1 (area-of (shape-enclosed-by (list-of C1 m (seg P H)))))))))

(def-directive
  p4
  (Find (t)
        (exists (C l0 l1 P H C1 m S1 S2)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (= l0 (line (origin) (point 1 1)))
                    (< 1 t)
                    (= P (point t (^ t 2)))
                    (line-type l1)
                    (on P l1)
                    (perpendicular l0 l1)
                    (on H (intersection l0 l1))
                    (= C1 (shape-of-cpfun (PLam p (&& (on p C)
                                                      (<= 1 (x-coord p))))))
                    (= m (shape-of-cpfun (PLam p (&& (= (x-coord p) (y-coord p))
                                                     (<= 1 (x-coord p))))))
                    (= S1 (area-of (shape-enclosed-by (list-of C1 m (seg P H)))))
                    (= S2 (area-of (shape-enclosed-by (list-of C l0))))
                    (= S1 S2)))))

(def-answer p1 (PLam H (&& (= H (point (/ (+ (^ t 2) t) 2) (/ (+ (^ t 2) t) 2)))
         (< 1 t))))

(def-answer p2 (PLam PRH (&& (= PRH (* (/ 1 4) (^ t 2) (^ (- t 1) 2)))
           (< 1 t))))

(def-answer p3 (PLam S1 (= S1 (+ (* (/ 1 4) (^ t 4)) (* (/ -1 6) (^ t 3)) (* (/ 1 4) (^ t 2)) (/ 1 6)))))

(def-answer p4 (PLam t (= t (/ (+ 1 (sqrt 10)) 3))))

