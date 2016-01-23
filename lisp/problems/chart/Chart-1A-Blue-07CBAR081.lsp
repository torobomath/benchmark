;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR081
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C G O H)
                (-> (&& (is-triangle A B C)
                        (is-center-of-gravity-of G (triangle A B C))
                        (is-circumcenter-of O (triangle A B C))
                        (is-orthocenter-of H (triangle A B C)))
                    (&& (colinear G O H)
                        (divide-internally G (seg O H) 1 2))))))

