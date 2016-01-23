;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2009, Science Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-30
;;
;; <PROBLEM-TEXT>
;; Let $0 < a < 1$ and $0 < {\theta} < {\pi}$. Assume that the points
;; $O(0, 0)$, $A(a, 0)$, $P(\cos {\theta}, \sin {\theta})$, and
;; $Q(x, y)$ satisfy the condition $OQ = AQ = PQ$. Answer the following
;; questions:
;;
;; (1) Represent the coordinates of the point $Q$ using $a$ and
;; ${\theta}$.
;;
;; (2) Fix $a$. When ${\theta}$ moves in the range
;; $0 < {\theta} < {\pi}$, find the minimum value of $y$.
;; </PROBLEM-TEXT>

(namespace 2d)

;#250

(def-directive
  p1_rcf
  (Find (Q)
    (exists (O A P) (&&
         (< 0 a)
         (< a 1)
         (< 0 s) (< s 1)
         (< (- 1) c) (< c 1)
         (= O (point 0 0))
         (= A (point a 0))
         (= P (point c s))
         (= (distance O Q) (distance A Q))
         (= (distance A Q) (distance P Q))
         (= 1 (+ (^ s 2) (^ c 2)))
    ))))

(def-directive
  p1_1_rcf
  (Find (Qx)
    (exists (O A P Q Qy) (&&
         (< 0 a)
         (< a 1)
         (< 0 s)
         (< (- 1) c) (< c 1)
         (= O (point 0 0))
         (= A (point a 0))
         (= P (point c s))
         (= Q (point Qx Qy))
         (= (distance O Q) (distance A Q))
         (= (distance A Q) (distance P Q))
         (= 1 (+ (^ s 2) (^ c 2)))
    ))))

(def-directive
  p1_2_rcf
  (Find (Qy)
    (exists (O A P Q Qx) (&&
         (< 0 a)
         (< a 1)
         (< 0 s)
         (< (- 1) c) (< c 1)
         (= O (point 0 0))
         (= A (point a 0))
         (= P (point c s))
         (= Q (point Qx Qy))
         (= (distance O Q) (distance A Q))
         (= (distance A Q) (distance P Q))
         (= 1 (+ (^ s 2) (^ c 2)))
    ))))

(def-directive
  p2_rcf
  (Find (ymin)
    (minimum (set-by-def (PLam y
      (exists (O A P Q x c s) (&&
        (< 0 a)
        (< a 1)
        (< 0 s)
  (< (- 1) c) (< c 1)
        (= O (point 0 0))
        (= A (point a 0))
        (= P (point c s))
        (= Q (point x y))
        (= (distance O Q) (distance A Q))
        (= (distance O Q) (distance P Q))
        (= 1 (+ (^ s 2) (^ c 2)))
      )))) ymin)
  ))

(def-answer p1_rcf (PLam Q (&&
  (= 1 (+ (^ s 2) (^ c 2)))
  (< 0 a) (< a 1)
  (< 0 s) (< s 1)
  (= Q (point (/ a 2) (/ (- 1 (* a c)) (* 2 s)))))))

(def-answer p1_1_rcf (PLam Qx (&& (< 0 a) (< a 1)
          (< (- 1) c) (< c 1)
          (= s (sqrt (- 1 (^ c 2))))
          (= Qx (/ a 2)))))

(def-answer p1_2_rcf (PLam Qy (&& (< 0 a) (< a 1)
                                  (< (- 1) c) (< c 1)
                                  (= s (sqrt (- 1 (^ c 2))))
          (= Qy (/ (- 1 (* a c)) (* 2 s))))))

(def-answer p2_rcf (PLam ymin (&& (< 0 a) (< a 1)
          (= ymin (/ (sqrt (- 1 (^ a 2))) 2)))))

