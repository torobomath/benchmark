;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 3
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; In a given right triangle $ABC$, the hypotenuse $BC$, of length $a$, is divided
;; into $n$ equal parts ($n$ an odd integer). Let $\alpha$ be the acute angle
;; subtending, from $A$, that segment which contains the midpoint of
;; the hypotenuse. Let $h$ be the length of the altitude to the hypotenuse
;; of the triangle. Prove:\[
;; \tan \alpha = \frac{4nh}{(n^2 - 1)a}.
;; \]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show
    (forall (A B C BB CC h n m a alpha)
            (-> (&& (is-triangle A B C)
                    (is-right (angle B A C))
                    (= h (point-shape-distance A (line B C)))
                    (= a (length-of (seg B C)))
                    (int.is-odd-number n)
                    (= m (int.div n 2))
                    (on BB (seg B C))
                    (= (* (int->real m) a) (length-of (seg B BB)))
                    (on CC (seg B C))
                    (= (* (int->real m) a) (length-of (seg C CC)))
                    (= alpha (angle BB A CC)))
                (= (tan (rad-of-angle alpha))
                   (/ (* 4 (int->real n) h)
                      (* (- (^ (int->real n) 2) 1) a)))))))

