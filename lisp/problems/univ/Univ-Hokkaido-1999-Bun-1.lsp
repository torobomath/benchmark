;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 1999, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-09
;;
;; <PROBLEM-TEXT>
;; For the triangle $ABC$ with the area of $1$, define $AB = 2$,
;; $BC = a$, and $CA = b$. Assuming that the foot $D$ of the
;; perpendicular drawn from $C$ to the straight line $AB$ is on the line
;; segment $AB$, answer the following questions:
;;
;; (1) Assuming that $AD = x$, represent $a^2 +(2\sqrt{3} - 1)b^2$ using
;; $x$.
;;
;; (2) Find the value of $x$ that gives the minimum value of
;; $a^2 +(2\sqrt{3} - 1)b^2$ and the magnitude of $\angle BAC$ at that
;; time.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (z)
    (exists (a b A B C ABC D)
      (&&
        (= ABC (triangle A B C))
        (= 1 (area-of ABC))
        (= 2 (distance A B))
        (= a (distance B C))
        (= b (distance C A))
        (= x (distance A D))
  (= z (+ (^ a 2) (* (+ (* 2 (sqrt 3)) (- 1)) (^ b 2))))
        (perpendicular (line A B) (line C D))
        (on D (seg A B))
    ))))

(def-directive
  p2
  (Find (zmin)
    (minimum (set-by-def (PLam z
      (exists (a b x A B C ABC D)
        (&&
          (= A (origin))
          (on B (x-axis))
          (= ABC (triangle A B C))
          (= 1 (area-of ABC))
          (= 2 (distance A B))
          (= a (distance B C))
          (= b (distance C A))
          (= x (distance A D))
          (= z (+ (^ a 2) (* (+ (* 2 (sqrt 3)) (- 1)) (^ b 2))))
          (perpendicular (line A B) (line C D))
          (on D (seg A B))
      )))) zmin)))

(def-directive
  p2_1
  (Find (x)
        (exists (a b A B C ABC D z)
                (&&
                  (= A (origin))
                  (on B (x-axis))
                  (= ABC (triangle A B C))
                  (= 1 (area-of ABC))
                  (= 2 (distance A B))
                  (= a (distance B C))
                  (= b (distance C A))
                  (= x (distance A D))
                  (= z (+ (^ a 2) (* (+ (* 2 (sqrt 3)) (- 1)) (^ b 2))))
                  (perpendicular (line A B) (line C D))
                  (on D (seg A B))
                  (minimum (set-by-def (PLam z
                                             (exists (a b x A B C ABC D)
                                                     (&&
                                                       (= A (origin))
                                                       (on B (x-axis))
                                                       (= ABC (triangle A B C))
                                                       (= 1 (area-of ABC))
                                                       (= 2 (distance A B))
                                                       (= a (distance B C))
                                                       (= b (distance C A))
                                                       (= x (distance A D))
                                                       (= z (+ (^ a 2) (* (+ (* 2 (sqrt 3)) (- 1)) (^ b 2))))
                                                       (perpendicular (line A B) (line C D))
                                                       (on D (seg A B))
                                                       )))) z)))))

(def-answer p1 (PLam z (&& (<= 0 x) (<= x 2)
         (= z (+ (* 2 (sqrt 3) (^ x 2)) (* -4 x) (* 2 (sqrt 3)) 4)))))

(def-answer p2 (PLam zmin (= zmin (+ (/ 4 (sqrt 3)) 4))))

(def-answer p2_1 (PLam x (= x (/ 1 (sqrt 3)))))

(def-answer a1 (PLam z (&& (<= 0 x) (<= x 2)
         (= z (+ (* 2 (sqrt 3) (^ x 2)) (* -4 x) (* 2 (sqrt 3)) 4)))))

(def-answer a2_1 (PLam x (= x (/ 1 (sqrt 3)))))

(def-answer a2_2 (PLam zmin (= zmin (+ (/ 4 (sqrt 3)) 4))))

