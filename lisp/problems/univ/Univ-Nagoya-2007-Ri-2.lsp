;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Science Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-12
;;
;; <PROBLEM-TEXT>
;; (1) Draw the graph of the function $f(x)= 2 x^3 - 3 x^2 + 1$.
;;
;; (2) When the equation $f(x)= a$ ( $a$ is a real number) has $3$
;; different real solutions ${\alpha} < {\beta} < {\gamma}$, represent
;; $l = {\gamma} - {\alpha}$ using only ${\beta}$.
;;
;; (3) When $a$ changes under the condition described in (2), find the
;; movable range of $l$
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Draw (p)
  (= (y-coord p)
     (+ (* 2 (^ (x-coord p) 3)) (- (* 3 (^ (x-coord p) 2))) 1))))

(def-answer
  p1
  (set-of-cfun (Lam x (PLam y
          (= y
             (+ (* 2 (^ x 3)) (- (* 3 (^ x 2))) 1))))))

(def-directive
  p2
  (Find (l)
  (let* ((f (Lam x (+ (* 2 (^ x 3)) (- (* 3 (^ x 2))) 1))))
    (exists (alpha gamma)
      (&& (= (LamApp f alpha) a)
          (= (LamApp f beta) a)
          (= (LamApp f gamma) a)
          (< alpha beta)
          (< beta gamma)
          (pairwise-distinct (list-of alpha beta gamma))
          (= l (- gamma alpha)))))))

(def-answer
  p2
  (PLam l (= l (sqrt (+ (- (* 3 (^ beta 2))) (* 3 beta) (/ 9 4))))))

(def-directive
  p3
  (Find (l)
  (let* ((f (Lam x (+ (* 2 (^ x 3)) (- (* 3 (^ x 2))) 1))))
    (exists (a alpha beta gamma)
      (&& (= (LamApp f alpha) a)
          (= (LamApp f beta) a)
          (= (LamApp f gamma) a)
          (< alpha beta)
          (< beta gamma)
          (pairwise-distinct (list-of alpha beta gamma))
          (= l (- gamma alpha)))))))

(def-answer
  p3
  (PLam l (&& (< (/ 3 2) l)
        (<= l (sqrt 3)))))

