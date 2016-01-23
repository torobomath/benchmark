;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-12
;;
;; <PROBLEM-TEXT>
;; $ABC$ is an isosceles triangle with $AB = AC$. Suppose that
;; ¥begin{flushleft}
;; 1. $M$ is the midpoint of $BC$ and $O$ is the point on the line $AM$ such that
;; $OB$ is perpendicular to $AB$;¥¥
;; 2. $Q$ is an arbitrary point on the segment $BC$ different from $B$ and $C$;¥¥
;; 3. $E$ lies on the line $AB$ and $F$ lies on the line $AC$ such that $E$, $Q$, $F$
;; are distinct and collinear.
;; ¥end{flushleft}
;; Prove that $OQ$ is perpendicular to $EF$ if and only if $QE = QF$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C M O Q E F)
     (-> (&& (is-triangle A B C)
               (= (distance A B) (distance A C))
               (= M (midpoint-of B C))
               (on O (line A M))
               (perpendicular (line O B) (line A B))
               (on Q (seg B C))
               (! (= Q B))
               (! (= Q C))
               (on E (line A B))
               (on F (line A C))
               (colinear E Q F)
               (pairwise-distinct (list-of E Q F)))
           (<-> (perpendicular (line O Q) (line E F))
                (= (length-of (seg Q E)) (length-of (seg Q F))))))))

