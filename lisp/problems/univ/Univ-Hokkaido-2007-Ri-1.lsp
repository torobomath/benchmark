;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-09-27
;;
;; <PROBLEM-TEXT>
;; Consider the circle $C$ defined by the equation
;; $x^2 + y^2 - 4 y + 2 = 0$.
;;
;; (1) Find the coordinates of the center of the circle that passes
;; through the points $A(-\sqrt{2}, 0)$ and $0(0, 0)$ and is in contact
;; with the circle $C$.
;;
;; (2) When the point $P$ moves on the circle $C$, find the maximum and
;; minimum values of $\cos\angle APO$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (c)
    (exists (C1 C)
      (&&
       (circle-type C1)
       (circle-type C)
       (= C (set-of-cfun
       (Lam x (PLam y (= 0 (+ (^ x 2) (^ y 2) (- (* 4 y))  2))))))
       (on (point (- (sqrt 2)) 0) C1)
       (on (origin) C1)
       (= (center-of C1) c)
       (tangent C C1)))))

(def-directive
  p2_min
  (Find (min)
    (exists (C A O) (&&
         (minimum (set-by-def (PLam cosAPO
            (exists (P) (&&
                   (on P C)
                   (= cosAPO (cos-of-angle (angle A P O)))))))
            min)
         (= A (point (- (sqrt 2)) 0))
         (= O (point 0 0))
         (circle-type C)
         (= C (set-of-cfun
         (Lam x (PLam y (= 0 (+ (^ x 2) (^ y 2) (- (* 4 y))  2))))))
         ))))

(def-directive
  p2_max
  (Find (max)
    (exists (C A O) (&&
     (maximum (set-by-def (PLam cosAPO
      (exists (P) (&&
        (on P C)
        (= cosAPO (cos-of-angle (angle A P O)))))))
          max)
     (= A (point (- (sqrt 2)) 0))
     (= O (point 0 0))
       (circle-type C)
       (= C (set-of-cfun
       (Lam x (PLam y (= 0 (+ (^ x 2) (^ y 2) (- (* 4 y))  2))))))
       ))))

(def-answer p1 (PLam c (|| (= c (point (- (/ (sqrt 2) 2)) 0))
      (= c (point (- (/ (sqrt 2) 2)) 2))
)))

(def-answer p2_min (PLam min (= min 0)))

(def-answer p2_max (PLam max (= max (/ (* 2 (sqrt 2)) 3))))

