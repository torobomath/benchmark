;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2005, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $0 < t <\frac{1}{2}$, and assume that the planar vectors
;; $\vec{a}$, $\vec{b}$, and the unit vector $\vec{e}$ satisfy (i)
;; $(1 - t)\vec{a} + t\vec{b} =\vec{e}$(ii)
;; $(1 - t)(\vec{a} +\vec{e})= t(\vec{b} +\vec{e})$. Also, for the
;; planar vector $\vec{x}$, assume that $\vec{x} -\vec{a}$ and
;; $\vec{x} -\vec{b}$ are perpendicular to each other and the ratio of
;; the lengths of them. Represent the inner product
;; $\vec{x}\cdot\vec{e}$ using $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (xe)
        (exists (a b e x)
                (&& (< 0 t)
                    (< t (/ 1 2))
                    (is-unit-vec e)
                    (= (v+ (sv* (- 1 t) a) (sv* t b))
                       e)
                    (= (sv* (- 1 t)  (v+ a e))
                       (sv* t (v+ b e)))
                    (= (inner-prod (v- x a) (v- x b)) 0)
                    (= (* (radius (v- x a)) (- 1 t))
                       (* (radius (v- x b)) t))
                    (= xe (inner-prod x e))))))

(def-answer p (PLam xe (&& (= xe (/ (* 2 t (- 1 t)) (+ 1 (* -2 t) (* 2 (^ t 2)))))
         (< 0 t)
         (< t (/ 1 2)))))

