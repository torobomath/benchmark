;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2009, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-25
;;
;; <PROBLEM-TEXT>
;; Consider the curve $C$: $y = x^3 - k x$ and the point $A(a, a^3-k a)$
;; $(a\not= 0)$ on $C$, where $k$ is a real number. Answer the following
;; questions:
;;
;; (1) Let $l_1$ be the tangent to $C$ at the point $A$. Let $B$ be the
;; intersection of $l_1$ and $C$ other than $A$. Find the $x$ coordinate
;; of $B$.
;;
;; (2) Let $l_2$ be the tangent to $C$ at the point $B$. Find the
;; condition that $a$ and $k$ must satisfy in order that $l_1$ is
;; orthogonal to $l_2$.
;;
;; (3) Find the range of the value of $k$ such that there exists $k$
;; such that $l_1$ is orthogonal to $l_2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
        (exists (C A l1 B)
          (&& (! (= a 0))
        (= C (graph-of (fun (Lam x (- (^ x 3) (* k x))))))
        (= A (point a (- (^ a 3) (* k a))))
        (line-type l1)
        (tangent l1 C A)
        (! (= B A))
        (intersect l1 C B)
        (= x (x-coord B))))))

(def-answer p1 (PLam x (&& (|| (> a 0) (< a 0)) (= x (* (- 2) a)))))

(def-directive
  p2
  (Find (ak)
        (exists (a k C A l1 B l2) (&&
          (! (= a 0))
        (= ak (list-of a k))
        (= C (graph-of (fun (Lam x (- (^ x 3) (* k x))))))
        (= A (point a (- (^ a 3) (* k a))))
        (line-type l1)
        (tangent l1 C A)
        (! (= B A))
        (intersect l1 C B)
        (line-type l2)
        (tangent l2 C B)
        (perpendicular l1 l2)))))

(def-answer p2 (PLam ak (exists (a k) (&&
   (= ak (list-of a k))
   (= (* (- (* 3 (^ a 2)) k) (- (* 12 (^ a 2)) k)) -1)
))))

(def-directive
  p3
  (Find (k)
        (exists (a C A l1 B l2)
                (&& (= C (graph-of (fun (Lam x (- (^ x 3) (* k x))))))
                    (= A (point a (- (^ a 3) (* k a))))
                    (line-type l1)
                    (tangent l1 C A)
                    (! (= B A))
                    (intersect l1 C B)
                    (line-type l2)
                    (tangent l2 C B)
                    (perpendicular l1 l2)))))

(def-answer p3 (PLam k (>= k (/ 4 3))))

