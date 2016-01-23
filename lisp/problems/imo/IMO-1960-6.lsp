;; DOMAIN:    Geometry, sphere and other surfaces
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; Consider a cone of revolution with an inscribed sphere tangent to the base
;; of the cone. A cylinder is circumscribed about this sphere so
;; that one of its bases lies in the base of the cone. Let $V_1$ be the volume of
;; the cone and $V_2$ the volume of the cylinder.
;; (a) Prove that $V_1 \neq V_2$ .
;; (b) Find the smallest number $k$ for which $V_1 = kV_2$, for this case, construct
;; the angle subtended by a diameter of the base of the cone at the vertex of
;; the cone.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Show
    (forall (Cn Sp Cl V1 V2)
            (-> (&& (right-cone-type Cn)
                    (sphere-type Sp)
                    (cylinder-type Cl)
                    (is-inscribed-in Sp Cn)
                    (is-inscribed-in Cn Cl)
                    (= (extend-to-plane (base-of Cn))
                       (extend-to-plane (base-of Cl)))
                    (= V1 (volume-of Cn))
                    (= V2 (volume-of Cl)))
                (! (= V1 V2))))))

(def-directive p2_1
  (Find (min_k)
    (minimum
     (set-by-def
      (PLam k
       (exists (Cn Sp Cl V1 V2)
      (&& (right-cone-type Cn)
      (sphere-type Sp)
      (cylinder-type Cl)
      (is-inscribed-in Sp Cn)
            (is-inscribed-in Cn Cl)
      (= (extend-to-plane (base-of Cn))
         (extend-to-plane (base-of Cl)))
      (= V1 (volume-of Cn))
      (= V2 (volume-of Cl))
      (= V1 (* k V2))))))
      min_k)))

(def-answer p2_1 (PLam min_k (= min_k (/ 4 3))))

;;@ NOTE: the answer to p2_2 is used

(def-directive p2_2
  (Find (theta)
        (exists (Cn Sp Cl V1 V2)
                (&& (right-cone-type Cn)
                    (sphere-type Sp)
                    (cylinder-type Cl)
                    (is-inscribed-in Sp Cn)
                    (is-inscribed-in Cn Cl)
                    (= (extend-to-plane (base-of Cn))
                       (extend-to-plane (base-of Cl)))
                    (= V1 (volume-of Cn))
                    (= V2 (volume-of Cl))
                    (= V1 (* (/ 4 3) V2))
                    (exists (P)
                            (&& (on P (boundary-of (base-of Cn)))
                                (= theta (rad-of-angle (angle P
                                                              (vertice-of Cn)
                                                              (center-of (base-of Cn)))))))))))

(def-answer p2_2 (PLam theta (&& (< 0 theta)
                                 (< theta (/ (Pi) 2))
                                 (= (sin theta) (/ 1 3)))))

