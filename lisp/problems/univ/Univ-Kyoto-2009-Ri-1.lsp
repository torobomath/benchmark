;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2009, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-29
;;
;; <PROBLEM-TEXT>
;; Consider the cuboid $OABC-DEFG$ whose vertices are $O(0, 0, 0)$,
;; $A(3, 0, 0)$, $B(3, 2, 0)$, $C(0, 2, 0)$, $D(0, 0, 4)$, $E(3, 0, 4)$,
;; $F(3, 2, 4)$, and $G(0, 2, 4)$ in the $xyz$ space. Let $P$ be the
;; point that internally divides the side $AE$ in a ratio of $s:1-s$,
;; and $Q$, the point that internally divides the side $CG$ in a ratio
;; of $t:1-t$, where $0<s<1$ and $0<t<1$. Find the condition that $s$
;; and $t$ must satisfy in order that the straight line passing through
;; $D$ and perpendicular to the plane containing the points $O$, $P$,
;; and $Q$ intersects with the line segment $AC$ (including both ends).
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (st)
  (let* ((O (origin))
       (A (point 3 0 0))
       (B (point 3 2 0))
       (C (point 0 2 0))
       (D (point 0 0 4))
       (E (point 3 0 4))
       (F (point 3 2 4))
       (G (point 0 2 4)))
      (exists (P Q l OPQ s t)
      (&&
        (divide-internally P (seg A E) s (- 1 s))
        (divide-internally Q (seg C G) t (- 1 t))
        (< 0 s) (< s 1)
        (< 0 t) (< t 1)
        (line-type l)
        (plane-type OPQ)
        (on D l)
        (on O OPQ)
        (on P OPQ)
        (on Q OPQ)
        (perpendicular l OPQ)
        (intersect l (seg A C))
        (= st (list-of s t)))))))

(def-answer p1 (PLam st (exists (s t) (&&
  (= st (list-of s t))
  (= (+ (* 16 s) (* 36 t)) 9)
  (< 0 t) (< t (/ 1 4))))))

