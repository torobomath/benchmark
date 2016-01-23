;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2007, Humanities Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; For the right triangle $ABC$ with $\angle C$ as the right angle, let
;; $D$ be the intersection of the bisector of $\angle A$ and the line
;; segment $BC$. Let the lengths of the line segments $AD$, $DC$, and
;; $CA$ be $5$, $3$, and $4$, respectively, assume that
;; $\angle A = {\theta}$, then answer the following questions:
;;
;; (1) Find the value of $\sin {\theta}$.
;;
;; (2) Prove that ${\theta} <\frac{5}{12} {\pi}$. However, you can use
;; $\sqrt{2} = 1.414\cdots$ and $\sqrt{3} = 1.732\cdots$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (sintheta)
  (exists (A B C D)
    (&&
      (is-triangle A B C)
      (is-right (angle A C B))
      (on D (line B C))
      (= (rad-of-angle (angle D A B)) (rad-of-angle (angle D A C)))
      (= (length-of (seg A D)) 5)
      (= (length-of (seg D C)) 3)
      (= (length-of (seg C A)) 4)
      (= sintheta (sin-of-angle (angle B A C)))))))

(def-directive
  p2
  (Show
    (forall (A B C D theta)
      (->
        (&&
            (is-triangle A B C)
            (is-right (angle A C B))
            (on D (line B C))
            (= (rad-of-angle (angle D A B)) (rad-of-angle (angle D A C)))
            (= (length-of (seg A D)) 5)
            (= (length-of (seg D C)) 3)
            (= (length-of (seg C A)) 4)
            (= theta (rad-of-angle (angle B A C))))
        (< theta (/ (* 5 (Pi)) 12))))))

(def-answer p1 (PLam sintheta (= sintheta (/ 24 25))))

