;; DOMAIN:    Geometry, circle and other quadratic curves
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1989, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-19
;;
;; <PROBLEM-TEXT>
;; Let $ABCD$ be a convex quadrilateral such that the sides $AB$, $AD$, $BC$ satisfy
;; $AB = AD + BC$. There exists a point $P$ inside the quadrilateral at a distance
;; $h$ from the line $CD$ such that $AP = h + AD$ and $BP = h + BC$. Show that:
;; ¥[
;; ¥frac{1}{¥sqrt{h}} ¥ge ¥frac{1}{¥sqrt{AD}} + ¥frac{1}{¥sqrt{BC}}.
;; ¥]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D P h)
                (-> (&&
                        (is-square A B C D)
                        (= (distance A B) (+ (distance A D) (distance B C)))
                        (point-inside-of P (square A B C D))
                        (= h (point-shape-distance P (line C D)))
                        (= (distance A P) (+ h (distance A D)))
                        (= (distance B P) (+ h (distance B C))))
                    (>= (/ 1 (sqrt h))
                        (+ (/ 1 (sqrt (distance A D)))
                           (/ 1 (sqrt (distance B C)))))))))

