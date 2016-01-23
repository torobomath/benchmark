;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR091
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C H)
                (-> (&& (is-triangle A B C)
                        (on H (line B C))
                        (perpendicular (line A H) (line B C)))
                    (= (- (^ (length-of (seg A B)) 2) (^ (length-of (seg A C)) 2))
                       (- (^ (length-of (seg B H)) 2) (^ (length-of (seg C H)) 2)))))))

(def-directive
  p2
  (Show (forall (A B C D E)
                (-> (&& (is-triangle A B C)
                        (divide-internally D (seg B C) 1 2)
                        (divide-internally E (seg B C) 2 1))
                    (= (+ (* 2 (^ (length-of (seg A B)) 2))
                          (^ (length-of (seg A C)) 2))
                       (+ (* 3 (^ (length-of (seg A D)) 2))
                          (* 6 (^ (length-of (seg B D)) 2))))))))

