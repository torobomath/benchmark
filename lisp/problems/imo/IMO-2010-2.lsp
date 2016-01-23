;; DOMAIN:    Geometry, elementary geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2010, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Let I be the incentre of triangle ABC and let Gamma be its circumcircle.
;; Let the line AI intersect Gamma again at D. Let E be a point on the arc BDC
;; and F a point on the side BC such that
;; angle(BAF) = angle(CAE) < 1/2 angle(BAC).
;; Finally, let G be the midpoint of the segment IF.
;; Prove that the lines DG and EI intersect on Gamma.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C I Ga D E F G BDC)
     (-> (&& (is-triangle A B C)
               (is-incenter-of I (triangle A B C))
               (circle-type Ga)
               (is-inscribed-in (triangle A B C) Ga)
               (intersect (line A I) Ga D)
               (! (= D A))
               (on F (seg B C))
               (exists (former later)
                   (= BDC (arc (center-of Ga) (radius-of Ga) former later)))
               (on D BDC)
               (is-arc-node B BDC)
               (is-arc-node C BDC)
               (= (rad-of-angle (angle B A F)) (rad-of-angle (angle C A E)))
               (< (rad-of-angle (angle C A E)) (* (/ 1 2) (rad-of-angle (angle B A C))))
               (= (seg-midpoint-of (seg I F)) G))
           (exists (X)
               (&& (intersect (line D G) (line E I) X)
                 (on X Ga)))))))

