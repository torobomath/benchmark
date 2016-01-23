;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP208
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Show
    (forall (O r C P l A B Q la lb H)
            (-> (&& (circle-type C)
                    (= O (center-of C))
                    (= r (radius-of C))
                    (point-outside-of P C)
                    (line-type l)
                    (on P l)
                    (intersect l C A)
                    (intersect l C B)
                    (! (= A B))
                    (line-type la)
                    (tangent la C A)
                    (line-type lb)
                    (tangent lb C B)
                    (intersect la lb Q)
                    (on H (line O P))
                    (perpendicular (line Q H) (line O P)))
                (! (= O H))))))

(def-directive
  p2
  (Show
    (forall (O r C P l A B Q la lb H)
            (-> (&& (circle-type C)
                    (= O (center-of C))
                    (= r (radius-of C))
                    (point-outside-of P C)
                    (line-type l)
                    (on P l)
                    (intersect l C A)
                    (intersect l C B)
                    (! (= A B))
                    (line-type la)
                    (tangent la C A)
                    (line-type lb)
                    (tangent lb C B)
                    (intersect la lb Q)
                    (on H (line O P))
                    (perpendicular (line Q H) (line O P)))
                (exists (Cir)
                        (&& (circle-type Cir)
                            (on Q Cir)
                            (on A Cir)
                            (on H Cir)
                            (on O Cir)
                            (on B Cir)))))))

(def-directive
  p3
  (Show
    (forall (O r C P l A B Q la lb H)
            (-> (&& (circle-type C)
                    (= O (center-of C))
                    (= r (radius-of C))
                    (point-outside-of P C)
                    (line-type l)
                    (on P l)
                    (intersect l C A)
                    (intersect l C B)
                    (! (= A B))
                    (line-type la)
                    (tangent la C A)
                    (line-type lb)
                    (tangent lb C B)
                    (intersect la lb Q)
                    (on H (line O P))
                    (perpendicular (line Q H) (line O P)))
                (= (* (length-of (seg P H)) (length-of (seg P O)))
                   (- (^ (length-of (seg P O)) 2) (^ r 2)))))))

(def-directive
  p4
  (Show
    (forall (O r C P l A B Q lA lB H)
            (-> (&& (circle-type C)
                    (= O (center-of C))
                    (= r (radius-of C))
                    (point-outside-of P C)
                    (line-type l)
                    (on P l)
                    (intersect l C A)
                    (intersect l C B)
                    (! (= A B))
                    (line-type lA)
                    (tangent lA C A)
                    (line-type lB)
                    (tangent lB C B)
                    (intersect lA lB Q)
                    (on H (line O P))
                    (perpendicular (line Q H) (line O P)))
                (forall (T R S lR lS)
                    (-> (&& (on T (line Q H))
                            (point-outside-of T C)
                            (tangent lR C R)
                            (tangent lS C S)
                            (! (= R S)))
                        (on P (line R S))))))))

