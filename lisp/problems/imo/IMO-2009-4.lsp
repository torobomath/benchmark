;; DOMAIN:    Geometry, elementary geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2009, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let ABC be a triangle with AB = AC. The angle bisectors of angle(CAB) and
;; angle(ABC) meet the sides BC and CA at D and E, respectively.
;; Let K be the incentre of triangle ADC.
;; Suppose that angle(BEK) = 45 Degree. Find all possible values of angle(CAB).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (CAB)
        (exists (A B C l m D E K)
                (&& (is-triangle A B C)
                    (= (distance A B)
                       (distance A C))
                    (line-type l)
                    (line-type m)
                    (is-angle-bisector l (angle C A B))
                    (is-angle-bisector m (angle A B C))
                    (intersect l (seg B C) D)
                    (intersect m (seg C A) E)
                    (is-incenter-of K (triangle A D C))
                    (= (rad-of-angle (angle B E K)) (* 45 (Degree)))
                    (= CAB (rad-of-angle (angle C A B)))))))

(def-answer p (PLam CAB (|| (= CAB (/ (Pi) 3))
                            (= CAB (/ (Pi) 2)))))

