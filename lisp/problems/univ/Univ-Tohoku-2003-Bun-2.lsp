;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2003, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-18
;;
;; <PROBLEM-TEXT>
;; For the triangle $ABC$, assume that $AB = 1$, $AC = 2$, and
;; $\angle A = 60^{\circ}$. For the positive numbers $m$ and $n$, let
;; $D$, $E$, and $F$ be the points that internally divide the sides
;; $BC$, $CA$, and $AB$ in a ratio of $m : n$, respectively.
;;
;; (1) When $\vec{DE}$ and $\vec{EF}$ are perpendicular to each other,
;; find the ratio $m : n$.
;;
;; (2) Prove that $\vec{AD}$ and $\vec{EF}$ are not perpendicular to
;; each other for any positive integers $m$ and $n$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (mn)
        (exists (A B C D E F m n)
                (&& (= (distance A B) 1)
                    (= (distance A C) 2)
                    (= (rad-of-angle (angle B A C)) (/ (Pi) 3))
                    (divide-internally D (seg B C) m n)
                    (divide-internally E (seg C A) m n)
                    (divide-internally F (seg A B) m n)
                    (perpendicular (line D E) (line E F))
                    (= mn (/ m n))))))

(def-directive
  p2
  (Find (mn) (exists (A B C D E F m n) (&&
                (= (distance A B) 1)
                (= (distance A C) 2)
                (= (rad-of-angle (angle B A C)) (/ (Pi) 3))
                (divide-internally D (seg B C) m n)
                (divide-internally E (seg C A) m n)
                (divide-internally F (seg A B) m n)
                (perpendicular (line A D) (line E F))
                (= mn (list-of m n))))))

(def-answer p1 (PLam mn (|| (= mn 3) (= mn 1))))

(def-answer p2 (PLam mn (exists (m n) (&&
  (= mn (list-of m n))
  (! (= 0 m))
  (= 0 (- (- (^ m 2) (* 3 (* m n))) (^ n 2)))
))))

