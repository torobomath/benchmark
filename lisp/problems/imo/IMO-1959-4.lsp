;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 4
;; SCORE:     5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-29
;;
;; <PROBLEM-TEXT>
;; Construct a right triangle with given hypotenuse $c$ such that the median
;; drawn to the hypotenuse is the geometric mean of the two legs
;; of the triangle.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (X)
        (exists (A B C)
                (&& (is-triangle A B C)
                    (= X (triangle A B C))
                    (is-right (angle A B C))
                    (> c 0)
                    (= (distance A C) c)
                    (= (distance^2 B (midpoint-of A C))
                       (* (distance A B) (distance B C)))))))

(def-answer p (PLam X (exists (alpha beta c0 c1)
                              (&& (= (+ (^ alpha 2) (^ beta 2)) 1)
                                  (> c 0)
                                  (|| (= X (triangle (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                      (vec2d (- (/ c 2)) 0))
                                                         )
                                                     (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                           (vec2d (/ c 2) 0))
                    )
                                                     (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                           (vec2d (* (/ (sqrt 3) 4) c) (/ c 4)))
                    )))
                                      (= X (triangle (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                           (vec2d (- (/ c 2)) 0))
                    )
                                                     (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                           (vec2d (/ c 2) 0))
                    )
                                                     (vec-translate (point c0 c1) (mv* (matrix alpha (- beta) beta alpha)
                           (vec2d (- (* (/ (sqrt 3) 4) c)) (/ c 4)))
                    ))))))))

