;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2001, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; Assume that for the different four points $P_1$, $P_2$, $P_3$, $P_4$,
;; and the vector $\vec{v}$ on the $xy$ plane,
;; $\vec{P_kP_m}\cdot\vec{v}\not= 0$ is true when $k\not= m$. Then, for
;; all the values of $m$ that are different from $k$, prove that there
;; exists the point $P_k$ that satisfies $\vec{P_kP_m}\cdot\vec{v}<0$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (P1 P2 P3 P4 v)
                (-> (&& (pairwise-distinct (list-of P1 P2 P3 P4))
                        (forall (Pk Pm)
                                (-> (&& (member Pk (list-of P1 P2 P3 P4))
                                        (member Pm (list-of P1 P2 P3 P4))
                                        (! (= Pm Pk)))
                                    (! (= (inner-prod (vec Pk Pm)
                                                      v)
                                          0)))))
                    (exists (Pk)
                            (&& (member Pk (list-of P1 P2 P3 P4))
                                (forall (Pm)
                                        (-> (&& (member Pm (list-of P1 P2 P3 P4))
                                                (! (= Pm Pk)))
                                            (< (inner-prod (vec Pk Pm)
                                                           v)
                                               0)))))))))

