;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2005, Science Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; For the points $A$, $B$, $C$, and $D$ in a space, let $AB = 1$,
;; $AC = 2$, $AD = 3$ $\angle BAC =\angle CAD = 60^{\circ}$, and
;; $\angle DAB = 90^{\circ}$. Let $E$ be the point equidistant from
;; these four points. Find the length of the line segment $AE$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (AE)
        (exists (A B C D E)
                (&& (= (distance A B) 1)
                    (= (distance A C) 2)
                    (= (distance A D) 3)
                    (= (rad-of-angle (angle B A C)) (/ (Pi) 3))
                    (= (rad-of-angle (angle C A D)) (/ (Pi) 3))
                    (= (rad-of-angle (angle D A B)) (/ (Pi) 2))
                    (= (distance E A) (distance E B))
                    (= (distance E B) (distance E C))
                    (= (distance E C) (distance E D))
                    (= AE (distance A E))))))

(def-answer p (PLam AE (= AE (/ (sqrt 10) 2))))

