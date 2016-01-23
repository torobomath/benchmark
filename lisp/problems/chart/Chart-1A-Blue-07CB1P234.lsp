;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P234
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Find (ans)
        (exists (A B C D)
                (&& (vec-same-direction (vec A C) (vec (origin) (point -1 0)))
                    (> 0 (vec-x-coord (vec A B)))
                    (< 0 (vec-y-coord (vec A B)))
                    (= (rad-of-angle (angle B A C)) (* 30 (Degree)))
                    (= (rad-of-angle (angle A C B)) (* 30 (Degree)))
                    (= 500 (length-of (seg A B)))
                    (> 0 (vec-x-coord (vec A D)))
                    (> 0 (vec-y-coord (vec A D)))
                    (= (rad-of-angle (angle A D B)) (* 60 (Degree)))
                    (= (rad-of-angle (angle A B D)) (* 45 (Degree)))
                    (= ans (list-of (length-of (seg A C))
                                    (length-of (seg A D))
                                    (length-of (seg D C))))))))

(def-answer
  p
  (PLam ans (= ans (list-of (* 500 (sqrt 3))
                            (/ (* 500 (sqrt 6)) 3)
                            (/ (* 500 (sqrt 15)) 3)))))

