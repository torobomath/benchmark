;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP177
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Find (ratio)
        (exists (A B C D E F G H I J P Q R)
                (&& (is-triangle A B C)
                    (= D (midpoint-of A C))
                    (divide-internally E (seg A B) 1 2)
                    (intersect (line B D) (line C E) F)
                    (intersect (line A F) (seg B C) G)
                    (on H (line A F))
                    (vec-same-direction (vec A G) (vec A H))
                    (point-outside-of H (triangle A B C))
                    (= I (midpoint-of H C))
                    (= J (midpoint-of H B))
                    (intersect (line B I) (line C J) P)
                    (intersect (line C J) (line H G) Q)
                    (intersect (line H G) (line B I) R)
                    (= ratio (/ (length-of (seg B G))
                                (length-of (seg G C))))))))

(def-directive
  p2
  (Find (ratio)
        (exists (A B C D E F G H I J P Q R)
                (&& (is-triangle A B C)
                    (= D (midpoint-of A C))
                    (divide-internally E (seg A B) 1 2)
                    (intersect (line B D) (line C E) F)
                    (intersect (line A F) (seg B C) G)
                    (on H (line A F))
                    (vec-same-direction (vec A G) (vec A H))
                    (point-outside-of H (triangle A B C))
                    (= I (midpoint-of H C))
                    (= J (midpoint-of H B))
                    (intersect (line B I) (line C J) P)
                    (intersect (line C J) (line H G) Q)
                    (intersect (line H G) (line B I) R)
                    (= ratio (/ (area-of (triangle B C H))
                                (area-of (triangle P Q R))))))))

(def-answer p1 (PLam ratio (= ratio 2)))

(def-answer p2 (PLam ratio (= ratio 60)))

