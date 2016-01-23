;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1977, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Four real constants $a$, $b$, $A$, $B$ are given, and\[
;; f (\theta) = 1 - a \cos\theta - b \sin\theta
;; - A \cos 2\theta - B \sin 2\theta.
;; \]Prove that if $f(\theta) \geq 0$ for all real $\theta$, then
;; \begin{center} $a^2+b^2 \leq 2$ and $A^2 + B^2 \leq 1$. \end{center}
;; </PROBLEM-TEXT>

(def-directive p
  (Show
   (forall (a b A B)
       (-> (forall (theta)
                   (>= (+ 1 (- (* a (cos theta)))
                            (- (* b (sin theta)))
                            (- (* A (cos (* 2 theta))))
                            (- (* B (sin (* 2 theta))))) 0))
           (&& (<= (+ (^ a 2) (^ b 2)) 2)
               (<= (+ (^ A 2) (^ B 2)) 1))))))

