;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR085
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (AF_FE)
        (exists (A B C D E F)
                (&& (is-triangle A B C)
                    (on D (seg A B))
                    (on E (seg B C))
                    (intersect (seg A E) (seg C D) F)
                    (< 0 (length-of (seg A C)))
                    (= 1 (length-of (seg A D)))
                    (= 2 (length-of (seg D B)))
                    (= 3 (length-of (seg C E)))
                    (= 4 (length-of (seg E B)))
                    (= AF_FE (/ (length-of (seg A F))
                                (length-of (seg F E))))))))

(def-directive
  p2
  (Find (CF_FD)
        (exists (A B C D E F)
                (&& (is-triangle A B C)
                    (on D (seg A B))
                    (on E (seg B C))
                    (intersect (seg A E) (seg C D) F)
                    (< 0 (length-of (seg A C)))
                    (= 1 (length-of (seg A D)))
                    (= 2 (length-of (seg D B)))
                    (= 3 (length-of (seg C E)))
                    (= 4 (length-of (seg E B)))
                    (= CF_FD (/ (length-of (seg C F))
                                (length-of (seg F D))))))))

(def-answer p1 (PLam AF_FE (= AF_FE (/ 7 6))))

(def-answer p2 (PLam CF_FD (= CF_FD (/ 9 4))))

