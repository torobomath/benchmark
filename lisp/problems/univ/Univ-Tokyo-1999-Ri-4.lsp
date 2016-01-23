;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1999, Science Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2015-02-07
;;
;; <PROBLEM-TEXT>
;; In the $xyz$ space, assume that the discs $A$ and $B$ are on the $xy$
;; and $xz$ planes, respectively, and the following two conditions are
;; satisfied:
;;
;; (a) $A$ and $B$ are contained in the region within the distance $1$
;; from the origin. (b) $A$ and $B$ share only one point $P$, and the
;; $P$ is on both circumferences.
;;
;; Find the maximum value of the sum of the radii of the discs $A$ and
;; $B$. Here, a disc includes both the inside of the circle and the
;; circumference.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (maxSumRadAB)
        (maximum
          (set-by-def (PLam sumRadAB
                            (exists (A B P)
                                    (&& (disk-type A)
                                        (disk-type B)
                                        (inside-of A (xy-plane))
                                        (inside-of B (zx-plane))
                                        (inside-of A (shape-of-cpfun (PLam p (>= 1 (distance (origin) p)))))
                                        (inside-of B (shape-of-cpfun (PLam p (>= 1 (distance (origin) p)))))
                                        (forall (Q)
                                                (-> (&& (on Q A)
                                                        (on Q B))
                                                    (= Q P)))
                                        (on P (boundary-of A))
                                        (on P (boundary-of B))
                                        (= sumRadAB (+ (radius-of A) (radius-of B)))))))
          maxSumRadAB)))

(def-answer p (PLam maxSumRadAB (= maxSumRadAB (/ 9 8))))

