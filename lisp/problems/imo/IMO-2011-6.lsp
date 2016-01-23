;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2011, Problem 6
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let ABC be an acute triangle with circumcircle Gamma.
;; Let l be a tangent line to Gamma, and let la, lb and lc be the lines
;; obtained by reflecting l in the lines BC, CA and AB, respectively. Show that
;; the circumcircle of the triangle determined by the lines la, lb and lc
;; is tangent to the circle Gamma.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C Gamma l la lb lc S D E F)
                (-> (&& (is-acute-triangle A B C)
                        (circle-type Gamma)
                        (is-inscribed-in (triangle A B C) Gamma)
                        (line-type l)
                        (tangent l Gamma)
                        (line-symmetry-shapes la l (line B C))
                        (line-symmetry-shapes lb l (line C A))
                        (line-symmetry-shapes lc l (line A B))
                        (circle-type S)
                        (intersect la lb D)
                        (intersect lb lc E)
                        (intersect lc la F)
                        (is-inscribed-in (triangle D E F) S))
                    (tangent S Gamma)))))

