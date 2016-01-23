;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE023
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p11
  (Show (forall (A B C D O P Q R S)
                (-> (&& (is-square A B C D)
                        (intersect (seg A C) (seg B D) O)
                        (on P (seg A B))
                        (perpendicular (line O P) (line A B))
                        (on Q (seg B C))
                        (perpendicular (line O Q) (line B C))
                        (on R (seg C D))
                        (perpendicular (line O R) (line C D))
                        (on S (seg D A))
                        (perpendicular (line O S) (line D A))
                        (perpendicular (line A C) (line B D)))
                    (= (rad-of-angle (angle O P S))
                       (rad-of-angle (angle O A S)))))))

(def-directive
  p12
  (Show (forall (A B C D O P Q R S)
          (-> (&& (is-square A B C D)
                  (intersect (seg A C) (seg B D) O)
                  (on P (seg A B))
                  (perpendicular (line O P) (line A B))
                  (on Q (seg B C))
                  (perpendicular (line O Q) (line B C))
                  (on R (seg C D))
                  (perpendicular (line O R) (line C D))
                  (on S (seg D A))
                  (perpendicular (line O S) (line D A))
                  (perpendicular (line A C) (line B D)))
              (= (rad-of-angle (angle O A S))
                 (rad-of-angle (angle S R D)))))))

(def-directive
  p13
  (Show (forall (A B C D O P Q R S)
                (-> (&& (is-square A B C D)
                        (intersect (seg A C) (seg B D) O)
                        (on P (seg A B))
                        (perpendicular (line O P) (line A B))
                        (on Q (seg B C))
                        (perpendicular (line O Q) (line B C))
                        (on R (seg C D))
                        (perpendicular (line O R) (line C D))
                        (on S (seg D A))
                        (perpendicular (line O S) (line D A))
                        (perpendicular (line A C) (line B D)))
                    (exists (Cir)
                            (&& (circle-type Cir)
                                (on P Cir)
                                (on Q Cir)
                                (on R Cir)
                                (on S Cir)))))))

(def-directive
  p3
  (Show (forall (A B C D O P Q R S)
                (-> (&& (is-square A B C D)
                        (intersect (seg A C) (seg B D) O)
                        (on P (seg A B))
                        (perpendicular (line O P) (line A B))
                        (on Q (seg B C))
                        (perpendicular (line O Q) (line B C))
                        (on R (seg C D))
                        (perpendicular (line O R) (line C D))
                        (on S (seg D A))
                        (perpendicular (line O S) (line D A))
                        (exists (Cir)
                                (&& (circle-type Cir)
                                    (on P Cir)
                                    (on Q Cir)
                                    (on R Cir)
                                    (on S Cir))))
                    (perpendicular (line A C) (line B D))))))

