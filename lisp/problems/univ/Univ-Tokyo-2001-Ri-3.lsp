;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2001, Science Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-19
;;
;; <PROBLEM-TEXT>
;; For the real number $t>1$, let $a(t)$ be the area of the triangle on
;; the $xy$ plane whose vertices are the points $O(0, 0)$, $P(1, 1)$,
;; and $Q(t, \frac{1}{t})$, and let $b(t)$ be the area of the region
;; enclosed by the line segment $OP$ and $OQ$, and the hyperbola
;; $x y=1$. Assume that $c(t)=\frac{b(t)}{a(t)}$, then prove that the
;; function $c()$ always decreases in the range of $t>1$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (let* ((a (Lam t (area-of (triangle (origin) (point 1 1) (point t (/ 1 t))))))
         (b (Lam t (area-of (shape-enclosed-by (list-of (seg (origin) (point 1 1))
                    (seg (origin) (point t (/ 1 t)))
                    (shape-of-cpfun (PLam p (= 1 (* (x-coord p) (y-coord p))))))))))
         (c (Lam t (/ (LamApp a t) (LamApp b t)))))
        (forall (t)
          (-> (> t 1)
        (decreasing-at (fun c) t))))))

