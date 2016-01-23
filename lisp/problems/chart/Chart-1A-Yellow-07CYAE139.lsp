;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE139
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p2
  (Find (BD)
    (exists (A B C D E L1 L2)
      (&&
        (is-triangle A B C)
        (line-type L1)
        (line-type L2)
        (is-angle-bisector L1 (angle C A B))
        (is-angle-bisector L2 (angle B A (vec-translate A (vec C A))))
        (intersect L1 (line B C) D)
        (intersect L2 (line B C) E)
        (= (length-of (seg A B)) 5)
        (= (length-of (seg A C)) 3)
        (= (length-of (seg E C)) 6)
        (= BD (length-of (seg B D)))
      )
    )
  )
)

(def-answer p2 (PLam BD (= BD (/ 5 2))))

(def-directive p1
  (Find (BC)
    (exists (A B C D E L1 L2)
      (&&
        (is-triangle A B C)
        (line-type L1)
        (line-type L2)
        (is-angle-bisector L1 (angle C A B))
        (is-angle-bisector L2 (angle B A (vec-translate A (vec C A))))
        (intersect L1 (line B C) D)
        (intersect L2 (line B C) E)
        (= (length-of (seg A B)) 5)
        (= (length-of (seg A C)) 3)
        (= (length-of (seg E C)) 6)
        (= BC (length-of (seg B C)))
      )
    )
  )
)

(def-answer p1 (PLam BC (= BC 4)))

