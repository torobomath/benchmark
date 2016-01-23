;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1968, Problem 4
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Prove that in every tetrahedron there is a vertex such that the three edges
;; meeting there have lengths which are the sides of a triangle.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Show
   (forall (A B C D)
     (-> (is-tetrahedron A B C D)
         (exists (P Q R)
             (&& (is-triangle P Q R)
                 (|| (&& (= (distance P Q) (distance A B))
                         (= (distance Q R) (distance A C))
                         (= (distance R P) (distance A D)))
                     (&& (= (distance P Q) (distance B A))
                         (= (distance Q R) (distance B B))
                         (= (distance R P) (distance B D)))
                     (&& (= (distance P Q) (distance C A))
                         (= (distance Q R) (distance C B))
                         (= (distance R P) (distance C D)))
                     (&& (= (distance P Q) (distance D A))
                         (= (distance Q R) (distance D B))
                         (= (distance R P) (distance D C))))))))))

