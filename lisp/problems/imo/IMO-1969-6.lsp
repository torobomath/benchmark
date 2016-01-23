;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1969, Problem 6
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Prove that for all real numbers $x_1$, $x_2$, $y_1$, $y_2$, $z_1$, $z_2$, with
;; $x_1 > 0$, $x_2 > 0$, $x_1 y_1 - z_1^2 > 0$, $x_2 y_2 - z_2^2 > 0$, the inequality\[
;; \frac{8}{(x_1+x_2)(y_1+y_2) - (z_1+z_2)^2} \leq \frac{1}{x_1 y_1 - z_1^2} + \frac{1}{x_2 y_2 - z_2^2}
;; \]is satisfied. Give necessary and sufficient conditions for equality.
;; </PROBLEM-TEXT>

(def-directive p1
  (Show
   (forall (x1 x2 y1 y2 z1 z2)
     (-> (&& (> x1 0)
               (> x2 0)
               (> (- (* x1 y1) (^ z1 2)) 0)
               (> (- (* x2 y2) (^ z2 2)) 0))
           (<= (/ 8 (- (* (+ x1 x2) (+ y1 y2)) (^ (+ z1 z2) 2)))
               (+ (/ 1 (- (* x1 y1) (^ z1 2)))
                  (/ 1 (- (* x2 y2) (^ z2 2)))))))))

(def-directive p2
  (Find (ans)
   (exists (x1 x2 y1 y2 z1 z2)
           (&& (= ans (list-of x1 x2 y1 y2 z1 z2))
               (> x1 0)
               (> x2 0)
               (> (- (* x1 y1) (^ z1 2)) 0)
               (> (- (* x2 y2) (^ z2 2)) 0)
               (= (/ 8 (- (* (+ x1 x2) (+ y1 y2)) (^ (+ z1 z2) 2)))
                  (+ (/ 1 (- (* x1 y1) (^ z1 2)))
                     (/ 1 (- (* x2 y2) (^ z2 2)))))))))

(def-answer p2
  (PLam ans (exists (x1 x2 y1 y2 z1 z2)
               (&& (= ans (list-of x1 x2 y1 y2 z1 z2))
                   (= x1 x2)
                   (= y1 y2)
                   (= z1 z2)))))

