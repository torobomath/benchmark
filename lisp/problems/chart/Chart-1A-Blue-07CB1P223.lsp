;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P223
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Find (cR)
        (exists (A B C R a c Cir)
                (&& (circle-type Cir)
                    (is-inscribed-in (triangle A B C) Cir)
                    (= R (radius-of Cir))
                    (= (* 60 (Degree)) (rad-of-angle (angle C A B)))
                    (= (* 45 (Degree)) (rad-of-angle (angle B C A)))
                    (= a (length-of (seg B C)))
                    (= a 3)
                    (= c (length-of (seg A B)))
                    (= cR (list-of c R))))))

(def-directive
  p2
  (Find (AC)
        (exists (A B C R a Cir)
                (&& (circle-type Cir)
                    (is-inscribed-in (triangle A B C) Cir)
                    (= R (radius-of Cir))
                    (= a (length-of (seg B C)))
                    (= a (sqrt 2))
                    (= (* 50 (Degree)) (rad-of-angle (angle A B C)))
                    (= R 1)
                    (= AC (list-of (rad-of-angle (angle B A C))
                                   (rad-of-angle (angle B C A))))))))

(def-answer
  p1
  (PLam cR (= cR (list-of (sqrt 6) (sqrt 3)))))

(def-answer
  p2
  (PLam AC (= AC (list-of (* 45 (Degree)) (* 85 (Degree))))))

