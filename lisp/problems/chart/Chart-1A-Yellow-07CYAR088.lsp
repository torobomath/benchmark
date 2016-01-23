;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR088
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (Cir1 Cir2 A B C D E T)
                (-> (&& (circle-type Cir1)
                        (circle-type Cir2)
                        (is-inscribed-in Cir1 Cir2)
                        (tangent Cir1 (line T A) A)
                        (tangent Cir2 (line T A) A)
                        (! (= A B))
                        (! (= A C))
                        (! (= A D))
                        (! (= A E))
                        (on D Cir1)
                        (on E Cir1)
                        (on B Cir2)
                        (on C Cir2)
                        (colinear A D B)
                        (colinear A E C))
                    (= (/ (length-of (seg A D)) (length-of (seg A B)))
                       (/ (length-of (seg A E)) (length-of (seg A C))))))))

