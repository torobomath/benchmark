;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 2
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2013-11-11
;;
;; <PROBLEM-TEXT>
;; Consider the three points $P(0, -\sqrt{2})$, $Q(0, \sqrt{2})$, and
;; $A(a, \sqrt{a^2+1})$ ( $0\le a\le 1$) on the coordinate plane.
;;
;; (1) Prove that the difference in the length of the two line segment is
;; a constant irrespective of $a$, and find the value of the constant.
;;
;; (2) Let $B$ be the intersection of the parabola
;; $y=\frac{\sqrt{2}}{8} x^2$ and the half line starting from $Q$ and
;; passing through $A$. Let $C$ be the intersection of the straight line
;; $y=2$ and the perpendicular drawn from the point $B$ to the straight
;; line $y=2$. Prove that the sum of the lengths of the line segments
;; $PA+AB+BC$ is a constant independent of $a$, and find the value of
;; the constant.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Show
    (exists (d)
            (forall (P Q A a)
                    (-> (&& (= P (point 0 (- (sqrt 2))))
                            (= Q (point 0 (sqrt 2)))
                            (= A (point a (sqrt (+ (^ a 2) 1))))
                            (<= 0 a)
                            (<= a 1))
                        (= d (- (length-of (seg P A))
                                (length-of (seg A Q)))))))))

(def-directive
  p1_2
  (Find (d)
        (forall (P Q A a)
                (-> (&& (= P (point 0 (- (sqrt 2))))
                        (= Q (point 0 (sqrt 2)))
                        (= A (point a (sqrt (+ (^ a 2) 1))))
                        (<= 0 a)
                        (<= a 1))
                    (= d (- (length-of (seg P A))
                            (length-of (seg A Q))))))))

(def-directive
  p2_1
  (Show
    (exists (s)
            (forall (P Q A a B C l m)
                    (-> (&& (= P (point 0 (- (sqrt 2))))
                            (= Q (point 0 (sqrt 2)))
                            (= A (point a (sqrt (+ (^ a 2) 1))))
                            (<= 0 a)
                            (<= a 1)
                            (half-line-type l)
                            (is-end-point-of Q l)
                            (on A l)
                            (intersect l (graph-of (poly-fun (list-of 0 0 (/ (sqrt 2) 8)))) B)
                            (line-type m)
                            (on B m)
                            (perpendicular m (line (point 0 2) (point 1 2)))
                            (intersect m (line (point 0 2) (point 1 2)) C))
                        (= s (+ (length-of (seg P A))
                                (length-of (seg A B))
                                (length-of (seg B C)))))))))

(def-directive
  p2_2
  (Find (s)
        (forall (P Q A a B C l m)
                (-> (&& (= P (point 0 (- (sqrt 2))))
                        (= Q (point 0 (sqrt 2)))
                        (= A (point a (sqrt (+ (^ a 2) 1))))
                        (<= 0 a)
                        (<= a 1)
                        (half-line-type l)
                        (is-end-point-of Q l)
                        (on A l)
                        (intersect l (graph-of (poly-fun (list-of 0 0 (/ (sqrt 2) 8)))) B)
                        (line-type m)
                        (on B m)
                        (perpendicular m (line (point 0 2) (point 1 2)))
                        (intersect m (line (point 0 2) (point 1 2)) C))
                    (= s (+ (length-of (seg P A))
                            (length-of (seg A B))
                            (length-of (seg B C))))))))

(def-answer p1_2 (PLam d (= d 2)))

(def-answer p2_2 (PLam s (= s (sqrt 2))))

