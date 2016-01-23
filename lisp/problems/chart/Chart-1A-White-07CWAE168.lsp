;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE168
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (x)
    (exists (A P B C D Q)
            (&& (points-same-side (line A B) (list-of C D))
                (on P (seg A B))
                (intersect (seg C B) (seg D A) Q)
                (= (* 40 (Degree))
                   (rad-of-angle (angle C P A)))
                (= (* 40 (Degree))
                   (rad-of-angle (angle D P B)))
                (= x (rad-of-angle (angle A Q B)))))))

(def-directive
  p2
  (Find (y)
    (exists (A B C D E M)
      (&& (on E (seg A B))
          (on D (seg A C))
          (= M (midpoint-of B C))
          (= (* 40 (Degree))
             (rad-of-angle (angle E M D)))
          (= y (rad-of-angle (angle E A D)))))))

(def-answer p1 (PLam x (= x (* 140 (Degree)))))

(def-answer p2 (PLam y (= y (* 70 (Degree)))))

