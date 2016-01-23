;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2013, Humanities Course, Problem 2
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; For the tetrahedron $OABC$, assume that $OA = OB = OC = 1$. Assume
;; that $\angle AOB = 60^{\circ}$, $\angle BOC = 45^{\circ}$,
;; $\angle COA = 45^{\circ}$, and $\vec{a} =\vec{OA}$,
;; $\vec{b} =\vec{OB}$, $\vec{c} =\vec{OC}$. Draw a perpendicular from
;; the point $C$ to the face $OAB$, and let $H$ be the foot of the
;; perpendicular.
;;
;; (1) Represent the vector $\vec{OH}$ using $\vec{a}$ and $\vec{b}$.
;;
;; (2) Find the length of $CH$.
;;
;; (3) Find the volume of the tetrahedron $OABC$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (answer)
    (exists (O A B C H c1 c2) (&&
      (= answer (list-of c1 c2))
      (= (vec O H) (v+ (sv* c1 (vec O A)) (sv* c2 (vec O B))))
      (= (distance O A) 1)
      (= (distance O B) 1)
      (= (distance O C) 1)
      (= (cos-of-angle (angle A O B)) (/ 1 2))
      (= (cos-of-angle (angle B O C)) (/ 1 (sqrt 2)))
      (= (cos-of-angle (angle C O A)) (/ 1 (sqrt 2)))
      (= H (foot-of-perpendicular-line-from-to C (plane1 O A B)))
    ))))

(def-directive
  p2
   (Find (CH)
    (exists (O A B C H) (&&
      (= CH (distance C H))
      (= (distance O A) 1)
      (= (distance O B) 1)
      (= (distance O C) 1)
      (= (cos-of-angle (angle A O B)) (/ 1 2))
      (= (cos-of-angle (angle B O C)) (/ 1 (sqrt 2)))
      (= (cos-of-angle (angle C O A)) (/ 1 (sqrt 2)))
      (= H (foot-of-perpendicular-line-from-to C (plane1 O A B)))
    ))))

(def-directive
  p3
   (Find (V)
    (exists (O A B C) (&&
      (= V (volume-of (tetrahedron O A B C)))
      (= (distance O A) 1)
      (= (distance O B) 1)
      (= (distance O C) 1)
      (= (cos-of-angle (angle A O B)) (/ 1 2))
      (= (cos-of-angle (angle B O C)) (/ 1 (sqrt 2)))
      (= (cos-of-angle (angle C O A)) (/ 1 (sqrt 2)))
    ))))

(def-answer p1 (PLam answer (= answer (list-of (/ (sqrt 2) 3) (/ (sqrt 2) 3)))))

(def-answer p2 (PLam CH (= CH (/ 1 (sqrt 3)))))

(def-answer p3 (PLam V (= V (/ 1 12))))

