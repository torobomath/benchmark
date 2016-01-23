;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2001, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-13
;;
;; <PROBLEM-TEXT>
;; Assume that there are the points $A$, $B$, $C$, and $D$ on the
;; spherical surface of the radius $r$. The length of each side of the
;; tetrahedron $ABCD$ satisfies $AB=\sqrt{3}$ and $AC=AD=BC=BD=CD=2$.
;; Find the value of $r$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (r) (exists (A B C D) (exists (S)
              (&& (sphere-type S)
            (= (distance A B) (^ 3 (/ 1 2)))
            (= (distance A C) (distance A D))
            (= (distance A D) (distance B C))
            (= (distance B C) (distance B D))
            (= (distance B D) (distance C D))
            (= (distance C D) 2)
            (on A S)
            (on B S)
            (on C S)
            (on D S)
            (= r (radius-of S)))))))

(def-answer p1 (PLam r (= r (/ (sqrt 13) 3))))

