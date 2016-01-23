;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 1999, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-16
;;
;; <PROBLEM-TEXT>
;; Let $l_1$ be the tangent to the parabola $C$ : $y =\frac{1}{2} x^2$
;; at the point $P$ (other than the origin), and let $l_2$ be the
;; straight line that passes through $P$ and is orthogonal to $l_1$. Let
;; $Q$ be the other intersection of $l_2$ and $C$, and let $l_3$ be the
;; tangent to $C$ at $Q$. Let $R$ be the intersection of $l_1$ and
;; $l_3$.
;;
;; (1) For the point $R(x, y)$, represent $y$ by a formula of $x$.
;;
;; (2) Find the range of the $x$ coordinate of the point $P$ such that
;; $PR\ge PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (y)
    (exists (l1 l2 l3 C P Q R)
      (&&
        (= C (graph-of (poly-fun (list-of 0 0 (/ 1 2)))))
        (line-type l1)
        (line-type l2)
        (line-type l3)
        (! (= P (origin)))
  (on P C)
        (tangent C l1 P)
        (line-type l1)
        (perpendicular l1 l2)
        (line-type l2)
        (on P l2)
        (on Q l2)
        (on Q C)
        (! (= P Q))
        (line-type l3)
        (tangent C l3 Q)
        (on R l1)
        (on R l3)
        (= R (point x y))
      )
    )
  )
)

(def-answer p1 (PLam y (&& (! (= x 0))
         (= y (- (+ (/ 1 (* 2 (^ x 2))) 1))))))

(def-directive
  p2
  (Find (x)
    (exists (l1 l2 l3 C P Q R)
      (&&
        (= C (graph-of (poly-fun (list-of 0 0 (/ 1 2)))))
        (line-type l1)
        (line-type l2)
        (line-type l3)
        (! (= P (origin)))
  (on P C)
        (tangent C l1 P)
        (line-type l1)
        (perpendicular l1 l2)
        (line-type l2)
        (on P l2)
        (on Q l2)
        (on Q C)
        (! (= P Q))
        (line-type l3)
        (tangent C l3 Q)
        (on R l1)
        (on R l3)
        (>= (distance P R) (distance P Q))
        (= x (x-coord P))
      )
    )
  )
)

(def-answer p2 (PLam x (|| (>= x 2)
         (>= (- 2) x))))

