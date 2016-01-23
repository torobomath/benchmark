;; DOMAIN:    Geometry, transformational geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1985, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; A circle has center on the side $AB$ of the cyclic quadrilateral $ABCD$. The other
;; three sides are tangent to the circle. Prove that $AD + BC = AB$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C D circle)
      (-> (&& (is-square A B C D)
                    (exists (circle0)
                      (&& (circle-type circle0)
              (is-inscribed-in (square A B C D) circle0)))
          (circle-type circle)
          (on (center-of circle) (seg A B))
          (tangent (line B C) circle)
          (tangent (line C D) circle)
          (tangent (line D A) circle))
        (= (+ (distance A D) (distance B C)) (distance A B))))))

