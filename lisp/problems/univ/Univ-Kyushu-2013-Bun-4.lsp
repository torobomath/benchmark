;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2013, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $C$ be the circle $(x - 1)^2 +(y - 1)^2 = 2$ on the coordinate
;; plane. Answer the following questions:
;;
;; (1) Prove that the straight line $y = x - 2$ is in contact with the
;; circle $C$. Find the coordinates of the point of contact.
;;
;; (2) Find the coordinates of all the common points of the circle $C$
;; and the parabola $y =\frac{1}{4} x^2 - 1$.
;;
;; (3) Let $D$ be the region defined by the inequality
;; $y\ge\frac{1}{4} x^2 - 1$. Let $A$ be the region defined by the
;; inequality $|x| + |y|\le 2$, and let $B$ be the region defined by the
;; inequality $(|x| - 1)^2 +(y - 1)^2\le 2$. Let $E$ be the union
;; $A\cup B$, that is, the combination of the regions $A$ and $B$. Then,
;; draw the intersection $D\cap E$ of the regions $D$ and $E$, and find
;; the area of the intersection.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Show (tangent (circle (point 1 1) (sqrt 2))
           (line (point 0 -2) (point 1 -1)))))

(def-directive
  p1_2
  (Find (P)
  (tangent (circle (point 1 1) (sqrt 2))
     (line (point 0 -2) (point 1 -1))
     P)))

(def-directive
  p2
  (Find (P)
  (on P (intersection (circle (point 1 1) (sqrt 2))
          (shape-of-cpfun (PLam p (= (y-coord p)
                   (- (/ (^ (x-coord p) 2) 4) 1))))))))

(def-directive
  p3_1
  (Draw (DE)
  (exists (D A B E)
    (&& (= D (shape-of-cpfun (PLam p (>= (y-coord p)
                 (- (/ (^ (x-coord p) 2) 4) 1)))))
        (= A (shape-of-cpfun (PLam p (<= (+ (abs (x-coord p)) (abs (y-coord p)))
                 2))))
        (= B (shape-of-cpfun (PLam p (<= (+ (^ (- (abs (x-coord p)) 1) 2)
              (^ (- (y-coord p) 1) 2))
                 2))))
        (= E (union A B))
        (= DE (intersection D E))))))

(def-directive
  p3_2
  (Find (S)
  (exists (D A B E)
    (&& (= D (shape-of-cpfun (PLam p (>= (y-coord p)
                 (- (/ (^ (x-coord p) 2) 4) 1)))))
        (= A (shape-of-cpfun (PLam p (<= (+ (abs (x-coord p)) (abs (y-coord p)))
                 2))))
        (= B (shape-of-cpfun (PLam p (<= (+ (^ (- (abs (x-coord p)) 1) 2)
              (^ (- (y-coord p) 1) 2))
                 2))))
        (= E (union A B))
        (= S (area-of (intersection D E)))))))

(def-answer p1_2 (PLam P (= P (point 2 0))))

(def-answer p2 (PLam P (= P (point 2 0))))

(def-answer p3_1 (set-of-cfun (Lam x (PLam y (|| (<= (+ (^ (- x 1) 2) (^ (- y 1) 2)) 2)
                (<= (+ (^ (+ x 1) 2) (^ (- y 1) 2)) 2)
                (&& (>= y (- (/ (^ x 2) 4) 1) )
              (<= y 0)
              )
                )))))

(def-answer p3_2 (PLam S (= S (+ (* 2 (Pi)) (/ 20 3)))))

