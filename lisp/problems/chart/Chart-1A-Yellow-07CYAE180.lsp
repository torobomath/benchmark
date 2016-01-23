;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE180
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (Cir A B C D E F P Q)
                (-> (&& (circle-type Cir)
                        (is-square A B C D)
                        (is-inscribed-in (square A B C D) Cir)
                        (intersect (line A B) (line C D) E)
                        (intersect (line B C) (line A D) F)
                        (tangent (line E P) Cir P)
                        (tangent (line F Q) Cir Q))
                    (= (+ (^ (length-of (seg E P)) 2)
                          (^ (length-of (seg F Q)) 2))
                       (^ (length-of (seg E F)) 2))))))

