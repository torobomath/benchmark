;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2003, Humanities Course, Problem 6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-23
;;
;; <PROBLEM-TEXT>
;; Consider the tetrahedron $OABC$ in a space, and assume that
;; $\angle AOB$, $\angle BOC$, and $\angle COA$ are all $90^{\circ}$.
;; Let $a$, $b$, and $c$ be the lengths of the sides $OA$, $OB$, and
;; $OC$, respectively, and let $G$ be the centroid of the triangle
;; $ABC$.
;;
;; (1) Represent the condition for all $\angle OGA$, $\angle OGB$, and
;; $\angle OGC$ to be $90^{\circ}$ by a relational expression of $a$,
;; $b$, and $c$.
;;
;; (2) Let $D$ be the point that internally divides the line segment
;; $BC$ in a ratio of $1 : 2$. Assume that the point $P$ moves on the
;; straight line $AD$ except $A$, and the point $Q$ moves so that the
;; centroid of the triangle $APQ$ is at the point $G$. Find the minimum
;; length of the line segment $OQ$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (abc)
        (exists (O A B C G a b c)
                (&& (is-tetrahedron O A B C)
                    (is-right (angle A O B))
                    (is-right (angle B O C))
                    (is-right (angle C O A))
                    (= a (distance O A))
                    (= b (distance O B))
                    (= c (distance O C))
                    (= G (centroid-of (triangle A B C)))
                    (is-right (angle O G A))
                    (is-right (angle O G B))
                    (is-right (angle O G C))
                    (= abc (list-of a b c))))))

(def-directive
  p2
  (Find (OQ_min)
        (exists (OQ_set)
                (&& (minimum OQ_set OQ_min)
                    (= OQ_set (set-by-def (PLam OQ (exists (O A B C G a b c D P Q)
                                   (&& (is-tetrahedron O A B C)
                                 (is-right (angle A O B))
                                 (is-right (angle B O C))
                                 (is-right (angle C O A))
                                 (= a (distance O A))
                                 (= b (distance O B))
                                 (= c (distance O C))
                                 (= G (centroid-of (triangle A B C)))
                                 (divide-internally D (seg B C) 1 2)
                                 (on P (line A D))
                                 (! (= P A))
                                 (= G (centroid-of (triangle A P Q)))
                                 (= OQ (distance O Q)))))))))))

(def-answer p1 (PLam abc (exists (a b c) (&&
  (= abc (list-of a b c))
  (< 0 a)
  (= a b) (= b c)))))

(def-answer p2 (PLam OQ_min (= OQ_min (sqrt (/ (+ (* (^ a 2) (^ b 2)) (* (^ b 2) (^ c 2)) (* 4 (^ c 2) (^ a 2))) (+ (* 9 (^ a 2)) (* 4 (^ b 2)) (^ c 2)))))))

