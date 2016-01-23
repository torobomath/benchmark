;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1966, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Prove: The sum of the distances of the vertices of a regular tetrahedron from
;; the center of its circumscribed sphere is less than the sum of the
;; distances of these vertices from any other point in space.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Show
    (forall (A B C D K Kc P)
            (-> (&& (is-regular-tetrahedron A B C D)
                    (sphere-type K)
                    (on A K) (on B K) (on C K) (on D K)
                    (= Kc (center-of K)))
                (< (+ (length-of (seg Kc A))
                      (length-of (seg Kc B))
                      (length-of (seg Kc C))
                      (length-of (seg Kc D)))
                   (+ (length-of (seg P A))
                      (length-of (seg P B))
                      (length-of (seg P C))
                      (length-of (seg P D))))))))

