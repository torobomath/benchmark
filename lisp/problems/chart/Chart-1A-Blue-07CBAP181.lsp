;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP181
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Find (angleBDC)
    (exists (A B C D E Cir)
      (&& (circle-type Cir)
          (is-square A B C D)
          (on A Cir)
          (on B Cir)
          (on C Cir)
          (on D Cir)
          (on D (seg A E))
          (on C (seg B E))
          (= (* 76 (Degree))
             (rad-of-angle (angle B A D)))
          (= angleBDC (rad-of-angle (angle B D C)))))))

(def-answer p (PLam angleBDC (= angleBDC (* 50 (Degree)))))

