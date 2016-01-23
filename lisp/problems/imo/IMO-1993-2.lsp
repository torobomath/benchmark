;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1993, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-10
;;
;; <PROBLEM-TEXT>
;; Let $D$ be a point inside acute triangle $ABC$ such that
;; $¥angle ADB = ¥angle ACB + ¥frac{¥pi}{2}$ and $AC ¥cdot BD = AD ¥cdot BC$.
;; ¥begin{flushleft}
;; (a) Calculate the ratio $¥frac{AB ¥cdot CD}{ AC ¥cdot BD}$.¥¥
;; (b) Prove that the tangents at $C$ to the circumcircles of $¥triangle ACD$ and
;; $¥triangle BCD$ are perpendicular.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
        (exists (A B C D)
                (&& (is-acute-triangle A B C)
                    (point-inside-of D (triangle A B C))
                    (= (rad-of-angle (angle A D B))
                       (+ (rad-of-angle (angle A C B)) (/ (Pi) 2)))
                    (= (* (distance A C) (distance B D))
                       (* (distance A D) (distance B D)))
                    (= x (/ (* (distance A B) (distance C D))
                            (* (distance A C) (distance B D))))))))

(def-answer p1 (PLam x (= x (sqrt 2))))

(def-directive
  p2
  (Show (forall (A B C D S1 S2 l m)
                (-> (&& (is-acute-triangle A B C)
                        (point-inside-of D (triangle A B C))
                        (= (rad-of-angle (angle A D B))
                           (+ (rad-of-angle (angle A C B)) (/ (Pi) 2)))
                        (= (* (distance A C) (distance B D))
                           (* (distance A D) (distance B D)))
                        (circle-type S1)
                        (circle-type S2)
                        (line-type l)
                        (line-type m)
                        (is-inscribed-in (triangle A C D) S1)
                        (is-inscribed-in (triangle B C D) S2)
                        (tangent l S1 C)
                        (tangent m S2 C))
                    (perpendicular l m)))))

