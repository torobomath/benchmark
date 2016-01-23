;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2007, Humanities Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Answer the following questions about $\triangle ABC$ whose vertices
;; are the points $A(0, 0)$, $B(2, 0)$, and $C(1, \sqrt{3})$ on the
;; $x y$ plane.
;;
;; (1) For the constant $a$ satisfying $0\le a\le\sqrt{3}$, find the
;; range of $x$ such that the point $P(x, a)$ is contained in
;; $\triangle ABC$.
;;
;; (2) For the constant $a$ described in (1), when $x$ moves in the
;; range found in (1), find the minimum value of $AP^2 + BP^2 + CP^2$
;; and the value of $x$ that gives the minimum value.
;;
;; (3) When the point $P(x, y)$ is contained in $\triangle ABC$, find
;; the minimum value of $AP^2 + BP^2 + CP^2$ and the coordinates of the
;; point $P$ that give the minimum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
  (exists (A B C AB BC CA ABC P)
    (&&
     (<= 0 a)
     (<= a (sqrt 3))
     (= A (point 0 0))
     (= B (point 2 0))
     (= C (point 1 (sqrt 3)))
     (= AB (line A B))
     (= BC (line B C))
     (= CA (line C A))
     (= ABC (triangle A B C))
     (= P (point x a))
     (on P (with-boundary ABC))))))

(def-directive
  p2
  (Find (m)
  (minimum (set-by-def (PLam n (exists (A B C ABC x P)
               (&&
                (<= 0 a)
                (<= a (sqrt 3))
                (= A (point 0 0))
                (= B (point 2 0))
                (= C (point 1 (sqrt 3)))
                (= ABC (triangle A B C))
                (= P (point x a))
                (on P (with-boundary ABC))
                (= n (+ (^ (length-of (seg A P)) 2) (^ (length-of (seg B P)) 2) (^ (length-of (seg C P)) 2))))))) m)))

(def-directive
  p3
  (Find (mxy)
  (exists (A B C ABC P m x y)
                (&&
                 (= A (point 0 0))
                 (= B (point 2 0))
                 (= C (point 1 (sqrt 3)))
                 (= ABC (triangle A B C))
                 (= P (point x y))
     (on P (with-boundary ABC))
     (minimum (set-by-def (PLam n (exists (a b c abc p x1 y1)
                  (&&
                   (= a (point 0 0))
                   (= b (point 2 0))
                   (= c (point 1 (sqrt 3)))
                   (= abc (triangle a b c))
                   (= p (point x1 y1))
                   (point-inside-of p abc)
                   (= n (+ (^ (length-of (seg a p)) 2) (^ (length-of (seg b p)) 2) (^ (length-of (seg c p)) 2))))))) m)
     (= m (+ (^ (length-of (seg A P)) 2) (^ (length-of (seg B P)) 2) (^ (length-of (seg C P)) 2)))
     (= mxy (list-of m x y))))))

(def-answer p1 (PLam x (&& (<= 0 a) (<= a (sqrt 3))
                           (<= (/ a (sqrt 3)) x) (<= x (- 2 (/ a (sqrt 3)))))))

(def-answer p2 (PLam m (&& (<= 0 a) (<= (^ a 2) 3)
                           (= m (+ (* 3 (^ a 2)) (* -2 (sqrt 3) a) 5)))))

(def-answer p3 (PLam mxy (= mxy (list-of 4 1 (/ (sqrt 3) 3)))))

