;; DOMAIN:    Function and Limit
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Science Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $r$ be a real number that satisfies $0<r<1$. Consider the origin
;; $O(0, 0, 0)$ and the points $A(1, 0, 0)$ and $B(0, 1, 0)$ in the
;; $xyz$ space.
;;
;; (1) Find the range of $r$ such that there exists the point $r$ in the
;; $xyz$ space that satisfies $|\vec{PA}|=|\vec{PB}|=r |\vec{PO}|$.
;;
;; (2) When the point $P$ moves satisfying the condition mentioned in
;; (1), assume that the functions $M(r)$ and $m(r)$ represent the
;; maximum and minimum values of the inner product
;; $\vec{PA}\cdot\vec{PB}$, respectively. Then, find the limit from the
;; left $\lim_{r\rightarrow 1-0}(1 - r)^2\{M(r)- m(r)\}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (r)
        (&& (< 0 r)
            (< r 1)
            (exists (O A B P)
                    (&& (= O (origin))
                        (= A (point 1 0 0))
                        (= B (point 0 1 0))
                        (= (radius (vec P A))
                           (radius (vec P B)))
                        (= (radius (vec P B))
                           (* r (radius (vec P O)))))))))

(def-answer p1 (PLam r (&& (<= (/ (sqrt 2) 2) r)
                           (< r 1))))

