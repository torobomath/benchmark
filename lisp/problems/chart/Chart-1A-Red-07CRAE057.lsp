;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE057
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Find (PC)
        (exists (A B C P g)
                (&& (line-type g)
                    (intersect (line A B) g C)
                    (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) b)
                    (on P g)
                    (maximum
                      (set-by-def
                        (PLam angleAPB
                              (exists (P)
                                      (&& (on P g)
                                          (= angleAPB (rad-of-angle (angle A P B)))))))
                      (rad-of-angle (angle A P B)))
                    (= PC (length-of (seg P C)))))))

(def-answer
  p
  (PLam PC (= PC (sqrt (* b (+ b a))))))

