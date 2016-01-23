;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E294
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 3d)

(def-directive p1
  (Find (V)
    (forall (O A B C) (->
      (&& (is-tetrahedron O A B C)
        (= 2 (distance O A))
        (= 2 (distance O B))
        (= 2 (distance O C))
        (perpendicular (line O A) (line O B))
        (perpendicular (line O B) (line O C))
        (perpendicular (line O C) (line O A))
      )
      (= V (volume-of (tetrahedron O A B C)))
    ))
  )
)

(def-directive p2
  (Find (S)
    (forall (O A B C) (->
      (&& (is-tetrahedron O A B C)
        (= 2 (distance O A))
        (= 2 (distance O B))
        (= 2 (distance O C))
        (perpendicular (line O A) (line O B))
        (perpendicular (line O B) (line O C))
        (perpendicular (line O C) (line O A))
      )
      (= S (area-of (triangle A B C)))
    ))
  )
)

(def-directive p3
  (Find (OH)
    (forall (O A B C) (->
      (&& (is-tetrahedron O A B C)
        (= 2 (distance O A))
        (= 2 (distance O B))
        (= 2 (distance O C))
        (perpendicular (line O A) (line O B))
        (perpendicular (line O B) (line O C))
        (perpendicular (line O C) (line O A))
      )
      (= OH (distance O (foot-of-perpendicular-line-from-to O (plane1 A B C))))
    ))
  )
)

(def-answer p1 (PLam V (= V (/ 4 3))))

(def-answer p2 (PLam S (= S (* 2 (sqrt 3)))))

(def-answer p3 (PLam OH (= OH (/ (* 2 (sqrt 3)) 3))))

