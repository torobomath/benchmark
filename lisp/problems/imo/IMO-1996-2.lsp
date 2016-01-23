;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1996, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-06
;;
;; <PROBLEM-TEXT>
;; Let $P$ be a point inside triangle $ABC$ such that
;; ¥[
;; ¥angle APB -¥angle ACB = ¥angle APC - ¥angle ABC.
;; ¥]
;; Let $D$, $E$ be the incenters of triangles $APB$, $APC$, respectively. Show that
;; $AP$, $BD$, $CE$ meet at a point.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C P D E)
     (-> (&& (is-triangle A B C)
               (point-inside-of P (triangle A B C))
               (= (- (rad-of-angle (angle A P B)) (rad-of-angle (angle A C B)))
                  (- (rad-of-angle (angle A P C)) (rad-of-angle (angle A B C))))
               (is-incenter-of D (triangle A P B))
               (is-incenter-of E (triangle A P C)))
           (exists (Q)
             (&& (intersect (line A P) (line B D) Q)
                 (intersect (line A P) (line C E) Q)))))))

