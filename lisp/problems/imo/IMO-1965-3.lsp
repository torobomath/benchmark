;; DOMAIN:    Geometry, polyhedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1965, Problem 3
;; SCORE:     8
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-27
;;
;; <PROBLEM-TEXT>
;; Given the tetrahedron $ABCD$ whose edges $AB$ and $CD$ have lengths $a$ and
;; $b$ respectively. The distance between the skew lines $AB$ and $CD$ is $d$, and
;; the angle between them is $\omega$. Tetrahedron $ABCD$ is divided into two solids
;; by plane $\epsilon$, parallel to lines $AB$ and $CD$. The ratio of the distances of $\epsilon$
;; from $AB$ and $CD$ is equal to $k$. Compute the ratio of the volumes of the two solids
;; obtained.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (ans)
        (exists (A B C D a b d omega epsilon)
                (&& (is-tetrahedron A B C D)
                    (> a 0)
                    (> b 0)
                    (= a (distance A B))
                    (= b (distance C D))
                    (are-skew-lines (line A B) (line C D))
                    (> d 0)
                    (= d (line-line-distance (line A B) (line C D)))
                    (= omega (rad-of-angle (formed-angle-of (line A B) (line C D))))
                    (plane-type epsilon)
                    (parallel epsilon (line A B))
                    (parallel epsilon (line C D))
                    (= k (/ (shape-shape-distance epsilon (line A B))
                            (shape-shape-distance epsilon (line C D))))
                    (= ans (/ (volume-of (intersection (tetrahedron A B C D)
                                                       (divided-region-including epsilon A)))
                              (volume-of (intersection (tetrahedron A B C D)
                                                       (divided-region-including epsilon C)))))))))

(def-answer p (PLam ans (= ans (* (^ k 2) (/ (+ k 3) (+ (* 3 k) 1))))))

