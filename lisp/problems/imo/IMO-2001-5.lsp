;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2001, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; In a triangle ABC, let AP bisect angle(BAC), with P on BC,
;; and let BQ bisect angle(ABC), with Q on CA.
;; It is known that angle(BAC) = 60 Degree and that AB + BP = AQ + QB.
;; What are the possible angles of triangle ABC?
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (angles)
        (exists (A B C P Q)
                (&& (is-triangle A B C)
                    (on P (seg B C))
                    (is-angle-bisector (line A P) (angle B A C))
                    (on Q (seg C A))
                    (is-angle-bisector (line B Q) (angle A B C))
                    (= (rad-of-angle (angle B A C)) (/ (Pi) 3))
                    (= (+ (distance A B) (distance B P))
                       (+ (distance A Q) (distance Q B)))
                    (= angles (list-of (rad-of-angle (angle C A B))
                                       (rad-of-angle (angle A B C))
                                       (rad-of-angle (angle B C A))))))))

(def-answer p (PLam angles (= angles (list-of (/ (Pi) 3) (* (/ 4 9) (Pi)) (* (/ 2 9) (Pi))))))

