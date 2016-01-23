;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2011, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Consider the line segment $OA$ with the length $3$ on a plane, and
;; represent the vector $\vec{OA}$ as $\vec{a}$. For the real number $t$
;; that satisfies $0 < t < 1$, determine the point $P$ so that
;; $\vec{OP} = t\vec{a}$. Determine the vector $\vec{b}$ with the
;; magnitude $2$ to form the angle ${\theta}$ $(0 < {\theta} < {\pi})$
;; with $\vec{a}$, and determine the point $B$ so that
;; $\vec{OB} =\vec{b}$. Let $Q$ be the middle point of the line segment
;; $OB$, and let $R$ be the intersection of the line segments $AQ$ and
;; $BP$. Find the range of the value of $t$ such that $\vec{OR}$ and
;; $\vec{AB}$ are not perpendicular to each other for any value of
;; ${\theta}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (t)
        (&& (< 0 t)
      (< t 1)
      (forall (O A a P theta b B Q R)
        (-> (&& (= (distance O A) 3)
          (= a (vec O A))
          (= (vec O P) (sv* t a))
          (= theta (rad-of-angle (angle-of-vectors b a)))
          (< 0 theta)
          (< theta (Pi))
          (= (vec O B) b)
          (= (distance O B) 2)
          (= Q (midpoint-of O B))
          (on R (intersection (seg A Q) (seg B P))))
            (! (perpendicular (line O R) (line A B))))))))

(def-answer p (PLam t (&& (<= (/ 2 5) t) (< t 1))))

