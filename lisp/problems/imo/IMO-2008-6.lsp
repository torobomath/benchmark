;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2008, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-22
;;
;; <PROBLEM-TEXT>
;; Let ABCD be a convex quadrilateral with |BA| != |BC|. Denote the incircles
;; of triangles ABC and ADC by omega1 and omega2 respectively. Suppose that
;; there exists a circle omega tangent to the ray BA beyond A and to the ray
;; BC beyond C, which is also tangent to the lines AD and CD.
;; Prove that the common external tangents of omega1 and omega2 intersect on
;; omega.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D Om1 Om2 Om)
     (-> (&& (is-square A B C D)
               (! (= (length-of (seg A B)) (length-of (seg B C))))
               (circle-type Om1)
               (circle-type Om2)
               (is-inscribed-in Om1 (triangle A B C))
               (is-inscribed-in Om2 (triangle A D C))
               (circle-type Om)
               (tangent (line A D) Om)
               (tangent (line C D) Om)
               (exists (P) (&& (tangent (half-line B A) Om P)
                               (! (on P (seg B A)))))
               (exists (P) (&& (tangent (half-line B C) Om P)
                               (! (on P (seg B C))))))
           (exists (l1 l2 P)
              (&& (line-type l1)
                  (line-type l2)
                  (! (= l1 l2))
                  (tangent l1 Om1)
                  (tangent l1 Om2)
                  (tangent l2 Om1)
                  (tangent l2 Om2)
                  (intersect l1 l2 P)
                  (on P Om)))))))

