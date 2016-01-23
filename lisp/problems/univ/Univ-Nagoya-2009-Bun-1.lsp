;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2009, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-26
;;
;; <PROBLEM-TEXT>
;; Assume that the spatial vectors $\vec{OA} =(1, 0, 0)$,
;; $\vec{OB} =(a, b, 0)$, and $\vec{OC}$ satisfy the conditions
;; $|\vec{OB}| = |\vec{OC}| = 1$, $\vec{OA}\cdot\vec{OB} =\frac{1}{3}$,
;; $\vec{OA}\cdot\vec{OC} =\frac{1}{2}$, and
;; $\vec{OB}\cdot\vec{OC} =\frac{5}{6}$, where $a$ and $b$ are positive
;; numbers.
;;
;; (1) Find the values of $a$ and $b$.
;;
;; (2) Find the area $S$ of the triangle $OAB$.
;;
;; (3) Find the volume $V$ of the tetrahedron $OABC$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (ab)
  (exists (a b)
    (exists (A B C)
      (&& (= ab (list-of a b))
          (= (vec (origin) A) (vec3d 1 0 0))
          (= (vec (origin) B) (vec3d a b 0))
          (= (radius (vec (origin) B)) 1)
          (= (radius (vec (origin) C)) 1)
          (= (inner-prod (vec (origin) A) (vec (origin) B)) (/ 1 3))
          (= (inner-prod (vec (origin) A) (vec (origin) C)) (/ 1 2))
          (= (inner-prod (vec (origin) B) (vec (origin) C)) (/ 5 6))
          (< 0 a)
          (< 0 b))))))

(def-directive
  p2
  (Find (S)
  (exists (a b)
    (exists (A B C)
      (&& (= S (area-of (triangle (origin) A B)))
          (= (vec (origin) A) (vec3d 1 0 0))
          (= (vec (origin) B) (vec3d a b 0))
          (= (radius (vec (origin) B)) 1)
          (= (radius (vec (origin) C)) 1)
          (= (inner-prod (vec (origin) A) (vec (origin) B)) (/ 1 3))
          (= (inner-prod (vec (origin) A) (vec (origin) C)) (/ 1 2))
          (= (inner-prod (vec (origin) B) (vec (origin) C)) (/ 5 6))
          (< 0 a)
          (< 0 b))))))

(def-directive
  p3
  (Find (V)
  (exists (a b)
    (exists (A B C)
      (&& (= V (volume-of (tetrahedron (origin) A B C)))
          (= (vec (origin) A) (vec3d 1 0 0))
          (= (vec (origin) B) (vec3d a b 0))
          (= (radius (vec (origin) B)) 1)
          (= (radius (vec (origin) C)) 1)
          (= (inner-prod (vec (origin) A) (vec (origin) B)) (/ 1 3))
          (= (inner-prod (vec (origin) A) (vec (origin) C)) (/ 1 2))
          (= (inner-prod (vec (origin) B) (vec (origin) C)) (/ 5 6))
          (< 0 a)
          (< 0 b))))))

(def-answer p1 (PLam ab (= ab (list-of (/ 1 3) (/ (* 2 (sqrt 2)) 3)))))

(def-answer p2 (PLam S (= S (/ (sqrt 2) 3))))

(def-answer p3 (PLam V (= V (/ (sqrt 2) 18))))

