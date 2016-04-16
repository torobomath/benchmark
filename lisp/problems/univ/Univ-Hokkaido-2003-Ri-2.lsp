;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2003, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Let $z$ be a complex number, and $i$, the imaginary unit.
;;
;; (1) Draw the figure $P$ formed by all the points $z$ such that
;; $\frac{1}{z+i} +\frac{1}{z-i}$ is a real number.
;;
;; (2) When $z$ moves on the figure $P$ found above, draw the figure
;; formed by $w =\frac{z+i}{z-i}$ on the complex plane.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Draw (P)
        (= P (2d.shape-of-cpfun (PLam p (exists (z)
                  (&& (= p (complex->point z))
                (real-number (+ (/ (complex 1 0)
                       (+ z (i)))
                    (/ (complex 1 0)
                       (- z (i))))))))))))

(def-directive
  p2
  (Draw (w_set)
        (exists (P)
                (&& (= P (2d.shape-of-cpfun (PLam p (exists (z)
                                                         (&& (= p (complex->point z))
                                                             (real-number (+ (/ (complex 1 0)
                                                                                (+ z (i)))
                                                                             (/ (complex 1 0)
                                                                                (- z (i))))))))))
                    (= w_set (2d.shape-of-cpfun (PLam p (exists (z w)
                                                             (&& (2d.on (complex->point z) P)
                                                                 (= w (/ (+ z (i))
                                                                         (- z (i))))
                                                                 (= p (complex->point w)))))))))))

(def-answer p1 (2d.shape-of-cpfun (PLam p (&& (|| (2d.on p (2d.circle (2d.origin) 1)) (2d.on p (2d.x-axis))) (! (= p (2d.point 0 1))) (! (= p (2d.point 0 -1)))) )))

(def-answer p2 (2d.shape-of-cpfun (PLam P (&& (|| (2d.on P (2d.circle (2d.origin) 1)) (2d.on P (2d.y-axis))) (! (= P (2d.origin))) (! (= P (2d.point 1 0)))))))

