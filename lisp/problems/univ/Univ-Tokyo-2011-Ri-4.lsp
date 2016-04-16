;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2011, Science Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-02-18
;;
;; <PROBLEM-TEXT>
;; Consider the point $P(\frac{1}{2}, \frac{1}{4})$ on the coordinate
;; plane. When $Q({\alpha}, {\alpha}^2)$ and $R({\beta}, {\beta}^2)$ on
;; the parabola $y=x^2$ move so that the points $P$, $Q$, and $R$ form
;; an isosceles triangle taking $QR$ as the base, find the locus of the
;; centroid $G(X, Y)$ of $\triangle PQR$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (T)
    (= T (shape-of-cpfun (PLam G
                            (exists (P Q R C a b)
                                    (&&
                                      (= P (point (/ 1 2) (/ 1 4)))
                                      (= C (graph-of (poly-fun (list-of 0 0 1))))
                                      (= Q (point a (^ a 2)))
                                      (= R (point b (^ b 2)))
                                      (on Q C)
                                      (on R C)
                                      (is-triangle P Q R)
                                      (= (distance P Q) (distance P R))
                                      (is-center-of-gravity-of G (triangle P Q R))
                                    )
                            )
                        )
          )
    )
  )
)

(def-answer p (PLam T (= T (shape-of-cpfun (PLam G
                (&& (! (= (x-coord G) (/ 1 6)))
        (= (y-coord G) (- (/ 1 (* 9 (- (x-coord G) (/ 1 6)))) (/ 1 12)))
        (< (/ 1 4) (y-coord G))))))))

