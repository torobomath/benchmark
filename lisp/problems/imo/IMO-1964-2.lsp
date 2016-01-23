;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1964, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Suppose $a$, $b$, $c$ are the sides of a triangle. Prove that\[
;; a^2(b + c - a) + b^2(c + a - b) + c^2(a + b - c) \leq 3abc.
;; \]
;; </PROBLEM-TEXT>

(def-directive p
  (Show
    (forall (a b c)
            (-> (are-triangle-edges a b c)
                (<= (+ (* (^ a 2) (- (+ b c) a))
                       (* (^ b 2) (- (+ a c) b))
                       (* (^ c 2) (- (+ b a) c)))
                    (* 3 a b c))))))

