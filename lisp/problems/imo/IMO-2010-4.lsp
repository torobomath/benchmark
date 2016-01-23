;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2010, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Let P be a point inside the triangle ABC. The lines AP, BP and CP intersect
;; the circumcircle Gamma of triangle ABC again at the points K, L and M
;; respectively. The tangent to Gamma at C intersects the line AB at S.
;; Suppose that SC = SP . Prove that MK = ML.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C P K L M Ga L2 S)
     (-> (&& (is-triangle A B C)
               (point-inside-of P (triangle A B C))
               (circle-type Ga)
               (is-inscribed-in (triangle A B C) Ga)
               (intersect (line A P) Ga K)
               (! (= K A))
               (intersect (line B P) Ga L)
               (! (= L B))
               (intersect (line C P) Ga M)
               (! (= M C))
               (line-type L2)
               (tangent Ga L2 C)
               (intersect L2 (line A B) S)
               (= (length-of (seg S C)) (length-of (seg S P))))
         (= (length-of (seg M K)) (length-of (seg M L)))))))

