;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1975, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-22
;;
;; <PROBLEM-TEXT>
;; On the sides of an arbitrary triangle $ABC$, triangles $ABR$, $BCP$, $CAQ$ are
;; constructed externally with $\angle CBP = \angle CAQ = 45^{\circ}$,
;; $\angle BCP = \angle ACQ = 30^{\circ}$,
;; $\angle ABR = \angle BAR = 15^{\circ}$.
;; Prove that $\angle QRP = 90^{\circ}$ and $QR = RP$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C R P Q)
     (-> (&& (is-triangle A B C)
               (is-triangle A B R)
               (is-triangle B C P)
               (is-triangle C A Q)
               (= (rad-of-angle (angle C B P)) (rad-of-angle (angle C A Q)))
               (= (rad-of-angle (angle C A Q)) (* 45 (Degree)))
               (= (rad-of-angle (angle B C P)) (rad-of-angle (angle A C Q)))
               (= (rad-of-angle (angle A C Q)) (* 30 (Degree)))
               (= (rad-of-angle (angle a B R)) (rad-of-angle (angle B A R)))
               (= (rad-of-angle (angle A B R)) (* 15 (Degree)))
               (point-outside-of P (triangle A B C))
               (point-outside-of Q (triangle A B C))
               (point-outside-of R (triangle A B C)))
           (&& (= (rad-of-angle (angle Q R P)) (* 90 (Degree)))
               (= (length-of (seg Q R)) (length-of (seg R P))))))))

