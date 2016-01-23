;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2009, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-25
;;
;; <PROBLEM-TEXT>
;; Answer the following questions.
;;
;; (1) Find the coordinates of the foot $H$ of the perpendicular drawn
;; from the point $C(2, 3, 3)$ to the straight line $l$ passing through
;; the points $A(-3, -1, 1)$ and $B(-1, 0, 0)$ in the $xyz$ space.
;;
;; (2) Consider a game of taking two balls at a time out of a bag
;; containing white and red balls. If the two balls are both white, it
;; is regarded as "success" and the game ends. Otherwise, it is regarded
;; as "failure" and the two balls are returned to the bag with one extra
;; red ball, and the game goes on. If there are two white balls and one
;; red ball in the bag at the beginning, find the probability of
;; succeeding on the $n$th try after $n-1$ times of failure, where
;; $n\ge 2$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (p)
  (let* ((A (point -3 -1 1))
         (B (point -1 0 0))
         (l (line A B))
         (C (point 2 3 3)))
    (exists (k)
      (&& (line-type k)
          (perpendicular k l)
          (on C k)
          (intersect k l p))))))

(def-answer p1 (PLam p (= p (point 1 1 -1))))

