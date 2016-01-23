;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2009, Humanities Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Consider the triangle $\triangle ABC$ of which the length of the side
;; $AB$ is $1$, and $\angle A$ is the right angle. Consider the point
;; $D$ that moves on the side $BC$ from the point $C$ to the point $B$,
;; and let $t$ be the inner product $\vec{AD}\cdot\vec{AB}$. Answer the
;; following questions:
;;
;; (1) Find the moving range of $t$.
;;
;; (2) When $\vec{AD}\cdot\vec{AC} =\vec{CD}\cdot\vec{CA}$ is true, find
;; the value of $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (t)
  (exists (A B C D)
    (&&
     (is-right (angle B A C))
     (is-triangle A B C)
     (= 1 (length-of (seg A B)))
     (on D (seg B C))
     (= t (inner-prod (vec A D) (vec A B)))))))

(def-directive
  p2
  (Find (t)
  (exists (A B C D)
                (&&
                 (is-right (angle B A C))
                 (is-right-triangle A B C)
                 (= 1 (length-of (seg A B)))
                 (on D (seg B C))
     (= (inner-prod (vec A D) (vec A C)) (inner-prod (vec C D) (vec C A)))
     (= t (inner-prod (vec A D) (vec A B)))))))

(def-answer p1 (PLam t (&& (<= 0 t) (<= t 1))))

(def-answer p2 (PLam t (= t (/ 1 2))))

