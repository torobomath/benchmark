;; DOMAIN:    Geometry, elementary geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2009, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let ABC be a triangle with circumcentre O. The points P and Q are interior
;; points of the sides CA and AB, respectively. Let K, L and M be the midpoints
;; of the segments BP, CQ and PQ, respectively, and let Gamma be the circle
;; passing through K, L and M. Suppose that the line PQ is tangent to the circle
;; Gamma. Prove that OP = OQ.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C O P Q K L M Gamma)
                (-> (&& (is-triangle A B C)
                        (is-circumcenter-of O (triangle A B C))
                        (on P (seg C A))
                        (on Q (seg A B))
                        (! (= P C))
                        (! (= P A))
                        (! (= Q A))
                        (! (= Q B))
                        (= K (midpoint-of B P))
                        (= L (midpoint-of C Q))
                        (= M (midpoint-of P Q))
                        (circle-type Gamma)
                        (on K Gamma)
                        (on L Gamma)
                        (on M Gamma)
                        (tangent Gamma (line P Q)))
                    (= (distance O P) (distance O Q))))))

