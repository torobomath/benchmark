;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP153
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D P Q R)
                (-> (&& (parallel (line A B) (line C D))
                        (on Q (line A B))
                        (on R (line C D))
                        (! (intersect (seg P Q) (line C D)))
                        (! (intersect (seg P R) (line A B))))
                    (= (rad-of-angle (angle Q P R))
                       (+ (rad-of-angle (angle A Q P))
                          (rad-of-angle (angle C R P))))))))

