;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2009, Science Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Consider the $3$ points $O(0, 0)$, $A(2, 6)$, and $B(3, 4)$ on the
;; coordinate plane, and draw the perpendicular $OC$ from the point $O$
;; to the straight line $AB$. For the real numbers $s$ and $t$, define
;; the point $P$ as $\vec{OP} = s\vec{OA} + t\vec{OB}$. Answer the
;; following questions:
;;
;; (1) Find the coordinates of the point $C$, and represent
;; $|\vec{CP}|^2$ using $s$ and $t$.
;;
;; (2) Let $s$ be a constant. When $t$ moves in the range of $t\ge 0$,
;; find the minimum value of $|\vec{CP}|^2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  a1_1
  (Find (C)
  (exists (A B)
    (&&
      (= A (point 2 6))
      (= B (point 3 4))
      (= C (foot-of-perpendicular-line-from-to (origin) (line A B)))))))

(def-directive
  a1_2
  (Find (CP2)
  (exists (A B C P)
    (&&
      (= A (point 2 6))
      (= B (point 3 4))
      (= C (foot-of-perpendicular-line-from-to (origin) (line A B)))
      (= (vec (origin) P) (v+ (sv* s (vec (origin) A)) (sv* t (vec (origin) B))))
      (= CP2 (^ (radius (vec C P)) 2))))))

(def-directive
  a2
  (Find (minCP2)
  (exists (A B C)
    (&&
      (= A (point 2 6))
      (= B (point 3 4))
      (= C (foot-of-perpendicular-line-from-to (origin) (line A B)))
      (minimum (set-by-def (PLam CP2 (exists (t P)
               (&&
                 (>= t 0)
                 (= (vec (origin) P) (v+ (sv* s (vec (origin) A)) (sv* t (vec (origin) B))))
                 (= CP2 (^ (radius (vec C P)) 2)))))) minCP2)))))

(def-answer a1_1 (PLam C (= C (point 4 2))))

(def-answer a1_2 (PLam CP2 (= CP2 (+ (* 40 (^ s 2)) (* 60 s t) (* 25 (^ t 2)) (* -40 s) (* -40 t) 20))))

(def-answer a2 (PLam minCP2 (||
  (&& (<= s (/ 2 3)) (= minCP2 (+ (* 4 (^ s 2)) (* 8 s) 4)))
  (&& (> s (/ 2 3)) (= minCP2 (+ (* 40 (^ s 2)) (* -40 s) 20)))
)))

