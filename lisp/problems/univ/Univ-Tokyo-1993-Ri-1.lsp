;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1993, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Consider the tetrahedron $ABCD$ whose faces are all congruent. Assume
;; that the vertices $A$, $B$, and $C$ are on the positive part of the
;; $x$, $y$, and $z$ axes, and the side lengths are $AB=2 l-1$,
;; $BC=2 l$, and $CA=2 l+1$ ( $l>2$), respectively. When the volume of
;; the tetrahedron $ABCD$ is $V(l)$, find the following limit value:
;; $\lim_{l\rightarrow 2}\frac{V(l)}{\sqrt{l-2}}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (lim)
        (exists (V)
                (&& (converge (fun (Lam l (/ (funapp V l)
                                             (sqrt (- l 2)))))
                              2
                              lim)
                    (forall (l)
                            (-> (> l 2)
                                (exists (A B C D ABCD)
                                        (&& (is-tetrahedron A B C D)
                                            (= ABCD (tetrahedron A B C D))
                                            (forall (F0 F1)
                                                    (-> (&& (is-face-of F0 ABCD)
                                                            (is-face-of F1 ABCD))
                                                        (similar F0 F1)))
                                            (on A (x-axis))
                                            (on B (y-axis))
                                            (on C (z-axis))
                                            (= (distance A B)
                                               (- (* 2 l) 1))
                                            (= (distance B C)
                                               (* 2 l))
                                            (= (distance C A)
                                               (+ (* 2 l) 1))
                                            (= (funapp V l)
                                               (volume-of ABCD))))))))))

(def-answer p (PLam lim (= lim 8)))

