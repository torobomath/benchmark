;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2012, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-17
;;
;; <PROBLEM-TEXT>
;; Given triangle ABC the point J is the centre of the excircle opposite the
;; vertex A. This excircle is tangent to the side BC at M, and to the lines AB
;; and AC at K and L, respectively. The lines LM and BJ meet at F, and the lines
;; KM and CJ meet at G. Let S be the point of intersection of the lines AF and
;; BC, and let T be the point of intersection of the lines AG and BC. Prove that
;; M is the midpoint of ST.
;; (The excircle of ABC opposite the vertex A is the circle that is tangent to
;; the line segment BC, to the ray AB beyond B, and to the ray AC beyond C.)
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C E J M K L F G S T)
     (-> (&& (is-triangle A B C)
               (circle-type E)
               (is-excircle-of E (triangle A B C) A)
               (= J (center-of E))
               (tangent E (seg B C) M)
               (tangent (line A B) E K)
               (tangent (line A C) E L)
               (intersect (line L M) (line B J) F)
               (intersect (line K M) (line C J) G)
               (intersect (line A F) (line B C) S)
               (intersect (line A G) (line B C) T))
         (= M (seg-midpoint-of (seg S T)))))))

