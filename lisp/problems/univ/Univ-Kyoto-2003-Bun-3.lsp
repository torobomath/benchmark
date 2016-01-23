;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2003, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; Assume that the tetrahedron $OABC$ satisfies the following two
;; conditions: (i) $\vec{OA}\bot\vec{BC}$, $\vec{OB}\bot\vec{AC}$,
;; $\vec{OC}\bot\vec{AB}$(ii) $4$ and (ii) the areas of all the four
;; surfaces are the same. Then, prove that the tetrahedron is a regular
;; tetrahedron.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Show (forall (O A B C)
                (-> (&& (is-tetrahedron O A B C)
                        (perpendicular (line O A) (line B C))
                        (perpendicular (line O B) (line A C))
                        (perpendicular (line O C) (line A B))
                        (= (area-of (triangle O A B))
                           (area-of (triangle O B C)))
                        (= (area-of (triangle O B C))
                           (area-of (triangle O C A)))
                        (= (area-of (triangle O C A))
                           (area-of (triangle A B C))))
                    (is-regular-tetrahedron O A B C)))))

