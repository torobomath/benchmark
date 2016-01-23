;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-17
;;
;; <PROBLEM-TEXT>
;; Let $C$ be the curve obtained by translating the curve $y=x^2$ by the
;; translation that translates the point $(x, y)$ to the point
;; $(x + a, y + b)$. Draw the outline of the range of the point $(a, b)$
;; whose coordinates are $a$ and $b$ such that $C$ is in contact with
;; the curve $y=\frac{1}{x}$ ( $x>0$).
;;
;; Find the values of $a$ and $b$ such that the two curves have no
;; common points other than the contact points of them, where the fact
;; that two curves are in contact with each other at a certain point
;; means that they have a common tangent at that point.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (ab)
  (exists (a b C)
    (&& (= ab (list-of a b))
        (= C (graph-of (fun (Lam x (+ (^ (- x a) 2) b)))))
        (exists (l P D)
          (&& (line-type l)
        (= D (graph-of (fun (Lam x (/ 1 x)))))
        (on P D) (on P C) (on P l) (> (x-coord P) 0)
        (tangent l C P)
        (tangent l D P)
        (forall (Q) (-> (&& (on Q C) (on Q D) (> (x-coord Q) 0)
                )
            (= P Q)))
        ))))))

(def-answer p (PLam ab (= ab (list-of (/ 3 2) (/ 3 4)))))

