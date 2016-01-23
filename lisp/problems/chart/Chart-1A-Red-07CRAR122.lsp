;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR122
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D L M N P Q Cir)
                (-> (&& (circle-type Cir)
                        (is-square A B C D)
                        (on A Cir)
                        (on B Cir)
                        (on C Cir)
                        (on D Cir)
                        (= L (midpoint-of A B))
                        (= M (midpoint-of B C))
                        (= N (midpoint-of A D))
                        (intersect (line A D) (line L M) P)
                        (intersect (line B C) (line L N) Q))
                    (exists (Cir2)
                            (&& (circle-type Cir2)
                                (on M Cir2)
                                (on N Cir2)
                                (on P Cir2)
                                (on Q Cir2)))))))

