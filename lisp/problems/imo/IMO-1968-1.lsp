;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 1968, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Prove that there is one and only one triangle whose side lengths
;; are consecutive integers, and one of whose angles is twice as large
;; as another.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
 p
 (Show
   (exists (a A B C)
    (&& (= (length-of (seg A B)) (int->real a))
          (= (length-of (seg B C)) (+ (int->real a) 1))
          (= (length-of (seg A C)) (+ (int->real a) 2))
          (is-triangle A B C)
          (exists (Ang1 Ang2)
             (&& (|| (= Ang1 (angle A B C))
                     (= Ang1 (angle B C A))
                     (= Ang1 (angle C A B)))
                 (|| (= Ang2 (angle A B C))
                     (= Ang2 (angle B C A))
                     (= Ang2 (angle C A B)))
                 (= (rad-of-angle Ang1) (* 2 (rad-of-angle Ang2)))))
          (forall (b A1 B1 C1)
            (-> (&& (= (length-of (seg A1 B1)) (int->real b))
                    (= (length-of (seg B1 C1)) (+ (int->real b) 1))
                    (= (length-of (seg A1 C1)) (+ (int->real b) 2))
                    (is-triangle A1 B1 C1)
                    (exists (Ang1 Ang2)
                            (&& (|| (= Ang1 (angle A1 B1 C1))
                                    (= Ang1 (angle B1 C1 A1))
                                    (= Ang1 (angle C1 A1 B1)))
                                (|| (= Ang2 (angle A1 B1 C1))
                                    (= Ang2 (angle B1 C1 A1))
                                    (= Ang2 (angle C1 A1 B1)))
                                (= (rad-of-angle Ang1) (* 2 (rad-of-angle Ang2))))))
                 (= b a)))))))

