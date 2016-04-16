;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2005, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Consider the quadrilateral $ABCD$ whose interior angles are all
;; smaller than $180^{\circ}$. Let the side lengths $AB = BC = r$, and
;; $AD = 2 r$. Assume that the point $E$ is on the side $CD$, and the
;; areas of the three triangles $\triangle ABC$, $\triangle ACE$, and
;; $\triangle ADE$ are all the same. Let ${\alpha} =\angle BAC$ and
;; ${\beta} =\angle CAD$.
;;
;; (1) Prove that ${\alpha} = {\beta}$.
;;
;; (2) Assuming that $\cos\angle DAB =\frac{3}{5}$, find the value of
;; $\sin\angle CAE$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C D E r alpha beta)
                (-> (&& (is-square A B C D)
                        (is-acute (angle A B C))
                        (is-acute (angle B C D))
                        (is-acute (angle C D A))
                        (is-acute (angle D A B))
                        (= (distance A B) r)
                        (= (distance B C) r)
                        (= (distance A D) (* 2 r))
                        (on E (seg C D))
                        (= (area-of (triangle A B C))
                           (area-of (triangle A C E)))
                        (= (area-of (triangle A C E))
                           (area-of (triangle A D E)))
                        (= alpha (angle B A C))
                        (= beta (angle C A D)))
                    (same-angle alpha beta)))))

(def-directive
  p2
  (Find (sin_CAE)
        (exists (A B C D E r)
                (&& (is-square A B C D)
                    (< 0 (sin-of-angle (angle A B C)))
                    (< 0 (sin-of-angle (angle B C D)))
                    (< 0 (sin-of-angle (angle C D A)))
                    (< 0 (sin-of-angle (angle D A B)))
                    (= (distance A B) r)
                    (= (distance B C) r)
                    (= (distance A D) (* 2 r))
                    (on E (seg C D))
                    (= (area-of (triangle A B C))
                       (area-of (triangle A C E)))
                    (= (area-of (triangle A C E))
                       (area-of (triangle A D E)))
                    (= (/ 3 5) (cos-of-angle (angle D A B)))
                    (= sin_CAE (sin-of-angle (angle C A E)))))))

(def-answer p2 (PLam sin_CAE (= sin_CAE (/ 1 (sqrt 17)))))

