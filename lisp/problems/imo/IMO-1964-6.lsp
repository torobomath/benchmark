;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1964, Problem 6
;; SCORE:     9
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; In tetrahedron $ABCD$, vertex $D$ is connected with $D_0$ the centroid of
;; $\triangle ABC$.
;; Lines parallel to $DD_0$ are drawn through $A$, $B$ and $C$.
;; These lines intersect the planes $BCD$, $CAD$ and $ABD$ in points $A_1$, $B_1$ and $C_1$,
;; respectively. Prove that the volume of $ABCD$ is one third the volume of
;; $A_1B_1C_1D_0$. Is the result true if point $D_0$ is selected anywhere
;; within $\triangle ABC$?
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Show
    (forall (A B C D D1 LA LB LC A1 B1 C1)
            (-> (&& (is-tetrahedron A B C D)
                    (is-center-of-gravity-of D1 (triangle A B C))
                    (line-type LA) (line-type LB) (line-type LC)
                    (on A LA) (on B LB) (on C LC)
                    (parallel LA (line D D1)) (parallel LB (line D D1)) (parallel LC (line D D1))
                    (intersect LA (plane1 B C D) A1)
                    (intersect LB (plane1 A C D) B1)
                    (intersect LC (plane1 B A D) C1))
                (= (volume-of (tetrahedron A B C D))
                   (/ (volume-of (tetrahedron A1 B1 C1 D1)) 3))))))

(def-directive p2
  (Show
   (forall (A B C D D1 LA LB LC A1 B1 C1)
           (-> (&& (is-tetrahedron A B C D)
                   (point-inside-of D1 (triangle A B C))
                   (line-type LA) (line-type LB) (line-type LC)
                   (on A LA) (on B LB) (on C LC)
                   (parallel LA (line D D1)) (parallel LB (line D D1)) (parallel LC (line D D1))
                   (intersect LA (plane1 B C D) A1)
                   (intersect LB (plane1 A C D) B1)
                   (intersect LC (plane1 B A D) C1))
               (= (volume-of (tetrahedron A B C D))
                  (/ (volume-of (tetrahedron A1 B1 C1 D1)) 3))))))

