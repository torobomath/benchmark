;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Science Course, Problem 5
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-09-27
;;
;; <PROBLEM-TEXT>
;; Consider the ellipse
;; $C_1 :\frac{x^2}{{\alpha}^2} +\frac{y^2}{{\beta}^2} = 1$ and
;; hyperbola $C_2 :\frac{x^2}{a^2} -\frac{y^2}{b^2} = 1$. If $C_1$ and
;; $C_2$ have the same focuses, prove that the tangents of $C_1$ and
;; $C_2$ intersect with each other perpendicularly at the intersection
;; of the two.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
   (forall (alpha beta a b C1 C2 p1 p2 p l k) (->
      (&&
        (! (= a 0))
        (! (= b 0))
        (! (= alpha 0))
        (! (= beta 0))
  (= C1 (graph-of-implicit-function (Lam x (Lam y (- (+ (/ (^ x 2) (^ alpha 2)) (/ (^ y 2) (^ beta 2))) 1)))))
  (= C2 (graph-of-implicit-function (Lam x (Lam y (- (- (/ (^ x 2) (^ a 2)) (/ (^ y 2) (^ b 2))) 1)))))
  (! (= p1 p2))
        (is-focus-of p1 C1)
        (is-focus-of p1 C2)
        (is-focus-of p2 C1)
        (is-focus-of p2 C2)
        (intersect C1 C2 p)
        (line-type l)
        (tangent C1 l p)
        (line-type k)
        (tangent C2 k p)
      )
  (perpendicular l k)
      ))
   )
)

