;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2001, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; Assume that for the vertices $P_1$ and $P_2, \cdots, P_6$ of a
;; regular octahedron and the vector $\vec{v}$ in the $xyz$ space,
;; $\vec{P_kP_m}\cdot\vec{v}\not= 0$ is true when $k\not= m$. Then, for
;; all the values of $m$ that are different from $k$, prove that there
;; exists the point $P_k$ that satisfies $\vec{P_kP_m}\cdot\vec{v}<0$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Show (forall (P1 P2 P3 P4 P5 P6 v)
                (-> (&& (is-regular-octahedron P1 P2 P3 P4 P5 P6)
                        (forall (Pk Pm)
                                (-> (&& (member Pk (list-of P1 P2 P3 P4 P5 P6))
                                        (member Pm (list-of P1 P2 P3 P4 P5 P6))
                                        (! (= Pk Pm)))
                                    (! (= (inner-prod (vec Pk Pm) v)
                                          0)))))
                    (exists (Pk)
                            (&& (member Pk (list-of P1 P2 P3 P4 P5 P6))
                                (forall (Pm)
                                        (-> (&& (member Pm (list-of P1 P2 P3 P4 P5 P6))
                                                (! (= Pm Pk)))
                                            (< (inner-prod (vec Pk Pm) v)
                                               0)))))))))

