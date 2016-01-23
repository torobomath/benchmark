;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR107
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C D E F G lD lE)
                (-> (&& (is-acute-triangle A B C)
                        (on D (seg A C))
                        (perpendicular (line B D) (line A C))
                        (on E (seg A B))
                        (perpendicular (line C E) (line A B))
                        (line-type lD)
                        (on D lD)
                        (parallel lD (line A B))
                        (intersect lD (line B C) F)
                        (line-type lE)
                        (on E lE)
                        (parallel lE (line A C))
                        (intersect lE (line B C) G)
                        (exists (P)
                                (&& (intersect (seg E G) (seg F D) P)
                                    (point-inside-of P (triangle A B C)))))
                    (= (rad-of-angle (angle D E G))
                       (rad-of-angle (angle A B C)))))))

(def-directive
  p2
  (Show (forall (A B C D E F G lD lE)
                (-> (&& (is-acute-triangle A B C)
                        (on D (seg A C))
                        (perpendicular (line B D) (line A C))
                        (on E (seg A B))
                        (perpendicular (line C E) (line A B))
                        (line-type lD)
                        (on D lD)
                        (parallel lD (line A B))
                        (intersect lD (line B C) F)
                        (line-type lE)
                        (on E lE)
                        (parallel lE (line A C))
                        (intersect lE (line B C) G)
                        (exists (P)
                                (&& (intersect (seg E G) (seg F D) P)
                                    (point-inside-of P (triangle A B C)))))
                    (exists (Cir)
                            (&& (circle-type Cir)
                                (on D Cir)
                                (on E Cir)
                                (on F Cir)
                                (on G Cir)))))))

