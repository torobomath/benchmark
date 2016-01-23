;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR087
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D E)
                (-> (&& (is-triangle A B C)
                        (< (length-of (seg A B)) (length-of (seg A C)))
                        (on D (seg A B))
                        (! (= A D))
                        (! (= B D))
                        (on C (seg A E))
                        (= (length-of (seg B D)) (length-of (seg C E))))
                    (> (length-of (seg D E)) (length-of (seg B C)))))))

