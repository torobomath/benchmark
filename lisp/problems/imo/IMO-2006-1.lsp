;; DOMAIN:    Geometry, geometric inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2006, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-22
;;
;; <PROBLEM-TEXT>
;; Let ABC be a triangle with incenter I. A point P in the interior of the
;; triangle satisfies
;; angle(PBA) + angle(PCA) = angle(PBC) + angle(PCB).
;; Show that AP >= AI, and that equality holds if and only if P = I.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Show
   (forall (A B C I P)
     (-> (&& (is-triangle A B C)
               (is-incenter-of I (triangle A B C))
               (point-inside-of P (triangle A B C))
               (= (+ (rad-of-angle (angle P B A))
                     (rad-of-angle (angle P C A)))
                  (+ (rad-of-angle (angle P B C))
                     (rad-of-angle (angle P C B)))))
         (>= (length-of (seg A P)) (length-of (seg A I)))))))

(def-directive p2
  (Show
   (forall (A B C I P)
     (-> (&& (is-triangle A B C)
               (is-incenter-of I (triangle A B C))
               (point-inside-of P (triangle A B C))
               (= (+ (rad-of-angle (angle P B A))
                     (rad-of-angle (angle P C A)))
                  (+ (rad-of-angle (angle P B C))
                     (rad-of-angle (angle P C B)))))
           (<-> (= (length-of (seg A P)) (length-of (seg A I)))
                (= P I))))))

