;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Consider the tetrahedron $PABC$ whose base is the equilateral
;; triangle $ABC$ with the side length of $3$. Define
;; $PA = PB = PC = 2$.
;;
;; (1) Find the volume of the tetrahedron $PABC$.
;;
;; (2) When the point $E$ on the side $AB$ and the point $F$ on the side
;; $AC$ satisfy $AE = AF$ and $\cos\angle EPF =\frac{4}{5}$, find the
;; length $AE$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (V)
        (exists (A B C P)
                (&& (is-equilateral-triangle A B C)
                    (= (distance A B) 3)
                    (= (distance P A) 2)
                    (= (distance P B) 2)
                    (= (distance P C) 2)
                    (= V (volume-of (tetrahedron P A B C)))))))

(def-directive
  p2
  (Find (AE)
        (exists (A B C P E F)
                (&& (is-equilateral-triangle A B C)
                    (= (distance A B) 3)
                    (= (distance P A) 2)
                    (= (distance P B) 2)
                    (= (distance P C) 2)
                    (on E (seg A B))
                    (on F (seg A C))
                    (= (distance A E)
                       (distance A F))
                    (= (cos-of-angle (angle E P F))
                       (/ 4 5))
                    (= AE (distance A E))))))

(def-answer p1 (PLam V (= V (* (/ 3 4) (sqrt 3)))))

(def-answer p2 (PLam AE (= AE (/ (+ -3 (sqrt 33)) 3))))

