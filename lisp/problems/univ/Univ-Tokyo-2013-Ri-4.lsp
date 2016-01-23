;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2013-11-21
;;
;; <PROBLEM-TEXT>
;; For $\triangle ABC$, assume that $\angle BAC = 90^{\circ}$,
;; $|\vec{AB}|=1$, and $|\vec{AC}|=\sqrt{3}$. Assume that the point $P$
;; on the inside of $\triangle ABC$ satisfies
;; $\frac{\vec{PA}}{|\vec{PA}|}+\frac{\vec{PB}}{|\vec{PB}|}+\frac{\vec{PC}}{|\vec{PC}|}=\vec{0}$.
;;
;; (1) Find $\angle APB$ and $\angle APC$.
;;
;; (2) Find $|\vec{PA}|$, $|\vec{PB}|$, and $|\vec{PC}|$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p0
  (Find (P)
        (let* ((A (point 0 0))
               (B (point 1 0))
               (C (point 0 (^ 3 (/ 1 2)))))
          (&& (point-inside-of P (triangle A B C))
              (= (zero-vector) (v+ (sv* (/ 1 (distance P A)) (vec P A))
                          (v+ (sv* (/ 1 (distance P B)) (vec P B))
                              (sv* (/ 1 (distance P C)) (vec P C)))))))))

(def-directive
  p1
  (Find (angles)
    (let* ((A (point 0 0))
           (B (point 1 0))
           (C (point 0 (^ 3 (/ 1 2)))))
      (exists (P) (&& (point-inside-of P (triangle A B C))
          (= (zero-vector) (v+ (sv* (/ 1 (distance P A)) (vec P A))
                   (v+ (sv* (/ 1 (distance P B)) (vec P B))
                 (sv* (/ 1 (distance P C)) (vec P C)))))
          (= angles (list-of (cos-of-angle (angle A P B))
                 (cos-of-angle (angle A P C)))))))))

(def-directive
  p2
  (Find (lengths)
  (let* ((A (point 0 0))
         (B (point 1 0))
         (C (point 0 (^ 3 (/ 1 2)))))
    (exists (P) (&& (point-inside-of P (triangle A B C))
        (= (zero-vector) (v+ (sv* (/ 1 (distance P A)) (vec P A))
            (v+ (sv* (/ 1 (distance P B)) (vec P B))
                (sv* (/ 1 (distance P C)) (vec P C)))))
        (= lengths (list-of (distance P A)
                (distance P B)
                (distance P C))))))))

(def-answer p0 (PLam P (= P (point (/ 2 7) (/ (sqrt 3) 7)))))

(def-answer p1 (PLam angles (= angles (list-of (/ -1 2) (/ -1 2)))))

(def-answer p2 (PLam lengths (= lengths (list-of (/ 1 (sqrt 7))
                                                 (/ 2 (sqrt 7))
                                                 (/ 4 (sqrt 7))))))

