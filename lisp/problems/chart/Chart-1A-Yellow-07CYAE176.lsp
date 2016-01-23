;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE176
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Find (x)
        (exists (CirO B CirB P Q F G A E)
                (&& (circle-type CirO)
                    (circle-type CirB)
                    (= B (center-of CirB))
                    (! (= P Q))
                    (intersect CirO CirB P)
                    (intersect CirO CirB Q)
                    (is-diameter-of (seg F G) CirB)
                    (! (= A B))
                    (intersect CirO (seg F G) A)
                    (intersect CirO (seg F G) B)
                    (intersect (line P Q) (line F G) E)
                    (= x (length-of (seg E A)))
                    (= a (length-of (seg A B)))
                    (= b (length-of (seg B G)))))))

(def-answer
  p
  (PLam x (&& (< 0 a)
              (<= a b)
              (= x (/ (- (^ b 2) (^ a 2)) a)))))

