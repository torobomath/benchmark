;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2003, Humanities Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-30
;;
;; <PROBLEM-TEXT>
;; Let $A(a, 0)$ and $B(b, 0)$ be the common points of the parabola $C$:
;; $y = - x^2 + 2 x + 1$ and the $x$ axis, let $P({\alpha}, m {\alpha})$
;; be the common points of $C$ and the straight line $y = m x$, and let
;; $O$ be the origin, where $a < b$, $m\not= 0$, and
;; ${\alpha} < {\beta}$. Assuming that the area of the region enclosed
;; by the line segments $OP$, $OA$, and $C$ is equal to the area of the
;; region enclosed by the line segments $OQ$, $OB$, and $C$, find the
;; value of $m$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (m)
  (exists (A B C a b P Q alpha beta)
    (&&
     (= A (point a 0))
     (= B (point b 0))
     (= C (graph-of (poly-fun (list-of 1 2 -1))))
     (on A (x-axis))
     (on A C)
     (on B (x-axis))
     (on B C)
     (= P (point alpha (* m alpha)))
     (= Q (point beta (* m beta)))
     (on P (graph-of (poly-fun (list-of 0 m))))
     (on P C)
     (on Q (graph-of (poly-fun (list-of 0 m))))
     (on Q C)
     (< a b)
     (! (= m 0))
     (< alpha beta)
     (= (area-of (shape-enclosed-by (list-of (seg (origin) P) (seg (origin) A) C)))
        (area-of (shape-enclosed-by (list-of (seg (origin) Q) (seg (origin) B) C))))))))

(def-answer p (PLam m (= m 4)))

