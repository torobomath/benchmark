;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1970, Problem 5
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; In the tetrahedron $ABCD$, angle $BDC$ is a right angle. Suppose that the
;; foot $H$ of the perpendicular from $D$ to the plane $ABC$ is the intersection of
;; the altitudes of $\triangle ABC$. Prove that\[
;; (AB+BC+CA)^2 \leq 6(AD^2 + BD^2 + CD^2).
;; \]For what tetrahedra does equality hold?
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Show
   (forall (A B C D P)
     (-> (&& (is-tetrahedron A B C D)
               (perpendicular (line B D) (line C D))
               (= (foot-of-perpendicular-line-from-to D (plane1 A B C)) P)
               (perpendicular (line A P) (line B C))
               (perpendicular (line B P) (line A C))
               (perpendicular (line C P) (line A B)))
         (<= (^ (+ (length-of (seg A B))
                     (length-of (seg C B))
                     (length-of (seg A C))) 2)
               (* 6 (+ (^ (length-of (seg A D)) 2)
                       (^ (length-of (seg B D)) 2)
                       (^ (length-of (seg C D)) 2))))))))

(def-directive p2
  (Find (Vertices)
     (exists (A B C D P)
        (&& (= Vertices (list-of A B C D))
            (is-tetrahedron A B C D)
            (perpendicular (line B D) (line C D))
            (= (foot-of-perpendicular-line-from-to D (plane1 A B C)) P)
            (perpendicular (line A P) (line B C))
            (perpendicular (line B P) (line A C))
            (perpendicular (line C P) (line A B))
            (= (^ (+ (length-of (seg A B))
                      (length-of (seg C B))
                      (length-of (seg A C))) 2)
                (* 6 (+ (^ (length-of (seg A D)) 2)
                        (^ (length-of (seg B D)) 2)
                        (^ (length-of (seg C D)) 2))))))))

(def-answer
  p2
  (PLam Vertices (exists (A B C D P)
                   (&& (= Vertices (list-of A B C D))
                       (is-tetrahedron A B C D)
                       (perpendicular (line B D) (line C D))
                       (= (foot-of-perpendicular-line-from-to D (plane1 A B C)) P)
                       (perpendicular (line A P) (line B C))
                       (perpendicular (line B P) (line A C))
                       (perpendicular (line C P) (line A B))
                       (= (distance^2 A B) (distance^2 C B))
                       (= (distance^2 A C) (distance^2 C B))))))

