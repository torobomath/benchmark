;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE193
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Find (t) (&&
    (< 0 t)
    (exists (A B C D E F P Q) (&&
      (is-triangle A B C)
      (on D (seg A B))
      (on E (seg A C))
      (= (distance A D) (* t (distance D B)))
      (= (* (+ t 1) (distance A E)) (distance E C))
      (intersect (line B E) (line C D) P)
      (intersect (line A P) (line B C) F)
      (is-incenter-of Q (triangle A B C))
      (colinear A F Q)
      (= (distance A C) (* 12 (distance A B)))
    ))
  ))
)

(def-answer p (PLam t (= t 3)))

