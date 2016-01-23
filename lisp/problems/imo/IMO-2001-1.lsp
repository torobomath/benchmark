;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2001, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; Let ABC be an acute-angled triangle with circumcentre O.
;; Let P on BC be the foot of the altitude from A.
;; Suppose that angle(BCA) >= angle(ABC) + 30 Degree.
;; Prove that angle(CAB) + angle(COP) < 90 Degree.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C O P)
                (-> (&& (is-acute-triangle A B C)
                        (is-circumcenter-of O (triangle A B C))
                        (on P (seg B C))
                        (perpendicular (line A P) (line B C))
                        (>= (rad-of-angle (angle B C A))
                            (+ (rad-of-angle (angle A B C))
                               (/ (Pi) 6))))
                    (< (+ (rad-of-angle (angle C A B))
                          (rad-of-angle (angle C O P)))
                       (/ (Pi) 2))))))

