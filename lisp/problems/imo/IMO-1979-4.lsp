;; DOMAIN:    Geometry, lines and planes in 3D space
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1979, Problem 4
;; SCORE:     6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-19
;;
;; <PROBLEM-TEXT>
;; Given a plane $\pi$, a point $P$ in this plane and a point $Q$ not in $\pi$,
;; find all points $R$ in $\pi$ such that the ratio $\frac{QP + PR}{QR}$ is a maximum.
;; </PROBLEM-TEXT>

(namespace 3d)

;;@ NOTE: pi is set to xy-plane

(def-directive
  p
  (Find (R_max)
        (exists (pi P Q)
                (&& (= pi (xy-plane))
                    (= P (point Px Py 0))
                    (= Q (point Qx Qy Qz))
                    (! (on Q pi))
                    (on R_max pi)
                    (forall (R)
                            (-> (on R pi)
                                (<= (/ (+ (distance Q P) (distance P R))
                                       (distance Q R))
                                    (/ (+ (distance Q P) (distance P R_max))
                                       (distance Q R_max)))))))))

(def-answer p (PLam R_max (exists (T S)
     (&& (= T (foot-of-perpendicular-line-from-to (point Qx Qy Qz)
                                                  (xy-plane)))
         (|| (&& (! (= T (point Px Py 0)))
                 (point-symmetry S (point Px Py 0) T)
                 (on R_max (line S T))
                 (= (rad-of-angle (angle S (point Qx Qy Qz) R_max))
                    (/ (Pi) 2)))
             (&& (= T (point Px Py 0))
                 (on R_max (circle (point Px Py 0)
                                   (distance (point Qx Qy Qz)
                                             (point Px Py 0))
                                   (vec3d 0 0 1)))))))))

