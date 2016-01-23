;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR069
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (A B P Q G1 G2)
                (-> (&& (points-same-side (line A B) (list-of P Q))
                        (is-center-of-gravity-of G1 (triangle P A B))
                        (is-center-of-gravity-of G2 (triangle Q A B)))
                    (parallel (line G1 G2) (line P Q))))))

