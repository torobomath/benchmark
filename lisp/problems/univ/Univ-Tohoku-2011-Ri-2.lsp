;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2011, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a real number. Assume that the circle $C$ has the straight
;; line $y = - x$ as the tangent at the point $(a, -a)$ and passes
;; through the point $(0, 1)$. Let $P(X, Y)$ be the center of $C$, then
;; answer the following questions:
;;
;; (1) Represent $X$ and $Y$ using $a$.
;;
;; (2) Find the area of the region enclosed by the straight line $y = 1$
;; and the locus of the point $P$ when $a$ moves.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (P)
        (exists (C Px Py)
                (&& (circle-type C)
                    (= P (list-of Px Py))
                    (= (point Px Py) (center-of C))
                    (tangent (graph-of (fun (Lam x (- x)))) C (point a (- a)))
                    (on (point 0 1) C)))))

(def-directive
  p1_1
  (Find (P)
        (exists (C Px Py)
                (&& (circle-type C)
                    (= P (list-of Px Py))
                    (= (point Px Py) (center-of C))
                    (tangent (line (origin) (point 1 -1)) C (point a (- a)))
                    (on (point 0 1) C)))))

(def-directive
  p2
  (Find (S)
        (exists (P_set)
                (&& (= P_set (shape-of-cpfun (PLam P (exists (a C)
                                                             (&& (circle-type C)
                                                                 (= P (center-of C))
                                                                 (tangent (graph-of (fun (Lam x (- x)))) C (point a (- a)))
                                                                 (on (point 0 1) C))))))
                    (= S (area-of (shape-enclosed-by (list-of P_set
                                                              (shape-of-cpfun (PLam p (= (y-coord p ) 1)))))))))))

(def-directive
  p2_1
  (Find (S)
        (exists (P_set)
                (&& (= P_set (shape-of-cpfun (PLam P (exists (a C)
                                                             (&& (circle-type C)
                                                                 (= P (center-of C))
                                                                 (tangent (line (origin) (point 1 -1)) C (point a (- a)))
                                                                 (on (point 0 1) C))))))
                    (= S (area-of (shape-enclosed-by (list-of P_set
                                                              (shape-of-cpfun (PLam p (= (y-coord p ) 1)))))))))))

(def-answer p1   (PLam P (exists (Px Py) (&&
  (! (= (+ (* 2 (^ a 2)) (* 2 a) 1) 0))
  (= P (list-of Px Py))
  (= Px (/ (+ (* 2 (^ a 2)) (* 4 a) 1) 2))
  (= Py (/ (+ (* 2 (^ a 2)) 1) 2))))))

(def-answer p1_1 (PLam P (exists (Px Py) (&&
  (! (= (+ (* 2 (^ a 2)) (* 2 a) 1) 0))
  (= P (list-of Px Py))
  (= Px (/ (+ (* 2 (^ a 2)) (* 4 a) 1) 2))
  (= Py (/ (+ (* 2 (^ a 2)) 1) 2))))))

(def-answer p2   (PLam S (= S (* (/ 2 3) (sqrt 2)))))

(def-answer p2_1 (PLam S (= S (* (/ 2 3) (sqrt 2)))))

(def-answer a1   (PLam P (exists (Px Py) (&&
  (! (= (+ (* 2 (^ a 2)) (* 2 a) 1) 0))
  (= P (list-of Px Py))
  (= Px (/ (+ (* 2 (^ a 2)) (* 4 a) 1) 2))
  (= Py (/ (+ (* 2 (^ a 2)) 1) 2))))))

(def-answer a2   (PLam S (= S (* (/ 2 3) (sqrt 2)))))

