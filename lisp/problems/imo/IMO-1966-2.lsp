;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1966, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$ be the lengths of the sides of a triangle, and $\alpha$, $\beta$,
;; $\gamma$, respectively, the angles opposite these sides. Prove that if\[
;; a+b = \tan \frac{\gamma}{2} (a \tan \alpha + b \tan \beta)
;; \]the triangle is isosceles.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C a b c alpha beta gamma)
     (-> (&& (is-triangle A B C)
               (= (length-of (seg A B)) c)
               (= (length-of (seg A C)) b)
               (= (length-of (seg C B)) a)
               (= (rad-of-angle (angle A C B)) gamma)
               (= (rad-of-angle (angle A B C)) beta)
               (= (rad-of-angle (angle C A B)) alpha)
               (= (+ a b) (* (tan (* (/ 1 2) gamma)) (+ (* a (tan alpha)) (* b (tan beta)))))
               )
           (is-isosceles-triangle A B C)))))

