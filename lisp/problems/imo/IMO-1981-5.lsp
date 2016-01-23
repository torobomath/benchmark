;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1981, Problem 5
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Three congruent circles have a common point $O$ and lie inside a
;; given triangle. Each circle touches a pair of sides of the triangle. Prove
;; that the incenter and the circumcenter of the triangle and the point $O$ are
;; collinear.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
      (forall (K1 K2 K3 A B C incenter circumcenter O)
              (-> (&& (is-triangle A B C)
                      (< 0 r)
                      (is-incenter-of incenter (triangle A B C))
                      (is-circumcenter-of circumcenter (triangle A B C))
                      (circle-type K1)
                      (circle-type K2)
                      (circle-type K3)
                      (= (radius-of K1) (radius-of K2))
                      (= (radius-of K2) (radius-of K3))
                      (point-inside-of (center-of K1) (triangle A B C))
                      (point-inside-of (center-of K2) (triangle A B C))
                      (point-inside-of (center-of K3) (triangle A B C))
                      (tangent K1 (seg A B)) (tangent K1 (seg B C))
                      (tangent K2 (seg A B)) (tangent K2 (seg C A))
                      (tangent K3 (seg B C)) (tangent K3 (seg C A))
                      (on O (intersection (list-of K1 K2 K3))))
                  (colinear O incenter circumcenter)))))

