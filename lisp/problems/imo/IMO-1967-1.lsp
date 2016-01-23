;; DOMAIN:    Geometry, quadrangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1967, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Let $ABCD$ be a parallelogram with side lengths $AB = a$, $AD = 1$, and with
;; $\angle BAD = \alpha$. If $\triangle ABD$ is acute, prove that the four
;; circles of radius $1$ with centers $A$, $B$, $C$, $D$ cover the parallelogram
;; if and only if\[
;; a \leq \cos\alpha + \sqrt{3} \sin\alpha.
;; \]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D)
     (-> (&& (is-parallelogram A B C D)
               (is-acute (angle A B D))
               (= (length-of (seg A D)) 1))
           (<-> (forall (P)
                        (-> (|| (point-inside-of P (square A B C D))
                                (on P (square A B C D)))
                            (|| (point-inside-of P (circle A 1))
                                (point-inside-of P (circle B 1))
                                (point-inside-of P (circle C 1))
                                (point-inside-of P (circle D 1)))))
                (<= (length-of (seg A B))
                    (+ (cos (rad-of-angle (angle D A B)))
                       (* (sqrt 3) (sin (rad-of-angle (angle D A B)))))))))))

