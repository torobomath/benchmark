;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Science Course, Problem 6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2013-11-21
;;
;; <PROBLEM-TEXT>
;; Let $A(-1, 1, 0)$, $B(1, 1, 0)$, $C(1, -1, 0)$, and $D(-1, -1, 0)$ be
;; the four vertices of the square $S$ defined by the inequalities
;; $|x|\le 1$ and $|y|\le 1$ on the $xy$ plane in the coordinate space
;; Let $V_1$ be the solid obtained by rotating the square $S$ around the
;; straight line $BD$, and $V_2$, the solid obtained by rotating the
;; same square around the straight line $AC$.
;;
;; (1) For the real number $t$ that satisfies $0\le t<1$, find the area
;; of the cross section of $V_1$ by the plane $x=t$.
;;
;; (2) Find the volume of the intersection of $V_1$ and $V_2$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (x) (let* ((A (point -1 1 0))
                   (B (point 1 1 0))
                   (C (point 1 -1 0))
                   (D (point -1 -1 0))
                   (S (square A B C D))
                   (V1 (solid-of-revolution S (line B D)))
                   (V2 (solid-of-revolution S (line A C))))
              (&& (<= 0 t) (< t 1)
                  (= x (area-of (intersection V1 (plane 1 0 0 t))))))))

(def-directive
  p2
  (Find (x) (let* ((A (point -1 1 0))
                   (B (point 1 1 0))
                   (C (point 1 -1 0))
                   (D (point -1 -1 0))
                   (S (square A B C D))
                   (V1 (solid-of-revolution S (line B D)))
                   (V2 (solid-of-revolution S (line A C))))
              (= x (volume-of (intersection V1 V2))))))

(def-answer p1 (PLam x (= x (* (/ (* 8 (sqrt 2)) 3) (sqrt (- 1 (^ t 2)))))))

(def-answer p2 (PLam x (= x (* (/ 32 9) (sqrt 2)))))

