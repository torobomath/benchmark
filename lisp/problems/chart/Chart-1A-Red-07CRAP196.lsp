;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP196
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (theta)
        (exists (A B C D P Q Cir)
                (&& (circle-type Cir)
                    (is-square A B C D)
                    (point-outside-of P Cir)
                    (point-outside-of Q Cir)
                    (on A Cir)
                    (on B Cir)
                    (on C Cir)
                    (on D Cir)
                    (intersect (line A B) (line D C) Q)
                    (intersect (line A D) (line B C) P)
                    (= (* 35 (Degree))
                       (rad-of-angle (angle A Q D)))
                    (= (* 25 (Degree))
                       (rad-of-angle (angle A P B)))
                    (= theta
                       (rad-of-angle (angle B C D)))))))

(def-directive
  p2
  (Find (theta)
        (exists (A B C D)
                (&& (is-square A B C D)
                    (= (* 90 (Degree))
                       (rad-of-angle (angle B A D)))
                    (= (* 90 (Degree))
                       (rad-of-angle (angle B C D)))
                    (= (length-of (seg B C))
                       (length-of (seg C D)))
                    (= theta
                       (rad-of-angle (angle C A D)))))))

(def-answer p1 (PLam theta (= theta (* 60 (Degree)))))

(def-answer p2 (PLam theta (= theta (* 45 (Degree)))))

