;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2013, Science Course, Problem 6
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Consider the right circular cylinder with the base radius of $1$ and
;; the height of $\frac{1}{\sqrt{2}}$. Let $O$ be the center of the base
;; circle, and let $AB$ be an arbitrary diameter. Assume that the right
;; circular cylinder is divided into two parts by the plane containing
;; $AB$ and making an angle of $45^{\circ}$ with the base, and let $V$
;; be the part of the smaller volume.
;;
;; (1) Find the area $S(t)$ of the cross section of $V$ by the plane
;; orthogonal to the diameter $AB$ and distance $t$ $(0\le t\le 1)$
;; apart from $O$.
;;
;; (2) Find the value of $V$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (S)
      (let* (
          (r 1)
          (Bottom (disk (origin) r (vec3d 0 0 1)))
          (Top (disk (point 0 0 (/ 1 (sqrt 2))) 1 (vec3d 0 0 1)))
           (C (cylinder Bottom Top))
            )
       (exists (A B P)
         (&&
           (on A (circle (origin) r (vec3d 0 0 1)))
          (on B (circle (origin) r (vec3d 0 0 1)))
          (= (distance A B) (* 2 r))
          (plane-type P)
          (perpendicular (line A B) P)
          (= t (point-shape-distance (origin) P))
          (<= 0 t)
          (<= t 1)
          (= S (area-of (intersection P C))
        ))))))

(def-answer p1 (PLam S (= S (- (/ (sqrt (- 1 (^ t 2))) (sqrt 2)) (/ 1 4)))))

(def-directive
  p2
  (Find (volume)
        (let* (
         (r 1)
         (Bottom (disk (origin) r (vec3d 0 0 1)))
         (Top (disk (point 0 0 (/ 1 (sqrt 2))) 1 (vec3d 0 0 1)))
         (C (cylinder Bottom Top))
         )
    (exists (A B P V1 V2)
      (&&
       (on A (circle (origin) r (vec3d 0 0 1)))
       (on B (circle (origin) r (vec3d 0 0 1)))
       (= (distance A B) (* 2 r))
       (plane-type P)
       (on A P)
       (on B P)
       (lines-intersect-angle P Bottom (* 45 (Degree)))
       (|| (= V1 (intersection (upper-region-of P) C)) (= V1 (intersection (lower-region-of P) C)))
       (|| (= V2 (intersection (upper-region-of P) C)) (= V2 (intersection (lower-region-of P) C)))
       (> (volume-of V1) (volume-of V2))
       (= volume (volume-of V1))
       )))))

(def-directive
  p2V2
  (Find (volume2)
        (let* (
         (r 1)
         (Bottom (disk (origin) r (vec3d 0 0 1)))
         (Top (disk (point 0 0 (/ 1 (sqrt 2))) 1 (vec3d 0 0 1)))
         (C (cylinder Bottom Top))
         )
    (exists (A B P V1 V2)
      (&&
       (on A (circle (origin) r (vec3d 0 0 1)))
       (on B (circle (origin) r (vec3d 0 0 1)))
       (= (distance A B) (* 2 r))
       (plane-type P)
       (on A P)
       (on B P)
       (lines-intersect-angle P Bottom (* 45 (Degree)))
       (= V1 (intersection (upper-region-of P) C))
       (= V2 (intersection (lower-region-of P) C))
       (= volume2 (volume-of V2))
       )))))

(def-answer p2 (PLam volume (= volume (+ (/ (* (sqrt 2) (Pi)) 8) (- (* (/ 5 12) (sqrt 2))) (/ 2 3)))))

(def-answer p2V2 (PLam volume2 (= volume2 (+ (/ (* (sqrt 2) (Pi)) 8) (- (* (/ 5 12) (sqrt 2))) (/ 2 3)))))

(def-answer a1 (PLam S (= S (- (/ (sqrt (- 1 (^ t 2))) (sqrt 2)) (/ 1 4)))))

(def-answer a2 (PLam volume (= volume (+ (/ (* (sqrt 2) (Pi)) 8) (- (* (/ 5 12) (sqrt 2))) (/ 2 3)))))

